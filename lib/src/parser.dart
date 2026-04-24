import 'ast.dart';

class ParseException implements Exception {
  final String message;
  final int position;

  ParseException(this.message, this.position);

  @override
  String toString() => 'ParseException at $position: $message';
}

class OpeningHoursParser {
  final String input;
  final bool lenient;
  int position = 0;

  OpeningHoursParser(this.input, {this.lenient = false});

  TimeDomain parse() {
    if (lenient) _skipWhitespace();
    if (position >= input.length) {
      throw ParseException('empty input', position);
    }
    final domain = _parseTimeDomain();
    if (lenient) _skipWhitespace();
    if (position < input.length) {
      throw ParseException(
        'unexpected trailing characters: "${input.substring(position)}"',
        position,
      );
    }
    return domain;
  }

  TimeDomain _parseTimeDomain() {
    final rules = <RuleSequence>[];
    final separators = <RuleSeparatorKind>[];
    rules.add(_parseRuleSequence());
    while (true) {
      final saved = position;
      final separator = _tryParseRuleSeparator();
      if (separator == null) break;
      try {
        final rule = _parseRuleSequence();
        separators.add(separator);
        rules.add(rule);
      } on ParseException {
        position = saved;
        break;
      }
    }
    return TimeDomain(rules, separators);
  }

  RuleSeparatorKind? _tryParseRuleSeparator() {
    final saved = position;
    final fallbackSaved = position;
    if (lenient) {
      _skipWhitespace();
      if (_matchLiteral('||')) {
        _skipWhitespace();
        return RuleSeparatorKind.fallback;
      }
      position = fallbackSaved;
    } else if (_lookSpace()) {
      position++;
      if (_matchLiteral('||')) {
        if (_lookSpace()) {
          position++;
          return RuleSeparatorKind.fallback;
        }
      }
      position = fallbackSaved;
    }
    if (lenient) _skipWhitespace();
    if (_peekChar() == ';') {
      position++;
      if (_peekChar() == ' ') position++;
      if (lenient) _skipWhitespace();
      return RuleSeparatorKind.normal;
    }
    if (_peekChar() == ',') {
      final savedComma = position;
      position++;
      if (_peekChar() == ' ') position++;
      if (lenient) _skipWhitespace();
      if (!_looksLikeRuleStart()) {
        position = savedComma;
        if (lenient) position = saved;
        return null;
      }
      return RuleSeparatorKind.additional;
    }
    if (lenient) position = saved;
    return null;
  }

  bool _looksLikeRuleStart() {
    if (position >= input.length) return false;
    if (_lookLiteral('24/7')) return true;
    if (_lookWeekday()) return true;
    if (_lookMonth()) return true;
    if (_lookHoliday()) return true;
    if (_lookLiteral('week')) return true;
    if (_looksLikeTimeStart()) return true;
    if (_looksLikeYearStart()) return true;
    if (_lookLiteral('easter')) return true;
    return false;
  }

  RuleSequence _parseRuleSequence() {
    final selectors = _parseSelectorSequence();
    RuleModifier? modifier;
    if (_lookSpace()) {
      final saved = position;
      _consumeOneSpace();
      if (lenient) _skipWhitespace();
      final parsed = _tryParseRuleModifier();
      if (parsed != null) {
        modifier = parsed;
      } else {
        position = saved;
      }
    } else {
      final parsed = _tryParseRuleModifier();
      if (parsed != null) {
        modifier = parsed;
      }
    }
    if (selectors is RangeSelectors &&
        selectors.isEmpty &&
        modifier == null) {
      throw ParseException('empty rule', position);
    }
    return RuleSequence(selectors, modifier);
  }

  SelectorSequence _parseSelectorSequence() {
    if (_matchLiteral('24/7')) {
      return TwentyFourSeven();
    }
    YearSelector? year = _tryParseYearSelector();
    if (year != null) _skipSelectorGap();
    MonthdaySelector? monthday = _tryParseMonthdaySelector();
    if (monthday != null) _skipSelectorGap();
    WeekSelector? week = _tryParseWeekSelector();
    if (week != null) _skipSelectorGap();
    WeekdaySelector? weekday = _tryParseWeekdaySelector();
    if (weekday != null) _skipSelectorGap();
    TimeSelector? time = _tryParseTimeSelector();
    return RangeSelectors(
      year: year,
      monthday: monthday,
      week: week,
      weekday: weekday,
      time: time,
    );
  }

