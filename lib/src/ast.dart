enum Weekday {
  mo('Mo'),
  tu('Tu'),
  we('We'),
  th('Th'),
  fr('Fr'),
  sa('Sa'),
  su('Su');

  final String code;
  const Weekday(this.code);
}

enum Month {
  jan('Jan'),
  feb('Feb'),
  mar('Mar'),
  apr('Apr'),
  may('May'),
  jun('Jun'),
  jul('Jul'),
  aug('Aug'),
  sep('Sep'),
  oct('Oct'),
  nov('Nov'),
  dec('Dec');

  final String code;
  const Month(this.code);
}

enum TimeEvent {
  dawn('dawn'),
  sunrise('sunrise'),
  sunset('sunset'),
  dusk('dusk');

  final String code;
  const TimeEvent(this.code);
}

enum HolidayType {
  ph('PH'),
  sh('SH');

  final String code;
  const HolidayType(this.code);
}

enum RuleModifierKind {
  open('open'),
  closed('closed'),
  off('off'),
  unknown('unknown');

  final String code;
  const RuleModifierKind(this.code);
}

enum RuleSeparatorKind {
  normal('; '),
  additional(', '),
  fallback(' || ');

  final String canonical;
  const RuleSeparatorKind(this.canonical);
}

class TimeDomain {
  final List<RuleSequence> rules;
  final List<RuleSeparatorKind> separators;

  TimeDomain(this.rules, this.separators);

  String format() {
    final buffer = StringBuffer(rules.first.format());
    for (var i = 1; i < rules.length; i++) {
      buffer.write(separators[i - 1].canonical);
      buffer.write(rules[i].format());
    }
    return buffer.toString();
  }
}

class RuleSequence {
  final SelectorSequence selectors;
  final RuleModifier? modifier;

  RuleSequence(this.selectors, this.modifier);

  String format() {
    final selectorText = selectors.format();
    final modifierText = modifier?.format() ?? '';
    if (modifierText.isEmpty) return selectorText;
    if (selectorText.isEmpty) return modifierText;
    return '$selectorText $modifierText';
  }
}

sealed class SelectorSequence {
  String format();
}

class TwentyFourSeven extends SelectorSequence {
  @override
  String format() => '24/7';
}

class RangeSelectors extends SelectorSequence {
  final YearSelector? year;
  final MonthdaySelector? monthday;
  final WeekSelector? week;
  final WeekdaySelector? weekday;
  final TimeSelector? time;

  RangeSelectors({
    this.year,
    this.monthday,
    this.week,
    this.weekday,
    this.time,
  });

  bool get isEmpty =>
      year == null &&
      monthday == null &&
      week == null &&
      weekday == null &&
      time == null;

  @override
  String format() {
    final parts = <String>[];
    if (year != null) parts.add(year!.format());
    if (monthday != null) parts.add(monthday!.format());
    if (week != null) parts.add(week!.format());
    if (weekday != null) parts.add(weekday!.format());
    if (time != null) parts.add(time!.format());
    return parts.join(' ');
  }
}

class YearSelector {
  final List<YearRange> ranges;

  YearSelector(this.ranges);

  String format() => ranges.map((range) => range.format()).join(',');
}

class YearRange {
  final int from;
  final int? to;
  final bool openEnd;
  final int? periodicity;

  YearRange(this.from, {this.to, this.openEnd = false, this.periodicity});

  String format() {
    if (openEnd) return '$from+';
    if (to == null) return '$from';
    if (periodicity != null) return '$from-$to/$periodicity';
    return '$from-$to';
  }
}

class MonthdaySelector {
  final List<MonthdayRange> ranges;

  MonthdaySelector(this.ranges);

  String format() => ranges.map((range) => range.format()).join(',');
}

sealed class MonthdayRange {
  String format();
}

class MonthOnlyRange extends MonthdayRange {
  final int? year;
  final Month month;

  MonthOnlyRange(this.year, this.month);

  @override
  String format() {
    final yearPrefix = year != null ? '$year ' : '';
    return '$yearPrefix${month.code}';
  }
}

class MonthToMonthRange extends MonthdayRange {
  final int? year;
  final Month from;
  final Month to;

  MonthToMonthRange(this.year, this.from, this.to);