  void _skipSelectorGap() {
    if (position < input.length && input[position] == ':') {
      position++;
      if (_peekChar() == ' ') position++;
      if (lenient) _skipWhitespace();
      return;
    }
    if (_lookSpace()) {
      _consumeOneSpace();
      if (lenient) _skipWhitespace();
    }
  }

  YearSelector? _tryParseYearSelector() {
    if (!_looksLikeYearSelectorStart()) return null;
    final saved = position;
    try {
      final ranges = <YearRange>[];
      ranges.add(_parseYearRange());
      while (_peekChar() == ',' && _afterCommaLooksLikeYearRange()) {
        position++;
        if (lenient) _skipWhitespace();
        ranges.add(_parseYearRange());
      }
      return YearSelector(ranges);
    } on ParseException {
      position = saved;
      rethrow;
    }
  }

  bool _looksLikeYearSelectorStart() {
    if (!_looksLikeYearStart()) return false;
    final saved = position;
    if (position + 4 > input.length) return false;
    for (var i = 0; i < 4; i++) {
      if (!_isDigit(input[saved + i])) return false;
    }
    if (saved + 4 < input.length && _isDigit(input[saved + 4])) return false;
    if (saved + 4 >= input.length) return true;
    final next = input[saved + 4];
    if (next == '-' || next == '+' || next == ',') return true;
    if (next == ' ') {
      final probe = saved + 5;
      return _lookMonthAt(probe) ||
          _lookLiteralAt('easter', probe) ||
          _lookWeekdayAt(probe) ||
          _lookLiteralAt('week', probe) ||
          _looksLikeTimeStartAt(probe) ||
          _lookHolidayAt(probe);
    }
    return false;
  }

  bool _looksLikeYearStart() {
    if (position + 4 > input.length) return false;
    for (var i = 0; i < 4; i++) {
      if (!_isDigit(input[position + i])) return false;
    }
    return true;
  }

  bool _afterCommaLooksLikeYearRange() {
    final saved = position;
    if (saved + 1 >= input.length) return false;
    var probe = saved + 1;
    if (lenient) {
      while (probe < input.length && _isWhitespace(input[probe])) {
        probe++;
      }
    } else if (probe < input.length && input[probe] == ' ') {
      probe++;
    }
    if (probe + 4 > input.length) return false;
    for (var i = 0; i < 4; i++) {
      if (!_isDigit(input[probe + i])) return false;
    }
    return true;
  }

  YearRange _parseYearRange() {
    final from = _parseYear();
    final afterYear = position;
    if (lenient) _skipWhitespace();
    if (_peekChar() == '+') {
      position++;
      return YearRange(from, openEnd: true);
    }
    if (_peekChar() == '-') {
      position++;
      if (lenient) _skipWhitespace();
      final to = _parseYear();
      if (lenient) _skipWhitespace();
      if (_peekChar() == '/') {
        position++;
        if (lenient) _skipWhitespace();
        final periodicity = _parsePositiveNumber();
        return YearRange(from, to: to, periodicity: periodicity);
      }
      return YearRange(from, to: to);
    }
    position = afterYear;
    return YearRange(from);
  }

  int _parseYear() {
    if (position + 4 > input.length) {
      throw ParseException('expected 4-digit year', position);
    }
    for (var i = 0; i < 4; i++) {
      if (!_isDigit(input[position + i])) {
        throw ParseException('expected 4-digit year', position);
      }
    }
    if (position + 4 < input.length && _isDigit(input[position + 4])) {
      throw ParseException('year must be exactly 4 digits', position);
    }
    final year = int.parse(input.substring(position, position + 4));
    if (year < 1900) {
      throw ParseException('year must be >= 1900', position);
    }
    position += 4;
    return year;
  }

  MonthdaySelector? _tryParseMonthdaySelector() {
    if (!_lookMonth() && !_lookLiteral('easter')) return null;
    final ranges = <MonthdayRange>[];
    ranges.add(_parseMonthdayRange());
    while (_peekChar() == ',' && _afterCommaLooksLikeMonthday()) {
      position++;
      if (lenient) _skipWhitespace();
      ranges.add(_parseMonthdayRange());
    }
    return MonthdaySelector(ranges);
  }

  bool _afterCommaLooksLikeMonthday() {
    final saved = position;
    if (saved + 1 >= input.length) return false;
    var probe = saved + 1;
    if (lenient) {
      while (probe < input.length && _isWhitespace(input[probe])) {
        probe++;
      }
    } else if (probe < input.length && input[probe] == ' ') {
      probe++;
    }
    return _lookMonthAt(probe) || _lookLiteralAt('easter', probe);
  }

  MonthdayRange _parseMonthdayRange() {
    if (_lookLiteral('easter')) {
      return _parseDateFromRange(null);
    }
    final month = _parseMonth();
    if (_peekChar() == ' ' || _peekChar() == '\t') {
      final saved = position;
      position++;
      if (lenient) _skipWhitespace();
      if (_lookWeekday()) {
        try {
          return _parseDateFromWithMonthWday(null, month);
        } on ParseException {
          position = saved;
        }
      }
      if (position < input.length &&
          _isDigit(input[position]) &&
          !_looksLikeHourMinuteAt(position)) {
        try {
          final daynum = _parseDaynum();
          final from = MonthDayFrom(null, month, daynum);
          return _finishDateFromRange(from);
        } on ParseException {
          position = saved;
        }
      }
      position = saved;
    }
    final beforeDash = position;
    if (lenient) _skipWhitespace();
    if (_peekChar() == '-') {
      final savedDash = position;
      position++;
      if (lenient) _skipWhitespace();
      if (_lookMonth()) {
        final to = _parseMonth();
        return MonthToMonthRange(null, month, to);
      }
      position = savedDash;
    }
    position = beforeDash;
    return MonthOnlyRange(null, month);
  }

  MonthdayRange _parseDateFromRange(int? year) {
    if (_matchLiteral('easter')) {
      final from = VariableDateFrom(year, 'easter');
      return _finishDateFromRange(from);
    }
    final month = _parseMonth();
    _expectSingleSpace();
    if (_lookWeekday()) {
      return _parseDateFromWithMonthWday(year, month);
    }
    final daynum = _parseDaynum();
    final from = MonthDayFrom(year, month, daynum);
    return _finishDateFromRange(from);
  }

  MonthdayRange _parseDateFromWithMonthWday(int? year, Month month) {
    final wday = _parseWeekday();
    if (!_matchChar('[')) {
      throw ParseException('expected [', position);
    }
    final negative = _matchChar('-');
    final nth = _parseNth();
    if (!_matchChar(']')) {
      throw ParseException('expected ]', position);
    }
    final from = MonthWdayNthFrom(year, month, wday, nth, negative: negative);
    return _finishDateFromRange(from);
  }

  MonthdayRange _finishDateFromRange(DateFrom from) {
    DateOffset? fromOffset = _tryParseDateOffset();
    if (_peekChar() == '+') {
      position++;
      return DateFromRange(from,
          fromOffset: fromOffset, openEnd: true);
    }
    if (_peekChar() == '-') {
      position++;
      DateTo to;
      if (_lookMonth() || _lookLiteral('easter') || _looksLikeYearStart()) {
        int? toYear;
        if (_looksLikeYearStart()) {
          toYear = _parseYear();
          _expectSingleSpace();
        }
        if (_matchLiteral('easter')) {
          to = DateFromTo(VariableDateFrom(toYear, 'easter'));
        } else {
          final toMonth = _parseMonth();
          _expectSingleSpace();
          if (_lookWeekday()) {
            final wday = _parseWeekday();
            if (!_matchChar('[')) {
              throw ParseException('expected [', position);
            }
            final negative = _matchChar('-');
            final nth = _parseNth();
            if (!_matchChar(']')) {
              throw ParseException('expected ]', position);
            }
            to = DateFromTo(
                MonthWdayNthFrom(toYear, toMonth, wday, nth, negative: negative));
          } else {
            final toDaynum = _parseDaynum();
            to = DateFromTo(MonthDayFrom(toYear, toMonth, toDaynum));
          }
        }
      } else {
        final toDaynum = _parseDaynum();
        to = DaynumTo(toDaynum);
      }
      final toOffset = _tryParseDateOffset();
      return DateFromRange(from,
          fromOffset: fromOffset, to: to, toOffset: toOffset);
    }
    return DateFromRange(from, fromOffset: fromOffset);
  }