  @override
  String format() {
    final yearPrefix = year != null ? '$year ' : '';
    return '$yearPrefix${from.code}-${to.code}';
  }
}

class DateFromRange extends MonthdayRange {
  final DateFrom from;
  final DateOffset? fromOffset;
  final bool openEnd;
  final DateTo? to;
  final DateOffset? toOffset;

  DateFromRange(
    this.from, {
    this.fromOffset,
    this.openEnd = false,
    this.to,
    this.toOffset,
  });

  @override
  String format() {
    final buffer = StringBuffer(from.format());
    if (fromOffset != null) buffer.write(fromOffset!.format());
    if (openEnd) buffer.write('+');
    if (to != null) {
      buffer.write('-');
      buffer.write(to!.format());
      if (toOffset != null) buffer.write(toOffset!.format());
    }
    return buffer.toString();
  }
}

sealed class DateFrom {
  int? get year;
  String format();
}

class MonthDayFrom extends DateFrom {
  @override
  final int? year;
  final Month month;
  final int daynum;

  MonthDayFrom(this.year, this.month, this.daynum);

  @override
  String format() {
    final yearPrefix = year != null ? '$year ' : '';
    final day = daynum.toString().padLeft(2, '0');
    return '$yearPrefix${month.code} $day';
  }
}

class MonthWdayNthFrom extends DateFrom {
  @override
  final int? year;
  final Month month;
  final Weekday wday;
  final int nth;
  final bool negative;

  MonthWdayNthFrom(
    this.year,
    this.month,
    this.wday,
    this.nth, {
    this.negative = false,
  });

  @override
  String format() {
    final yearPrefix = year != null ? '$year ' : '';
    final sign = negative ? '-' : '';
    return '$yearPrefix${month.code} ${wday.code}[$sign$nth]';
  }
}

class VariableDateFrom extends DateFrom {
  @override
  final int? year;
  final String name;

  VariableDateFrom(this.year, this.name);

  @override
  String format() {
    final yearPrefix = year != null ? '$year ' : '';
    return '$yearPrefix$name';
  }
}

sealed class DateTo {
  String format();
}

class DateFromTo extends DateTo {
  final DateFrom dateFrom;

  DateFromTo(this.dateFrom);

  @override
  String format() => dateFrom.format();
}

class DaynumTo extends DateTo {
  final int daynum;

  DaynumTo(this.daynum);

  @override
  String format() => daynum.toString().padLeft(2, '0');
}

class DateOffset {
  final bool hasWdayShift;
  final bool wdayPositive;
  final Weekday? wday;
  final bool hasDayShift;
  final bool dayPositive;
  final int days;

  DateOffset({
    this.hasWdayShift = false,
    this.wdayPositive = true,
    this.wday,
    this.hasDayShift = false,
    this.dayPositive = true,
    this.days = 0,
  });

  String format() {
    final buffer = StringBuffer();
    if (hasWdayShift) {
      buffer.write(wdayPositive ? '+' : '-');
      buffer.write(wday!.code);
    }
    if (hasDayShift) {
      buffer.write(' ');
      buffer.write(dayPositive ? '+' : '-');
      buffer.write(days);
      buffer.write(days == 1 ? ' day' : ' days');
    }
    return buffer.toString();
  }
}

class WeekSelector {
  final List<WeekRange> ranges;

  WeekSelector(this.ranges);

  String format() =>
      'week ${ranges.map((range) => range.format()).join(',')}';
}

class WeekRange {
  final int from;
  final int? to;
  final int? periodicity;

  WeekRange(this.from, {this.to, this.periodicity});

  String format() {
    final fromStr = from.toString().padLeft(2, '0');
    if (to == null) return fromStr;
    final toStr = to!.toString().padLeft(2, '0');
    if (periodicity != null) return '$fromStr-$toStr/$periodicity';
    return '$fromStr-$toStr';
  }
}

class WeekdaySelector {
  final List<WeekdayRange> weekdays;
  final List<HolidayEntry> holidays;
  final bool holidaysFirst;

  WeekdaySelector({
    this.weekdays = const [],
    this.holidays = const [],
    this.holidaysFirst = false,
  });