  DateOffset? _tryParseDateOffset() {
    bool hasWdayShift = false;
    bool wdayPositive = true;
    Weekday? wday;
    if (_peekChar() == '+' || _peekChar() == '-') {
      final saved = position;
      final sign = input[position];
      position++;
      if (_lookWeekday()) {
        wday = _parseWeekday();
        hasWdayShift = true;
        wdayPositive = sign == '+';
      } else {
        position = saved;
      }
    }
    bool hasDayShift = false;
    bool dayPositive = true;
    int days = 0;
    if (_peekChar() == ' ') {
      final saved = position;
      position++;
      if (_peekChar() == '+' || _peekChar() == '-') {
        final sign = input[position];
        position++;
        try {
          final n = _parsePositiveNumber();
          if (_peekChar() == ' ') {
            position++;
            if (_matchLiteral('days') || _matchLiteral('day')) {
              hasDayShift = true;
              dayPositive = sign == '+';
              days = n;
            } else {
              position = saved;
            }
          } else {
            position = saved;
          }
        } on ParseException {
          position = saved;
        }
      } else {
        position = saved;
      }
    }
    if (!hasWdayShift && !hasDayShift) return null;
    return DateOffset(
      hasWdayShift: hasWdayShift,
      wdayPositive: wdayPositive,
      wday: wday,
      hasDayShift: hasDayShift,
      dayPositive: dayPositive,
      days: days,
    );
  }

  WeekSelector? _tryParseWeekSelector() {
    if (!_lookLiteral('week')) return null;
    final saved = position;
    if (!_matchLiteral('week')) return null;
    if (!_lookSpace()) {
      position = saved;
      return null;
    }
    _consumeOneSpace();
    if (lenient) _skipWhitespace();
    final ranges = <WeekRange>[];
    ranges.add(_parseWeekRange());
    while (_peekChar() == ',' && _afterCommaLooksLikeWeek()) {
      position++;
      if (lenient) _skipWhitespace();
      ranges.add(_parseWeekRange());
    }
    return WeekSelector(ranges);
  }

  bool _afterCommaLooksLikeWeek() {
    var probe = position + 1;
    if (lenient) {
      while (probe < input.length && _isWhitespace(input[probe])) {
        probe++;
      }
    } else if (probe < input.length && input[probe] == ' ') {
      probe++;
    }
    if (probe + 2 > input.length) return false;
    return _isDigit(input[probe]) && _isDigit(input[probe + 1]);
  }

  WeekRange _parseWeekRange() {
    final from = _parseWeeknum();
    if (_peekChar() == '-') {
      position++;
      final to = _parseWeeknum();
      if (_peekChar() == '/') {
        position++;
        final periodicity = _parsePositiveNumber();
        return WeekRange(from, to: to, periodicity: periodicity);
      }
      return WeekRange(from, to: to);
    }
    return WeekRange(from);
  }

  WeekdaySelector? _tryParseWeekdaySelector() {
    if (!_lookWeekday() && !_lookHoliday()) return null;
    final weekdays = <WeekdayRange>[];
    final holidays = <HolidayEntry>[];
    bool holidaysFirst = false;
    bool first = true;
    while (true) {
      if (_lookHoliday()) {
        if (first) {
          holidaysFirst = true;
        }
        first = false;
        holidays.add(_parseHolidayEntry());
      } else if (_lookWeekday()) {
        first = false;
        weekdays.add(_parseWeekdayRange());
      } else {
        break;
      }
      if (_peekChar() == ',') {
        final saved = position;
        position++;
        if (lenient) _skipWhitespace();
        if (_lookWeekday() || _lookHoliday()) {
          continue;
        }
        position = saved;
        break;
      }
      if (_peekChar() == ' ' && holidays.isNotEmpty && weekdays.isEmpty) {
        final saved = position;
        position++;
        if (_lookWeekday()) {
          continue;
        }
        position = saved;
        break;
      }
      break;
    }
    return WeekdaySelector(
      weekdays: weekdays,
      holidays: holidays,
      holidaysFirst: holidaysFirst,
    );
  }

  HolidayEntry _parseHolidayEntry() {
    if (_matchLiteral('PH')) {
      final offset = _tryParseDayShift();
      return HolidayEntry(HolidayType.ph, offset);
    }
    if (_matchLiteral('SH')) {
      return HolidayEntry(HolidayType.sh);
    }
    throw ParseException('expected PH or SH', position);
  }

  DayShift? _tryParseDayShift() {
    final saved = position;
    if (_peekChar() != ' ') return null;
    position++;
    if (_peekChar() != '+' && _peekChar() != '-') {
      position = saved;
      return null;
    }
    final sign = input[position];
    position++;
    try {
      final n = _parsePositiveNumber();
      if (_peekChar() != ' ') {
        position = saved;
        return null;
      }
      position++;
      if (_matchLiteral('days') || _matchLiteral('day')) {
        return DayShift(sign == '+', n);
      }
      position = saved;
      return null;
    } on ParseException {
      position = saved;
      return null;
    }
  }

  WeekdayRange _parseWeekdayRange() {
    final wday = _parseWeekday();
    final afterWday = position;
    if (lenient) _skipWhitespace();
    if (_peekChar() == '-') {
      position++;
      if (lenient) _skipWhitespace();
      final to = _parseWeekday();
      return WeekdaySpan(wday, to);
    }
    if (_peekChar() == '[') {
      position++;
      if (lenient) _skipWhitespace();
      final entries = <NthEntry>[];
      entries.add(_parseNthEntry());
      while (true) {
        if (lenient) _skipWhitespace();
        if (_peekChar() != ',') break;
        position++;
        if (lenient) _skipWhitespace();
        entries.add(_parseNthEntry());
      }
      if (lenient) _skipWhitespace();
      if (!_matchChar(']')) {
        throw ParseException('expected ]', position);
      }
      final offset = _tryParseDayShift();
      return WeekdayNth(wday, entries, offset);
    }
    position = afterWday;
    return WeekdaySpan(wday);
  }

  NthEntry _parseNthEntry() {
    if (_matchChar('-')) {
      final n = _parseNth();
      return NthEntry.negative(n);
    }
    final first = _parseNth();
    if (_peekChar() == '-') {
      final saved = position;
      position++;
      try {
        final second = _parseNth();
        return NthEntry.range(first, second);
      } on ParseException {
        position = saved;
      }
    }
    return NthEntry.single(first);
  }

  int _parseNth() {
    if (position >= input.length || !_isDigit(input[position])) {
      throw ParseException('expected nth (1-5)', position);
    }
    final n = int.parse(input[position]);
    if (n < 1 || n > 5) {
      throw ParseException('nth must be 1-5', position);
    }
    position++;
    return n;
  }

  TimeSelector? _tryParseTimeSelector() {
    if (!_looksLikeTimeStart()) return null;
    final spans = <Timespan>[];
    spans.add(_parseTimespan());
    while (_peekChar() == ',') {
      final saved = position;
      position++;
      if (lenient) _skipWhitespace();
      if (!_looksLikeTimeStart()) {
        position = saved;
        break;
      }
      try {
        spans.add(_parseTimespan());
      } on ParseException {
        position = saved;
        break;
      }
    }
    return TimeSelector(spans);
  }

  Timespan _parseTimespan() {
    final start = _parseTime(extended: false);
    final afterStart = position;
    if (lenient) _skipWhitespace();
    if (_peekChar() == '+') {
      position++;
      return Timespan(start, openEnd: true);
    }
    if (_peekChar() == '-') {
      position++;
      if (lenient) _skipWhitespace();
      final end = _parseTime(extended: true);
      final afterEnd = position;
      if (lenient) _skipWhitespace();
      if (_peekChar() == '+') {
        position++;
        return Timespan(start, end: end, openEnd: true);
      }
      if (_peekChar() == '/') {
        position++;
        if (lenient) _skipWhitespace();
        final repeat = _parseRepeat();
        return Timespan(start, end: end, repeat: repeat);
      }
      position = afterEnd;
      return Timespan(start, end: end);
    }
    position = afterStart;
    return Timespan(start);
  }