  String format() {
    final weekdayText =
        weekdays.map((range) => range.format()).join(',');
    final holidayText =
        holidays.map((entry) => entry.format()).join(',');
    if (weekdays.isEmpty) return holidayText;
    if (holidays.isEmpty) return weekdayText;
    if (holidaysFirst) return '$holidayText,$weekdayText';
    return '$weekdayText,$holidayText';
  }
}

sealed class WeekdayRange {
  String format();
}

class WeekdaySpan extends WeekdayRange {
  final Weekday from;
  final Weekday? to;

  WeekdaySpan(this.from, [this.to]);

  @override
  String format() {
    if (to == null) return from.code;
    return '${from.code}-${to!.code}';
  }
}

class WeekdayNth extends WeekdayRange {
  final Weekday wday;
  final List<NthEntry> nths;
  final DayShift? offset;

  WeekdayNth(this.wday, this.nths, [this.offset]);

  @override
  String format() {
    final nthText = nths.map((entry) => entry.format()).join(',');
    final offsetText = offset?.format() ?? '';
    return '${wday.code}[$nthText]$offsetText';
  }
}

class NthEntry {
  final int? from;
  final int to;
  final bool negative;
  final bool isRange;

  NthEntry.single(int value)
      : from = value,
        to = value,
        negative = false,
        isRange = false;
  NthEntry.range(this.from, this.to)
      : negative = false,
        isRange = true;
  NthEntry.negative(int value)
      : from = null,
        to = value,
        negative = true,
        isRange = false;

  String format() {
    if (negative) return '-$to';
    if (isRange) return '$from-$to';
    return '$from';
  }
}

class DayShift {
  final bool positive;
  final int days;

  DayShift(this.positive, this.days);

  String format() {
    final sign = positive ? '+' : '-';
    final unit = days == 1 ? 'day' : 'days';
    return ' $sign$days $unit';
  }
}

class HolidayEntry {
  final HolidayType type;
  final DayShift? offset;

  HolidayEntry(this.type, [this.offset]);

  String format() {
    final buffer = StringBuffer(type.code);
    if (offset != null) buffer.write(offset!.format());
    return buffer.toString();
  }
}

class TimeSelector {
  final List<Timespan> spans;

  TimeSelector(this.spans);

  String format() => spans.map((span) => span.format()).join(',');
}

class Timespan {
  final Time start;
  final Time? end;
  final bool openEnd;
  final Repeat? repeat;

  Timespan(this.start, {this.end, this.openEnd = false, this.repeat});

  String format() {
    final buffer = StringBuffer(start.format());
    if (end != null) {
      buffer.write('-');
      buffer.write(end!.format());
    }
    if (openEnd) buffer.write('+');
    if (repeat != null) {
      buffer.write('/');
      buffer.write(repeat!.format());
    }
    return buffer.toString();
  }
}

sealed class Repeat {
  String format();
}

class RepeatMinutes extends Repeat {
  final int minutes;

  RepeatMinutes(this.minutes);

  @override
  String format() => '$minutes';
}

class RepeatHourMinutes extends Repeat {
  final int hour;
  final int minute;

  RepeatHourMinutes(this.hour, this.minute);

  @override
  String format() =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
}

sealed class Time {
  String format();
}

class HourMinutes extends Time {
  final int hour;
  final int minute;

  HourMinutes(this.hour, this.minute);

  @override
  String format() =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
}

class VariableTime extends Time {
  final TimeEvent event;
  final bool hasOffset;
  final bool positive;
  final HourMinutes? offset;

  VariableTime(
    this.event, {
    this.hasOffset = false,
    this.positive = true,
    this.offset,
  });

  @override
  String format() {
    if (!hasOffset) return event.code;
    final sign = positive ? '+' : '-';
    return '(${event.code}$sign${offset!.format()})';
  }
}

class Comment {
  final String text;

  Comment(this.text);

  String format() => '"$text"';
}

class RuleModifier {
  final RuleModifierKind? kind;
  final Comment? comment;

  RuleModifier({this.kind, this.comment});

  String format() {
    if (kind != null && comment != null) {
      return '${kind!.code} ${comment!.format()}';
    }
    if (kind != null) return kind!.code;
    if (comment != null) return comment!.format();
    return '';
  }
}