  Repeat _parseRepeat() {
    if (position >= input.length || !_isDigit(input[position])) {
      throw ParseException('expected repeat value', position);
    }
    final start = position;
    while (position < input.length && _isDigit(input[position])) {
      position++;
    }
    final digits = input.substring(start, position);
    if (_peekChar() == ':') {
      position++;
      if (position + 2 > input.length ||
          !_isDigit(input[position]) ||
          !_isDigit(input[position + 1])) {
        throw ParseException('expected minutes', position);
      }
      final minutes =
          int.parse(input.substring(position, position + 2));
      position += 2;
      if (minutes > 59) {
        throw ParseException('minutes > 59', position);
      }
      final hour = int.parse(digits);
      return RepeatHourMinutes(hour, minutes);
    }
    return RepeatMinutes(int.parse(digits));
  }

  Time _parseTime({required bool extended}) {
    if (_peekChar() == '(') {
      return _parseVariableTimeWithOffset();
    }
    for (final event in TimeEvent.values) {
      if (_lookLiteral(event.code)) {
        position += event.code.length;
        return VariableTime(event);
      }
    }
    return _parseHourMinutes(extended: extended);
  }

  VariableTime _parseVariableTimeWithOffset() {
    if (!_matchChar('(')) {
      throw ParseException('expected (', position);
    }
    TimeEvent? foundEvent;
    for (final event in TimeEvent.values) {
      if (_matchLiteral(event.code)) {
        foundEvent = event;
        break;
      }
    }
    if (foundEvent == null) {
      throw ParseException('expected event', position);
    }
    if (_peekChar() != '+' && _peekChar() != '-') {
      throw ParseException('expected + or -', position);
    }
    final sign = input[position];
    position++;
    final offset = _parseHourMinutes(extended: false);
    if (!_matchChar(')')) {
      throw ParseException('expected )', position);
    }
    return VariableTime(
      foundEvent,
      hasOffset: true,
      positive: sign == '+',
      offset: offset,
    );
  }

  HourMinutes _parseHourMinutes({required bool extended}) {
    final hour = _parseHour(extended: extended);
    if (!_matchChar(':')) {
      throw ParseException('expected :', position);
    }
    final minute = _parseMinute();
    return HourMinutes(hour, minute);
  }

  int _parseHour({required bool extended}) {
    final max = extended ? 48 : 24;
    if (lenient) {
      if (position >= input.length || !_isDigit(input[position])) {
        throw ParseException('expected hour digit', position);
      }
      final start = position;
      position++;
      if (position < input.length && _isDigit(input[position])) {
        position++;
      }
      final hour = int.parse(input.substring(start, position));
      if (hour > max) {
        throw ParseException('hour out of range', position);
      }
      return hour;
    }
    if (position + 2 > input.length ||
        !_isDigit(input[position]) ||
        !_isDigit(input[position + 1])) {
      throw ParseException('expected 2-digit hour', position);
    }
    final hour = int.parse(input.substring(position, position + 2));
    position += 2;
    if (hour > max) {
      throw ParseException('hour out of range', position);
    }
    return hour;
  }

  int _parseMinute() {
    if (position + 2 > input.length ||
        !_isDigit(input[position]) ||
        !_isDigit(input[position + 1])) {
      throw ParseException('expected 2-digit minute', position);
    }
    final minute = int.parse(input.substring(position, position + 2));
    position += 2;
    if (minute > 59) {
      throw ParseException('minute out of range', position);
    }
    return minute;
  }

  int _parseDaynum() {
    if (lenient) {
      if (position >= input.length || !_isDigit(input[position])) {
        throw ParseException('expected daynum', position);
      }
      final start = position;
      position++;
      if (position < input.length && _isDigit(input[position])) {
        position++;
      }
      final day = int.parse(input.substring(start, position));
      if (day < 1 || day > 31) {
        throw ParseException('daynum out of range', position);
      }
      return day;
    }
    if (position + 2 > input.length ||
        !_isDigit(input[position]) ||
        !_isDigit(input[position + 1])) {
      throw ParseException('expected 2-digit daynum', position);
    }
    if (position + 2 < input.length && _isDigit(input[position + 2])) {
      throw ParseException('daynum must be 2 digits', position);
    }
    final day = int.parse(input.substring(position, position + 2));
    position += 2;
    if (day < 1 || day > 31) {
      throw ParseException('daynum out of range', position);
    }
    return day;
  }

  int _parseWeeknum() {
    if (lenient) {
      if (position >= input.length || !_isDigit(input[position])) {
        throw ParseException('expected weeknum', position);
      }
      final start = position;
      position++;
      if (position < input.length && _isDigit(input[position])) {
        position++;
      }
      final value = int.parse(input.substring(start, position));
      if (value < 1 || value > 53) {
        throw ParseException('weeknum out of range', position);
      }
      return value;
    }
    if (position + 2 > input.length ||
        !_isDigit(input[position]) ||
        !_isDigit(input[position + 1])) {
      throw ParseException('expected 2-digit weeknum', position);
    }
    if (position + 2 < input.length && _isDigit(input[position + 2])) {
      throw ParseException('weeknum must be 2 digits', position);
    }
    final value = int.parse(input.substring(position, position + 2));
    position += 2;
    if (value < 1 || value > 53) {
      throw ParseException('weeknum out of range', position);
    }
    return value;
  }

  int _parsePositiveNumber() {
    if (position >= input.length || !_isDigit(input[position])) {
      throw ParseException('expected positive number', position);
    }
    final start = position;
    while (position < input.length && _isDigit(input[position])) {
      position++;
    }
    final value = int.parse(input.substring(start, position));
    if (value == 0) {
      throw ParseException('number must be > 0', position);
    }
    return value;
  }

  Month _parseMonth() {
    if (position + 3 > input.length) {
      throw ParseException('expected month', position);
    }
    final chunk = input.substring(position, position + 3);
    final month = _monthFromCode(chunk);
    if (month == null) {
      throw ParseException('invalid month "$chunk"', position);
    }
    position += 3;
    return month;
  }

  Weekday _parseWeekday() {
    if (position + 2 > input.length) {
      throw ParseException('expected weekday', position);
    }
    final chunk = input.substring(position, position + 2);
    final weekday = _weekdayFromCode(chunk);
    if (weekday == null) {
      throw ParseException('invalid weekday "$chunk"', position);
    }
    position += 2;
    return weekday;
  }

  RuleModifier? _tryParseRuleModifier() {
    for (final kind in RuleModifierKind.values) {
      if (_lookLiteralBoundary(kind.code)) {
        position += kind.code.length;
        Comment? comment;
        if (_lookSpace()) {
          final saved = position;
          _consumeOneSpace();
          if (lenient) _skipWhitespace();
          if (_peekChar() == '"') {
            comment = _parseComment();
          } else {
            position = saved;
          }
        }
        return RuleModifier(kind: kind, comment: comment);
      }
    }
    if (_peekChar() == '"') {
      final comment = _parseComment();
      return RuleModifier(comment: comment);
    }
    return null;
  }

  Comment _parseComment() {
    if (!_matchChar('"')) {
      throw ParseException('expected "', position);
    }
    final start = position;
    while (position < input.length && input[position] != '"') {
      position++;
    }
    if (position >= input.length) {
      throw ParseException('unclosed comment', position);
    }
    final text = input.substring(start, position);
    position++;
    return Comment(text);
  }

  bool _lookSpace() {
    if (position >= input.length) return false;
    if (lenient) {
      return _isWhitespace(input[position]);
    }
    return input[position] == ' ';
  }

  void _consumeOneSpace() {
    if (!_lookSpace()) {
      throw ParseException('expected space', position);
    }
    if (lenient) {
      while (position < input.length && _isWhitespace(input[position])) {
        position++;
      }
    } else {
      position++;
    }
  }

  void _expectSingleSpace() {
    if (!_lookSpace()) {
      throw ParseException('expected space', position);
    }
    _consumeOneSpace();
  }

  void _skipWhitespace() {
    while (position < input.length && _isWhitespace(input[position])) {
      position++;
    }
  }

  bool _matchLiteral(String literal) {
    if (!_lookLiteral(literal)) return false;
    position += literal.length;
    return true;
  }

  bool _lookLiteral(String literal) {
    return _lookLiteralAt(literal, position);
  }

  bool _lookLiteralAt(String literal, int from) {
    if (from + literal.length > input.length) return false;
    final chunk = input.substring(from, from + literal.length);
    if (lenient) {
      return chunk.toLowerCase() == literal.toLowerCase();
    }
    return chunk == literal;
  }

  bool _lookLiteralBoundary(String literal) {
    if (!_lookLiteral(literal)) return false;
    final end = position + literal.length;
    if (end >= input.length) return true;
    final next = input[end];
    if (_isAlpha(next) || _isDigit(next)) return false;
    return true;
  }

  bool _matchChar(String ch) {
    if (position >= input.length || input[position] != ch) return false;
    position++;
    return true;
  }

  String _peekChar() {
    if (position >= input.length) return '';
    return input[position];
  }

  bool _lookMonth() => _lookMonthAt(position);

  bool _lookMonthAt(int from) {
    if (from + 3 > input.length) return false;
    if (_monthFromCode(input.substring(from, from + 3)) == null) {
      return false;
    }
    final end = from + 3;
    if (end >= input.length) return true;
    final next = input[end];
    return !_isAlpha(next) && !_isDigit(next);
  }

  bool _lookWeekday() => _lookWeekdayAt(position);

  bool _lookWeekdayAt(int from) {
    if (from + 2 > input.length) return false;
    if (_weekdayFromCode(input.substring(from, from + 2)) == null) {
      return false;
    }
    final end = from + 2;
    if (end >= input.length) return true;
    final next = input[end];
    return !_isAlpha(next) && !_isDigit(next);
  }

  bool _lookHoliday() => _lookHolidayAt(position);

  bool _lookHolidayAt(int from) {
    if (_lookLiteralAt('PH', from)) {
      final end = from + 2;
      if (end >= input.length) return true;
      final next = input[end];
      if (_isAlpha(next) || _isDigit(next)) return false;
      return true;
    }
    if (_lookLiteralAt('SH', from)) {
      final end = from + 2;
      if (end >= input.length) return true;
      final next = input[end];
      if (_isAlpha(next) || _isDigit(next)) return false;
      return true;
    }
    return false;
  }

  bool _looksLikeHourMinuteAt(int from) {
    if (from >= input.length) return false;
    if (!_isDigit(input[from])) return false;
    if (lenient &&
        from + 1 < input.length &&
        input[from + 1] == ':') {
      return true;
    }
    if (from + 2 < input.length &&
        _isDigit(input[from + 1]) &&
        input[from + 2] == ':') {
      return true;
    }
    return false;
  }

  bool _looksLikeTimeStart() => _looksLikeTimeStartAt(position);

  bool _looksLikeTimeStartAt(int from) {
    if (from >= input.length) return false;
    final ch = input[from];
    if (ch == '(') return true;
    if (_isDigit(ch)) {
      if (lenient) return true;
      if (from + 2 < input.length && input[from + 2] == ':') return true;
      if (from + 1 < input.length && input[from + 1] == ':') return true;
      return false;
    }
    for (final event in TimeEvent.values) {
      if (_lookLiteralAt(event.code, from)) return true;
    }
    return false;
  }

  Month? _monthFromCode(String code) {
    if (code.length != 3) return null;
    final key = lenient ? code.toLowerCase() : code;
    for (final month in Month.values) {
      final candidate = lenient ? month.code.toLowerCase() : month.code;
      if (candidate == key) return month;
    }
    return null;
  }

  Weekday? _weekdayFromCode(String code) {
    if (code.length != 2) return null;
    final key = lenient ? code.toLowerCase() : code;
    for (final wday in Weekday.values) {
      final candidate = lenient ? wday.code.toLowerCase() : wday.code;
      if (candidate == key) return wday;
    }
    return null;
  }

  bool _isDigit(String ch) {
    if (ch.isEmpty) return false;
    final code = ch.codeUnitAt(0);
    return code >= 0x30 && code <= 0x39;
  }

  bool _isAlpha(String ch) {
    if (ch.isEmpty) return false;
    final code = ch.codeUnitAt(0);
    return (code >= 0x41 && code <= 0x5A) || (code >= 0x61 && code <= 0x7A);
  }

  bool _isWhitespace(String ch) {
    if (ch.isEmpty) return false;
    return ch == ' ' || ch == '\t' || ch == '\n' || ch == '\r';
  }
}
