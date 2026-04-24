// Generated from tool/ohmin.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'ohminListener.dart';
import 'ohminBaseListener.dart';
const int RULE_c247string = 0, RULE_cdayoftheweek = 1, RULE_cworkdays = 2, 
          RULE_cworkdays2letters = 3, RULE_cworkdays3letters = 4, RULE_cweekend = 5, 
          RULE_cweekend2letters = 6, RULE_cweekend3letters = 7, RULE_cmonth = 8, 
          RULE_csunlightevent = 9, RULE_coffsetsymbols = 10, RULE_cminute = 11, 
          RULE_chour = 12, RULE_cday = 13, RULE_cweeknum = 14, RULE_positive_integer = 15, 
          RULE_negative_integer = 16, RULE_hh_mm = 17, RULE_comment = 18, 
          RULE_nth_entry = 19, RULE_opening_hours = 20, RULE_rule_sequence = 21, 
          RULE_rule_separator = 22, RULE_rule_modifier = 23, RULE_rule_modifier_open = 24, 
          RULE_rule_modifier_closed = 25, RULE_rule_modifier_unknown = 26, 
          RULE_rule_modifier_comment = 27, RULE_selector_sequence = 28, 
          RULE_small_range_selectors = 29, RULE_weekday_selector = 30, RULE_weekday_sequence = 31, 
          RULE_weekday_ranges = 32, RULE_weekday_ranges_single = 33, RULE_weekday_ranges_range = 34, 
          RULE_weekday_ranges_range_nth = 35, RULE_weekday_ranges_range_nth_offset = 36, 
          RULE_holiday_sequence = 37, RULE_holiday = 38, RULE_day_offset = 39, 
          RULE_time_selector = 40, RULE_timespan = 41, RULE_timespan_range = 42, 
          RULE_timespan_range_openended = 43, RULE_timespan_range_cron = 44, 
          RULE_timespan_openended = 45, RULE_time = 46, RULE_variable_time = 47, 
          RULE_wide_range_selectors = 48, RULE_year_sel = 49, RULE_year_selector = 50, 
          RULE_year_selector_range = 51, RULE_year_selector_range_cron = 52, 
          RULE_year_selector_single = 53, RULE_year_selector_single_cron = 54, 
          RULE_year_selector_single_openended = 55, RULE_calendarmonth_selector = 56, 
          RULE_calendarmonth_range = 57, RULE_calendarmonth_range_single = 58, 
          RULE_calendarmonth_range_range = 59, RULE_calendarmonth_range_cron = 60, 
          RULE_calendarmonth_range_from = 61, RULE_calendarmonth_range_from_openended = 62, 
          RULE_calendarmonth_range_from_to = 63, RULE_date_offset = 64, 
          RULE_date_from = 65, RULE_date_to = 66, RULE_moveable_holidays = 67, 
          RULE_week_selector = 68, RULE_week = 69, RULE_week_single = 70, 
          RULE_week_range = 71, RULE_week_range_cron = 72;
class ohminParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_T__16 = 17, TOKEN_T__17 = 18, 
                   TOKEN_T__18 = 19, TOKEN_T__19 = 20, TOKEN_T__20 = 21, 
                   TOKEN_T__21 = 22, TOKEN_T__22 = 23, TOKEN_T__23 = 24, 
                   TOKEN_T__24 = 25, TOKEN_T__25 = 26, TOKEN_T__26 = 27, 
                   TOKEN_T__27 = 28, TOKEN_T__28 = 29, TOKEN_T__29 = 30, 
                   TOKEN_T__30 = 31, TOKEN_T__31 = 32, TOKEN_T__32 = 33, 
                   TOKEN_T__33 = 34, TOKEN_T__34 = 35, TOKEN_T__35 = 36, 
                   TOKEN_T__36 = 37, TOKEN_T__37 = 38, TOKEN_T__38 = 39, 
                   TOKEN_T__39 = 40, TOKEN_T__40 = 41, TOKEN_T__41 = 42, 
                   TOKEN_T__42 = 43, TOKEN_T__43 = 44, TOKEN_T__44 = 45, 
                   TOKEN_T__45 = 46, TOKEN_T__46 = 47, TOKEN_T__47 = 48, 
                   TOKEN_T__48 = 49, TOKEN_T__49 = 50, TOKEN_T__50 = 51, 
                   TOKEN_T__51 = 52, TOKEN_NUMBERS = 53, TOKEN_COMMENT = 54, 
                   TOKEN_WS = 55;

  @override
  final List<String> ruleNames = [
    'c247string', 'cdayoftheweek', 'cworkdays', 'cworkdays2letters', 'cworkdays3letters', 
    'cweekend', 'cweekend2letters', 'cweekend3letters', 'cmonth', 'csunlightevent', 
    'coffsetsymbols', 'cminute', 'chour', 'cday', 'cweeknum', 'positive_integer', 
    'negative_integer', 'hh_mm', 'comment', 'nth_entry', 'opening_hours', 
    'rule_sequence', 'rule_separator', 'rule_modifier', 'rule_modifier_open', 
    'rule_modifier_closed', 'rule_modifier_unknown', 'rule_modifier_comment', 
    'selector_sequence', 'small_range_selectors', 'weekday_selector', 'weekday_sequence', 
    'weekday_ranges', 'weekday_ranges_single', 'weekday_ranges_range', 'weekday_ranges_range_nth', 
    'weekday_ranges_range_nth_offset', 'holiday_sequence', 'holiday', 'day_offset', 
    'time_selector', 'timespan', 'timespan_range', 'timespan_range_openended', 
    'timespan_range_cron', 'timespan_openended', 'time', 'variable_time', 
    'wide_range_selectors', 'year_sel', 'year_selector', 'year_selector_range', 
    'year_selector_range_cron', 'year_selector_single', 'year_selector_single_cron', 
    'year_selector_single_openended', 'calendarmonth_selector', 'calendarmonth_range', 
    'calendarmonth_range_single', 'calendarmonth_range_range', 'calendarmonth_range_cron', 
    'calendarmonth_range_from', 'calendarmonth_range_from_openended', 'calendarmonth_range_from_to', 
    'date_offset', 'date_from', 'date_to', 'moveable_holidays', 'week_selector', 
    'week', 'week_single', 'week_range', 'week_range_cron'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'24/7'", "'Mo'", "'Tu'", "'We'", "'Th'", "'Fr'", "'Mon'", "'Tue'", 
      "'Wed'", "'Thu'", "'Fri'", "'Sa'", "'Su'", "'Sat'", "'Sun'", "'Jan'", 
      "'Feb'", "'Mar'", "'Apr'", "'May'", "'Jun'", "'Jul'", "'Aug'", "'Sep'", 
      "'Oct'", "'Nov'", "'Dec'", "'dawn'", "'sunrise'", "'sunset'", "'dusk'", 
      "'+'", "'-'", "':'", "';'", "'||'", "'open'", "'closed'", "'off'", 
      "'unknown'", "','", "'['", "']'", "'PH'", "'SH'", "'day'", "'s'", 
      "'/'", "'('", "')'", "'easter'", "'week'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, "NUMBERS", "COMMENT", 
      "WS"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'ohmin.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  ohminParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  C247stringContext c247string() {
    dynamic _localctx = C247stringContext(context, state);
    enterRule(_localctx, 0, RULE_c247string);
    try {
      enterOuterAlt(_localctx, 1);
      state = 146;
      match(TOKEN_T__0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CdayoftheweekContext cdayoftheweek() {
    dynamic _localctx = CdayoftheweekContext(context, state);
    enterRule(_localctx, 2, RULE_cdayoftheweek);
    try {
      state = 150;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__1:
      case TOKEN_T__2:
      case TOKEN_T__3:
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
        enterOuterAlt(_localctx, 1);
        state = 148;
        cworkdays();
        break;
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_T__14:
        enterOuterAlt(_localctx, 2);
        state = 149;
        cweekend();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CworkdaysContext cworkdays() {
    dynamic _localctx = CworkdaysContext(context, state);
    enterRule(_localctx, 4, RULE_cworkdays);
    try {
      state = 154;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__1:
      case TOKEN_T__2:
      case TOKEN_T__3:
      case TOKEN_T__4:
      case TOKEN_T__5:
        enterOuterAlt(_localctx, 1);
        state = 152;
        cworkdays2letters();
        break;
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
        enterOuterAlt(_localctx, 2);
        state = 153;
        cworkdays3letters();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Cworkdays2lettersContext cworkdays2letters() {
    dynamic _localctx = Cworkdays2lettersContext(context, state);
    enterRule(_localctx, 6, RULE_cworkdays2letters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 156;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 124) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Cworkdays3lettersContext cworkdays3letters() {
    dynamic _localctx = Cworkdays3lettersContext(context, state);
    enterRule(_localctx, 8, RULE_cworkdays3letters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 158;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3968) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CweekendContext cweekend() {
    dynamic _localctx = CweekendContext(context, state);
    enterRule(_localctx, 10, RULE_cweekend);
    try {
      state = 162;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__11:
      case TOKEN_T__12:
        enterOuterAlt(_localctx, 1);
        state = 160;
        cweekend2letters();
        break;
      case TOKEN_T__13:
      case TOKEN_T__14:
        enterOuterAlt(_localctx, 2);
        state = 161;
        cweekend3letters();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Cweekend2lettersContext cweekend2letters() {
    dynamic _localctx = Cweekend2lettersContext(context, state);
    enterRule(_localctx, 12, RULE_cweekend2letters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 164;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__11 || _la == TOKEN_T__12)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Cweekend3lettersContext cweekend3letters() {
    dynamic _localctx = Cweekend3lettersContext(context, state);
    enterRule(_localctx, 14, RULE_cweekend3letters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 166;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__13 || _la == TOKEN_T__14)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CmonthContext cmonth() {
    dynamic _localctx = CmonthContext(context, state);
    enterRule(_localctx, 16, RULE_cmonth);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 168;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 268369920) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CsunlighteventContext csunlightevent() {
    dynamic _localctx = CsunlighteventContext(context, state);
    enterRule(_localctx, 18, RULE_csunlightevent);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 170;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4026531840) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CoffsetsymbolsContext coffsetsymbols() {
    dynamic _localctx = CoffsetsymbolsContext(context, state);
    enterRule(_localctx, 20, RULE_coffsetsymbols);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 172;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__31 || _la == TOKEN_T__32)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CminuteContext cminute() {
    dynamic _localctx = CminuteContext(context, state);
    enterRule(_localctx, 22, RULE_cminute);
    try {
      enterOuterAlt(_localctx, 1);
      state = 174;
      match(TOKEN_NUMBERS);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ChourContext chour() {
    dynamic _localctx = ChourContext(context, state);
    enterRule(_localctx, 24, RULE_chour);
    try {
      enterOuterAlt(_localctx, 1);
      state = 176;
      match(TOKEN_NUMBERS);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CdayContext cday() {
    dynamic _localctx = CdayContext(context, state);
    enterRule(_localctx, 26, RULE_cday);
    try {
      enterOuterAlt(_localctx, 1);
      state = 178;
      match(TOKEN_NUMBERS);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CweeknumContext cweeknum() {
    dynamic _localctx = CweeknumContext(context, state);
    enterRule(_localctx, 28, RULE_cweeknum);
    try {
      enterOuterAlt(_localctx, 1);
      state = 180;
      match(TOKEN_NUMBERS);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Positive_integerContext positive_integer() {
    dynamic _localctx = Positive_integerContext(context, state);
    enterRule(_localctx, 30, RULE_positive_integer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 182;
      match(TOKEN_NUMBERS);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Negative_integerContext negative_integer() {
    dynamic _localctx = Negative_integerContext(context, state);
    enterRule(_localctx, 32, RULE_negative_integer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 184;
      match(TOKEN_T__32);
      state = 185;
      positive_integer();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Hh_mmContext hh_mm() {
    dynamic _localctx = Hh_mmContext(context, state);
    enterRule(_localctx, 34, RULE_hh_mm);
    try {
      enterOuterAlt(_localctx, 1);
      state = 187;
      chour();
      state = 188;
      match(TOKEN_T__33);
      state = 189;
      cminute();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CommentContext comment() {
    dynamic _localctx = CommentContext(context, state);
    enterRule(_localctx, 36, RULE_comment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 191;
      match(TOKEN_COMMENT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Nth_entryContext nth_entry() {
    dynamic _localctx = Nth_entryContext(context, state);
    enterRule(_localctx, 38, RULE_nth_entry);
    try {
      state = 199;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 193;
        negative_integer();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 194;
        positive_integer();
        state = 195;
        match(TOKEN_T__32);
        state = 196;
        positive_integer();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 198;
        positive_integer();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Opening_hoursContext opening_hours() {
    dynamic _localctx = Opening_hoursContext(context, state);
    enterRule(_localctx, 40, RULE_opening_hours);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 201;
      rule_sequence();
      state = 207;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__34 || _la == TOKEN_T__35) {
        state = 202;
        rule_separator();
        state = 203;
        rule_sequence();
        state = 209;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 210;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Rule_sequenceContext rule_sequence() {
    dynamic _localctx = Rule_sequenceContext(context, state);
    enterRule(_localctx, 42, RULE_rule_sequence);
    try {
      state = 216;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 5, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 212;
        selector_sequence();
        state = 213;
        rule_modifier();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 215;
        selector_sequence();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Rule_separatorContext rule_separator() {
    dynamic _localctx = Rule_separatorContext(context, state);
    enterRule(_localctx, 44, RULE_rule_separator);
    try {
      state = 220;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__34:
        _localctx = Rule_separator_normalContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 218;
        match(TOKEN_T__34);
        break;
      case TOKEN_T__35:
        _localctx = Rule_separator_fallbackContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 219;
        match(TOKEN_T__35);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Rule_modifierContext rule_modifier() {
    dynamic _localctx = Rule_modifierContext(context, state);
    enterRule(_localctx, 46, RULE_rule_modifier);
    try {
      state = 226;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__36:
        enterOuterAlt(_localctx, 1);
        state = 222;
        rule_modifier_open();
        break;
      case TOKEN_T__37:
      case TOKEN_T__38:
        enterOuterAlt(_localctx, 2);
        state = 223;
        rule_modifier_closed();
        break;
      case TOKEN_T__39:
        enterOuterAlt(_localctx, 3);
        state = 224;
        rule_modifier_unknown();
        break;
      case TOKEN_COMMENT:
        enterOuterAlt(_localctx, 4);
        state = 225;
        rule_modifier_comment();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Rule_modifier_openContext rule_modifier_open() {
    dynamic _localctx = Rule_modifier_openContext(context, state);
    enterRule(_localctx, 48, RULE_rule_modifier_open);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 228;
      match(TOKEN_T__36);
      state = 230;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_COMMENT) {
        state = 229;
        comment();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Rule_modifier_closedContext rule_modifier_closed() {
    dynamic _localctx = Rule_modifier_closedContext(context, state);
    enterRule(_localctx, 50, RULE_rule_modifier_closed);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 232;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__37 || _la == TOKEN_T__38)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 234;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_COMMENT) {
        state = 233;
        comment();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Rule_modifier_unknownContext rule_modifier_unknown() {
    dynamic _localctx = Rule_modifier_unknownContext(context, state);
    enterRule(_localctx, 52, RULE_rule_modifier_unknown);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 236;
      match(TOKEN_T__39);
      state = 238;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_COMMENT) {
        state = 237;
        comment();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Rule_modifier_commentContext rule_modifier_comment() {
    dynamic _localctx = Rule_modifier_commentContext(context, state);
    enterRule(_localctx, 54, RULE_rule_modifier_comment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 240;
      comment();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Selector_sequenceContext selector_sequence() {
    dynamic _localctx = Selector_sequenceContext(context, state);
    enterRule(_localctx, 56, RULE_selector_sequence);
    try {
      state = 248;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 242;
        c247string();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 243;
        wide_range_selectors();
        state = 244;
        small_range_selectors();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 246;
        wide_range_selectors();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 247;
        small_range_selectors();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Small_range_selectorsContext small_range_selectors() {
    dynamic _localctx = Small_range_selectorsContext(context, state);
    enterRule(_localctx, 58, RULE_small_range_selectors);
    try {
      state = 255;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 12, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 250;
        weekday_selector();
        state = 251;
        time_selector();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 253;
        weekday_selector();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 254;
        time_selector();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Weekday_selectorContext weekday_selector() {
    dynamic _localctx = Weekday_selectorContext(context, state);
    enterRule(_localctx, 60, RULE_weekday_selector);
    try {
      state = 270;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 257;
        holiday_sequence();
        state = 258;
        match(TOKEN_T__40);
        state = 259;
        weekday_sequence();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 261;
        weekday_sequence();
        state = 262;
        match(TOKEN_T__40);
        state = 263;
        holiday_sequence();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 265;
        holiday_sequence();
        state = 266;
        weekday_sequence();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 268;
        weekday_sequence();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 269;
        holiday_sequence();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Weekday_sequenceContext weekday_sequence() {
    dynamic _localctx = Weekday_sequenceContext(context, state);
    enterRule(_localctx, 62, RULE_weekday_sequence);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 272;
      weekday_ranges();
      state = 277;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 14, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 273;
          match(TOKEN_T__40);
          state = 274;
          weekday_ranges(); 
        }
        state = 279;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 14, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Weekday_rangesContext weekday_ranges() {
    dynamic _localctx = Weekday_rangesContext(context, state);
    enterRule(_localctx, 64, RULE_weekday_ranges);
    try {
      state = 284;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 15, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 280;
        weekday_ranges_range_nth_offset();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 281;
        weekday_ranges_range_nth();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 282;
        weekday_ranges_range();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 283;
        weekday_ranges_single();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Weekday_ranges_singleContext weekday_ranges_single() {
    dynamic _localctx = Weekday_ranges_singleContext(context, state);
    enterRule(_localctx, 66, RULE_weekday_ranges_single);
    try {
      enterOuterAlt(_localctx, 1);
      state = 286;
      cdayoftheweek();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Weekday_ranges_rangeContext weekday_ranges_range() {
    dynamic _localctx = Weekday_ranges_rangeContext(context, state);
    enterRule(_localctx, 68, RULE_weekday_ranges_range);
    try {
      enterOuterAlt(_localctx, 1);
      state = 288;
      cdayoftheweek();
      state = 289;
      match(TOKEN_T__32);
      state = 290;
      cdayoftheweek();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Weekday_ranges_range_nthContext weekday_ranges_range_nth() {
    dynamic _localctx = Weekday_ranges_range_nthContext(context, state);
    enterRule(_localctx, 70, RULE_weekday_ranges_range_nth);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 292;
      cdayoftheweek();
      state = 293;
      match(TOKEN_T__41);
      state = 294;
      nth_entry();
      state = 299;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__40) {
        state = 295;
        match(TOKEN_T__40);
        state = 296;
        nth_entry();
        state = 301;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 302;
      match(TOKEN_T__42);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Weekday_ranges_range_nth_offsetContext weekday_ranges_range_nth_offset() {
    dynamic _localctx = Weekday_ranges_range_nth_offsetContext(context, state);
    enterRule(_localctx, 72, RULE_weekday_ranges_range_nth_offset);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 304;
      cdayoftheweek();
      state = 305;
      match(TOKEN_T__41);
      state = 306;
      nth_entry();
      state = 311;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__40) {
        state = 307;
        match(TOKEN_T__40);
        state = 308;
        nth_entry();
        state = 313;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 314;
      match(TOKEN_T__42);
      state = 315;
      day_offset();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Holiday_sequenceContext holiday_sequence() {
    dynamic _localctx = Holiday_sequenceContext(context, state);
    enterRule(_localctx, 74, RULE_holiday_sequence);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 317;
      holiday();
      state = 322;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 318;
          match(TOKEN_T__40);
          state = 319;
          holiday(); 
        }
        state = 324;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  HolidayContext holiday() {
    dynamic _localctx = HolidayContext(context, state);
    enterRule(_localctx, 76, RULE_holiday);
    int _la;
    try {
      state = 333;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__43:
        _localctx = Singular_day_holidayContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 325;
        match(TOKEN_T__43);
        state = 327;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__31 || _la == TOKEN_T__32) {
          state = 326;
          day_offset();
        }

        break;
      case TOKEN_T__44:
        _localctx = Plural_day_holidayContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 329;
        match(TOKEN_T__44);
        state = 331;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__31 || _la == TOKEN_T__32) {
          state = 330;
          day_offset();
        }

        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Day_offsetContext day_offset() {
    dynamic _localctx = Day_offsetContext(context, state);
    enterRule(_localctx, 78, RULE_day_offset);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 338;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__31:
        state = 335;
        match(TOKEN_T__31);
        state = 336;
        positive_integer();
        break;
      case TOKEN_T__32:
        state = 337;
        negative_integer();
        break;
      default:
        throw NoViableAltException(this);
      }

      state = 340;
      match(TOKEN_T__45);
      state = 342;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__46) {
        state = 341;
        match(TOKEN_T__46);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Time_selectorContext time_selector() {
    dynamic _localctx = Time_selectorContext(context, state);
    enterRule(_localctx, 80, RULE_time_selector);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 344;
      timespan();
      state = 349;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__40) {
        state = 345;
        match(TOKEN_T__40);
        state = 346;
        timespan();
        state = 351;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TimespanContext timespan() {
    dynamic _localctx = TimespanContext(context, state);
    enterRule(_localctx, 82, RULE_timespan);
    try {
      state = 356;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 25, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 352;
        timespan_range_cron();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 353;
        timespan_range_openended();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 354;
        timespan_range();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 355;
        timespan_openended();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Timespan_rangeContext timespan_range() {
    dynamic _localctx = Timespan_rangeContext(context, state);
    enterRule(_localctx, 84, RULE_timespan_range);
    try {
      enterOuterAlt(_localctx, 1);
      state = 358;
      time();
      state = 359;
      match(TOKEN_T__32);
      state = 360;
      time();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Timespan_range_openendedContext timespan_range_openended() {
    dynamic _localctx = Timespan_range_openendedContext(context, state);
    enterRule(_localctx, 86, RULE_timespan_range_openended);
    try {
      enterOuterAlt(_localctx, 1);
      state = 362;
      time();
      state = 363;
      match(TOKEN_T__32);
      state = 364;
      time();
      state = 365;
      match(TOKEN_T__31);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Timespan_range_cronContext timespan_range_cron() {
    dynamic _localctx = Timespan_range_cronContext(context, state);
    enterRule(_localctx, 88, RULE_timespan_range_cron);
    try {
      enterOuterAlt(_localctx, 1);
      state = 367;
      time();
      state = 368;
      match(TOKEN_T__32);
      state = 369;
      time();
      state = 370;
      match(TOKEN_T__47);
      state = 373;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 26, context)) {
      case 1:
        state = 371;
        hh_mm();
        break;
      case 2:
        state = 372;
        positive_integer();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Timespan_openendedContext timespan_openended() {
    dynamic _localctx = Timespan_openendedContext(context, state);
    enterRule(_localctx, 90, RULE_timespan_openended);
    try {
      enterOuterAlt(_localctx, 1);
      state = 375;
      time();
      state = 376;
      match(TOKEN_T__31);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TimeContext time() {
    dynamic _localctx = TimeContext(context, state);
    enterRule(_localctx, 92, RULE_time);
    try {
      state = 380;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__27:
      case TOKEN_T__28:
      case TOKEN_T__29:
      case TOKEN_T__30:
      case TOKEN_T__48:
        enterOuterAlt(_localctx, 1);
        state = 378;
        variable_time();
        break;
      case TOKEN_NUMBERS:
        enterOuterAlt(_localctx, 2);
        state = 379;
        hh_mm();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Variable_timeContext variable_time() {
    dynamic _localctx = Variable_timeContext(context, state);
    enterRule(_localctx, 94, RULE_variable_time);
    try {
      state = 393;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 28, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 382;
        match(TOKEN_T__48);
        state = 383;
        csunlightevent();
        state = 384;
        coffsetsymbols();
        state = 385;
        hh_mm();
        state = 386;
        match(TOKEN_T__49);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 388;
        csunlightevent();
        state = 389;
        coffsetsymbols();
        state = 390;
        hh_mm();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 392;
        csunlightevent();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Wide_range_selectorsContext wide_range_selectors() {
    dynamic _localctx = Wide_range_selectorsContext(context, state);
    enterRule(_localctx, 96, RULE_wide_range_selectors);
    int _la;
    try {
      state = 426;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
      case TOKEN_T__19:
      case TOKEN_T__20:
      case TOKEN_T__21:
      case TOKEN_T__22:
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
      case TOKEN_T__26:
      case TOKEN_T__50:
      case TOKEN_T__51:
      case TOKEN_NUMBERS:
        enterOuterAlt(_localctx, 1);
        state = 417;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 29, context)) {
        case 1:
          state = 395;
          year_sel();
          state = 396;
          calendarmonth_selector();
          state = 397;
          week_selector();
          break;
        case 2:
          state = 399;
          year_sel();
          state = 400;
          calendarmonth_selector();
          break;
        case 3:
          state = 402;
          year_sel();
          state = 403;
          week_selector();
          break;
        case 4:
          state = 405;
          year_sel();
          state = 406;
          date_from();
          break;
        case 5:
          state = 408;
          year_sel();
          state = 409;
          calendarmonth_range();
          break;
        case 6:
          state = 411;
          year_sel();
          break;
        case 7:
          state = 412;
          calendarmonth_selector();
          state = 413;
          week_selector();
          break;
        case 8:
          state = 415;
          calendarmonth_selector();
          break;
        case 9:
          state = 416;
          week_selector();
          break;
        }
        state = 420;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__33) {
          state = 419;
          match(TOKEN_T__33);
        }

        break;
      case TOKEN_COMMENT:
        enterOuterAlt(_localctx, 2);
        state = 422;
        comment();
        state = 424;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__33) {
          state = 423;
          match(TOKEN_T__33);
        }

        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Year_selContext year_sel() {
    dynamic _localctx = Year_selContext(context, state);
    enterRule(_localctx, 98, RULE_year_sel);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 428;
      year_selector();
      state = 433;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__40) {
        state = 429;
        match(TOKEN_T__40);
        state = 430;
        year_selector();
        state = 435;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Year_selectorContext year_selector() {
    dynamic _localctx = Year_selectorContext(context, state);
    enterRule(_localctx, 100, RULE_year_selector);
    try {
      state = 441;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 34, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 436;
        year_selector_range_cron();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 437;
        year_selector_range();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 438;
        year_selector_single_cron();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 439;
        year_selector_single_openended();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 440;
        year_selector_single();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Year_selector_rangeContext year_selector_range() {
    dynamic _localctx = Year_selector_rangeContext(context, state);
    enterRule(_localctx, 102, RULE_year_selector_range);
    try {
      enterOuterAlt(_localctx, 1);
      state = 443;
      year_selector_single();
      state = 444;
      match(TOKEN_T__32);
      state = 445;
      year_selector_single();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Year_selector_range_cronContext year_selector_range_cron() {
    dynamic _localctx = Year_selector_range_cronContext(context, state);
    enterRule(_localctx, 104, RULE_year_selector_range_cron);
    try {
      enterOuterAlt(_localctx, 1);
      state = 447;
      year_selector_range();
      state = 448;
      match(TOKEN_T__47);
      state = 449;
      positive_integer();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Year_selector_singleContext year_selector_single() {
    dynamic _localctx = Year_selector_singleContext(context, state);
    enterRule(_localctx, 106, RULE_year_selector_single);
    try {
      enterOuterAlt(_localctx, 1);
      state = 451;
      match(TOKEN_NUMBERS);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Year_selector_single_cronContext year_selector_single_cron() {
    dynamic _localctx = Year_selector_single_cronContext(context, state);
    enterRule(_localctx, 108, RULE_year_selector_single_cron);
    try {
      enterOuterAlt(_localctx, 1);
      state = 453;
      year_selector_single();
      state = 454;
      match(TOKEN_T__47);
      state = 455;
      positive_integer();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Year_selector_single_openendedContext year_selector_single_openended() {
    dynamic _localctx = Year_selector_single_openendedContext(context, state);
    enterRule(_localctx, 110, RULE_year_selector_single_openended);
    try {
      enterOuterAlt(_localctx, 1);
      state = 457;
      year_selector_single();
      state = 458;
      match(TOKEN_T__31);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Calendarmonth_selectorContext calendarmonth_selector() {
    dynamic _localctx = Calendarmonth_selectorContext(context, state);
    enterRule(_localctx, 112, RULE_calendarmonth_selector);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 460;
      calendarmonth_range();
      state = 465;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__40) {
        state = 461;
        match(TOKEN_T__40);
        state = 462;
        calendarmonth_range();
        state = 467;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Calendarmonth_rangeContext calendarmonth_range() {
    dynamic _localctx = Calendarmonth_rangeContext(context, state);
    enterRule(_localctx, 114, RULE_calendarmonth_range);
    try {
      state = 474;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 468;
        calendarmonth_range_from_to();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 469;
        calendarmonth_range_from_openended();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 470;
        calendarmonth_range_from();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 471;
        calendarmonth_range_cron();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 472;
        calendarmonth_range_range();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 473;
        calendarmonth_range_single();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Calendarmonth_range_singleContext calendarmonth_range_single() {
    dynamic _localctx = Calendarmonth_range_singleContext(context, state);
    enterRule(_localctx, 116, RULE_calendarmonth_range_single);
    try {
      enterOuterAlt(_localctx, 1);
      state = 476;
      cmonth();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Calendarmonth_range_rangeContext calendarmonth_range_range() {
    dynamic _localctx = Calendarmonth_range_rangeContext(context, state);
    enterRule(_localctx, 118, RULE_calendarmonth_range_range);
    try {
      enterOuterAlt(_localctx, 1);
      state = 478;
      cmonth();
      state = 479;
      match(TOKEN_T__32);
      state = 480;
      cmonth();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Calendarmonth_range_cronContext calendarmonth_range_cron() {
    dynamic _localctx = Calendarmonth_range_cronContext(context, state);
    enterRule(_localctx, 120, RULE_calendarmonth_range_cron);
    try {
      enterOuterAlt(_localctx, 1);
      state = 482;
      cmonth();
      state = 483;
      match(TOKEN_T__32);
      state = 484;
      cmonth();
      state = 485;
      match(TOKEN_T__47);
      state = 486;
      positive_integer();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Calendarmonth_range_fromContext calendarmonth_range_from() {
    dynamic _localctx = Calendarmonth_range_fromContext(context, state);
    enterRule(_localctx, 122, RULE_calendarmonth_range_from);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 488;
      date_from();
      state = 490;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__31 || _la == TOKEN_T__32) {
        state = 489;
        date_offset();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Calendarmonth_range_from_openendedContext calendarmonth_range_from_openended() {
    dynamic _localctx = Calendarmonth_range_from_openendedContext(context, state);
    enterRule(_localctx, 124, RULE_calendarmonth_range_from_openended);
    try {
      enterOuterAlt(_localctx, 1);
      state = 492;
      date_from();
      state = 494;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
      case 1:
        state = 493;
        date_offset();
        break;
      }
      state = 496;
      match(TOKEN_T__31);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Calendarmonth_range_from_toContext calendarmonth_range_from_to() {
    dynamic _localctx = Calendarmonth_range_from_toContext(context, state);
    enterRule(_localctx, 126, RULE_calendarmonth_range_from_to);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 498;
      date_from();
      state = 500;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
      case 1:
        state = 499;
        date_offset();
        break;
      }
      state = 502;
      match(TOKEN_T__32);
      state = 503;
      date_to();
      state = 505;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__31 || _la == TOKEN_T__32) {
        state = 504;
        date_offset();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Date_offsetContext date_offset() {
    dynamic _localctx = Date_offsetContext(context, state);
    enterRule(_localctx, 128, RULE_date_offset);
    try {
      state = 513;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 42, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 507;
        coffsetsymbols();
        state = 508;
        cdayoftheweek();
        state = 510;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 41, context)) {
        case 1:
          state = 509;
          day_offset();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 512;
        day_offset();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Date_fromContext date_from() {
    dynamic _localctx = Date_fromContext(context, state);
    enterRule(_localctx, 130, RULE_date_from);
    int _la;
    try {
      state = 525;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 45, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 516;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_NUMBERS) {
          state = 515;
          year_selector_single();
        }

        state = 518;
        cmonth();
        state = 519;
        cday();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 522;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_NUMBERS) {
          state = 521;
          year_selector_single();
        }

        state = 524;
        moveable_holidays();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Date_toContext date_to() {
    dynamic _localctx = Date_toContext(context, state);
    enterRule(_localctx, 132, RULE_date_to);
    try {
      state = 529;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 46, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 527;
        date_from();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 528;
        cday();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Moveable_holidaysContext moveable_holidays() {
    dynamic _localctx = Moveable_holidaysContext(context, state);
    enterRule(_localctx, 134, RULE_moveable_holidays);
    try {
      enterOuterAlt(_localctx, 1);
      state = 531;
      match(TOKEN_T__50);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Week_selectorContext week_selector() {
    dynamic _localctx = Week_selectorContext(context, state);
    enterRule(_localctx, 136, RULE_week_selector);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 533;
      match(TOKEN_T__51);
      state = 534;
      week();
      state = 539;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__40) {
        state = 535;
        match(TOKEN_T__40);
        state = 536;
        week();
        state = 541;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WeekContext week() {
    dynamic _localctx = WeekContext(context, state);
    enterRule(_localctx, 138, RULE_week);
    try {
      state = 545;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 48, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 542;
        week_range_cron();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 543;
        week_range();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 544;
        week_single();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Week_singleContext week_single() {
    dynamic _localctx = Week_singleContext(context, state);
    enterRule(_localctx, 140, RULE_week_single);
    try {
      enterOuterAlt(_localctx, 1);
      state = 547;
      cweeknum();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Week_rangeContext week_range() {
    dynamic _localctx = Week_rangeContext(context, state);
    enterRule(_localctx, 142, RULE_week_range);
    try {
      enterOuterAlt(_localctx, 1);
      state = 549;
      cweeknum();
      state = 550;
      match(TOKEN_T__32);
      state = 551;
      cweeknum();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Week_range_cronContext week_range_cron() {
    dynamic _localctx = Week_range_cronContext(context, state);
    enterRule(_localctx, 144, RULE_week_range_cron);
    try {
      enterOuterAlt(_localctx, 1);
      state = 553;
      cweeknum();
      state = 554;
      match(TOKEN_T__32);
      state = 555;
      cweeknum();
      state = 556;
      match(TOKEN_T__47);
      state = 557;
      positive_integer();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  static const List<int> _serializedATN = [
      4,1,55,560,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,
      7,34,2,35,7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,
      41,7,41,2,42,7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,47,
      2,48,7,48,2,49,7,49,2,50,7,50,2,51,7,51,2,52,7,52,2,53,7,53,2,54,7,
      54,2,55,7,55,2,56,7,56,2,57,7,57,2,58,7,58,2,59,7,59,2,60,7,60,2,61,
      7,61,2,62,7,62,2,63,7,63,2,64,7,64,2,65,7,65,2,66,7,66,2,67,7,67,2,
      68,7,68,2,69,7,69,2,70,7,70,2,71,7,71,2,72,7,72,1,0,1,0,1,1,1,1,3,
      1,151,8,1,1,2,1,2,3,2,155,8,2,1,3,1,3,1,4,1,4,1,5,1,5,3,5,163,8,5,
      1,6,1,6,1,7,1,7,1,8,1,8,1,9,1,9,1,10,1,10,1,11,1,11,1,12,1,12,1,13,
      1,13,1,14,1,14,1,15,1,15,1,16,1,16,1,16,1,17,1,17,1,17,1,17,1,18,1,
      18,1,19,1,19,1,19,1,19,1,19,1,19,3,19,200,8,19,1,20,1,20,1,20,1,20,
      5,20,206,8,20,10,20,12,20,209,9,20,1,20,1,20,1,21,1,21,1,21,1,21,3,
      21,217,8,21,1,22,1,22,3,22,221,8,22,1,23,1,23,1,23,1,23,3,23,227,8,
      23,1,24,1,24,3,24,231,8,24,1,25,1,25,3,25,235,8,25,1,26,1,26,3,26,
      239,8,26,1,27,1,27,1,28,1,28,1,28,1,28,1,28,1,28,3,28,249,8,28,1,29,
      1,29,1,29,1,29,1,29,3,29,256,8,29,1,30,1,30,1,30,1,30,1,30,1,30,1,
      30,1,30,1,30,1,30,1,30,1,30,1,30,3,30,271,8,30,1,31,1,31,1,31,5,31,
      276,8,31,10,31,12,31,279,9,31,1,32,1,32,1,32,1,32,3,32,285,8,32,1,
      33,1,33,1,34,1,34,1,34,1,34,1,35,1,35,1,35,1,35,1,35,5,35,298,8,35,
      10,35,12,35,301,9,35,1,35,1,35,1,36,1,36,1,36,1,36,1,36,5,36,310,8,
      36,10,36,12,36,313,9,36,1,36,1,36,1,36,1,37,1,37,1,37,5,37,321,8,37,
      10,37,12,37,324,9,37,1,38,1,38,3,38,328,8,38,1,38,1,38,3,38,332,8,
      38,3,38,334,8,38,1,39,1,39,1,39,3,39,339,8,39,1,39,1,39,3,39,343,8,
      39,1,40,1,40,1,40,5,40,348,8,40,10,40,12,40,351,9,40,1,41,1,41,1,41,
      1,41,3,41,357,8,41,1,42,1,42,1,42,1,42,1,43,1,43,1,43,1,43,1,43,1,
      44,1,44,1,44,1,44,1,44,1,44,3,44,374,8,44,1,45,1,45,1,45,1,46,1,46,
      3,46,381,8,46,1,47,1,47,1,47,1,47,1,47,1,47,1,47,1,47,1,47,1,47,1,
      47,3,47,394,8,47,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,
      1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,3,48,418,
      8,48,1,48,3,48,421,8,48,1,48,1,48,3,48,425,8,48,3,48,427,8,48,1,49,
      1,49,1,49,5,49,432,8,49,10,49,12,49,435,9,49,1,50,1,50,1,50,1,50,1,
      50,3,50,442,8,50,1,51,1,51,1,51,1,51,1,52,1,52,1,52,1,52,1,53,1,53,
      1,54,1,54,1,54,1,54,1,55,1,55,1,55,1,56,1,56,1,56,5,56,464,8,56,10,
      56,12,56,467,9,56,1,57,1,57,1,57,1,57,1,57,1,57,3,57,475,8,57,1,58,
      1,58,1,59,1,59,1,59,1,59,1,60,1,60,1,60,1,60,1,60,1,60,1,61,1,61,3,
      61,491,8,61,1,62,1,62,3,62,495,8,62,1,62,1,62,1,63,1,63,3,63,501,8,
      63,1,63,1,63,1,63,3,63,506,8,63,1,64,1,64,1,64,3,64,511,8,64,1,64,
      3,64,514,8,64,1,65,3,65,517,8,65,1,65,1,65,1,65,1,65,3,65,523,8,65,
      1,65,3,65,526,8,65,1,66,1,66,3,66,530,8,66,1,67,1,67,1,68,1,68,1,68,
      1,68,5,68,538,8,68,10,68,12,68,541,9,68,1,69,1,69,1,69,3,69,546,8,
      69,1,70,1,70,1,71,1,71,1,71,1,71,1,72,1,72,1,72,1,72,1,72,1,72,1,72,
      0,0,73,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,
      44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,
      88,90,92,94,96,98,100,102,104,106,108,110,112,114,116,118,120,122,
      124,126,128,130,132,134,136,138,140,142,144,0,8,1,0,2,6,1,0,7,11,1,
      0,12,13,1,0,14,15,1,0,16,27,1,0,28,31,1,0,32,33,1,0,38,39,564,0,146,
      1,0,0,0,2,150,1,0,0,0,4,154,1,0,0,0,6,156,1,0,0,0,8,158,1,0,0,0,10,
      162,1,0,0,0,12,164,1,0,0,0,14,166,1,0,0,0,16,168,1,0,0,0,18,170,1,
      0,0,0,20,172,1,0,0,0,22,174,1,0,0,0,24,176,1,0,0,0,26,178,1,0,0,0,
      28,180,1,0,0,0,30,182,1,0,0,0,32,184,1,0,0,0,34,187,1,0,0,0,36,191,
      1,0,0,0,38,199,1,0,0,0,40,201,1,0,0,0,42,216,1,0,0,0,44,220,1,0,0,
      0,46,226,1,0,0,0,48,228,1,0,0,0,50,232,1,0,0,0,52,236,1,0,0,0,54,240,
      1,0,0,0,56,248,1,0,0,0,58,255,1,0,0,0,60,270,1,0,0,0,62,272,1,0,0,
      0,64,284,1,0,0,0,66,286,1,0,0,0,68,288,1,0,0,0,70,292,1,0,0,0,72,304,
      1,0,0,0,74,317,1,0,0,0,76,333,1,0,0,0,78,338,1,0,0,0,80,344,1,0,0,
      0,82,356,1,0,0,0,84,358,1,0,0,0,86,362,1,0,0,0,88,367,1,0,0,0,90,375,
      1,0,0,0,92,380,1,0,0,0,94,393,1,0,0,0,96,426,1,0,0,0,98,428,1,0,0,
      0,100,441,1,0,0,0,102,443,1,0,0,0,104,447,1,0,0,0,106,451,1,0,0,0,
      108,453,1,0,0,0,110,457,1,0,0,0,112,460,1,0,0,0,114,474,1,0,0,0,116,
      476,1,0,0,0,118,478,1,0,0,0,120,482,1,0,0,0,122,488,1,0,0,0,124,492,
      1,0,0,0,126,498,1,0,0,0,128,513,1,0,0,0,130,525,1,0,0,0,132,529,1,
      0,0,0,134,531,1,0,0,0,136,533,1,0,0,0,138,545,1,0,0,0,140,547,1,0,
      0,0,142,549,1,0,0,0,144,553,1,0,0,0,146,147,5,1,0,0,147,1,1,0,0,0,
      148,151,3,4,2,0,149,151,3,10,5,0,150,148,1,0,0,0,150,149,1,0,0,0,151,
      3,1,0,0,0,152,155,3,6,3,0,153,155,3,8,4,0,154,152,1,0,0,0,154,153,
      1,0,0,0,155,5,1,0,0,0,156,157,7,0,0,0,157,7,1,0,0,0,158,159,7,1,0,
      0,159,9,1,0,0,0,160,163,3,12,6,0,161,163,3,14,7,0,162,160,1,0,0,0,
      162,161,1,0,0,0,163,11,1,0,0,0,164,165,7,2,0,0,165,13,1,0,0,0,166,
      167,7,3,0,0,167,15,1,0,0,0,168,169,7,4,0,0,169,17,1,0,0,0,170,171,
      7,5,0,0,171,19,1,0,0,0,172,173,7,6,0,0,173,21,1,0,0,0,174,175,5,53,
      0,0,175,23,1,0,0,0,176,177,5,53,0,0,177,25,1,0,0,0,178,179,5,53,0,
      0,179,27,1,0,0,0,180,181,5,53,0,0,181,29,1,0,0,0,182,183,5,53,0,0,
      183,31,1,0,0,0,184,185,5,33,0,0,185,186,3,30,15,0,186,33,1,0,0,0,187,
      188,3,24,12,0,188,189,5,34,0,0,189,190,3,22,11,0,190,35,1,0,0,0,191,
      192,5,54,0,0,192,37,1,0,0,0,193,200,3,32,16,0,194,195,3,30,15,0,195,
      196,5,33,0,0,196,197,3,30,15,0,197,200,1,0,0,0,198,200,3,30,15,0,199,
      193,1,0,0,0,199,194,1,0,0,0,199,198,1,0,0,0,200,39,1,0,0,0,201,207,
      3,42,21,0,202,203,3,44,22,0,203,204,3,42,21,0,204,206,1,0,0,0,205,
      202,1,0,0,0,206,209,1,0,0,0,207,205,1,0,0,0,207,208,1,0,0,0,208,210,
      1,0,0,0,209,207,1,0,0,0,210,211,5,0,0,1,211,41,1,0,0,0,212,213,3,56,
      28,0,213,214,3,46,23,0,214,217,1,0,0,0,215,217,3,56,28,0,216,212,1,
      0,0,0,216,215,1,0,0,0,217,43,1,0,0,0,218,221,5,35,0,0,219,221,5,36,
      0,0,220,218,1,0,0,0,220,219,1,0,0,0,221,45,1,0,0,0,222,227,3,48,24,
      0,223,227,3,50,25,0,224,227,3,52,26,0,225,227,3,54,27,0,226,222,1,
      0,0,0,226,223,1,0,0,0,226,224,1,0,0,0,226,225,1,0,0,0,227,47,1,0,0,
      0,228,230,5,37,0,0,229,231,3,36,18,0,230,229,1,0,0,0,230,231,1,0,0,
      0,231,49,1,0,0,0,232,234,7,7,0,0,233,235,3,36,18,0,234,233,1,0,0,0,
      234,235,1,0,0,0,235,51,1,0,0,0,236,238,5,40,0,0,237,239,3,36,18,0,
      238,237,1,0,0,0,238,239,1,0,0,0,239,53,1,0,0,0,240,241,3,36,18,0,241,
      55,1,0,0,0,242,249,3,0,0,0,243,244,3,96,48,0,244,245,3,58,29,0,245,
      249,1,0,0,0,246,249,3,96,48,0,247,249,3,58,29,0,248,242,1,0,0,0,248,
      243,1,0,0,0,248,246,1,0,0,0,248,247,1,0,0,0,249,57,1,0,0,0,250,251,
      3,60,30,0,251,252,3,80,40,0,252,256,1,0,0,0,253,256,3,60,30,0,254,
      256,3,80,40,0,255,250,1,0,0,0,255,253,1,0,0,0,255,254,1,0,0,0,256,
      59,1,0,0,0,257,258,3,74,37,0,258,259,5,41,0,0,259,260,3,62,31,0,260,
      271,1,0,0,0,261,262,3,62,31,0,262,263,5,41,0,0,263,264,3,74,37,0,264,
      271,1,0,0,0,265,266,3,74,37,0,266,267,3,62,31,0,267,271,1,0,0,0,268,
      271,3,62,31,0,269,271,3,74,37,0,270,257,1,0,0,0,270,261,1,0,0,0,270,
      265,1,0,0,0,270,268,1,0,0,0,270,269,1,0,0,0,271,61,1,0,0,0,272,277,
      3,64,32,0,273,274,5,41,0,0,274,276,3,64,32,0,275,273,1,0,0,0,276,279,
      1,0,0,0,277,275,1,0,0,0,277,278,1,0,0,0,278,63,1,0,0,0,279,277,1,0,
      0,0,280,285,3,72,36,0,281,285,3,70,35,0,282,285,3,68,34,0,283,285,
      3,66,33,0,284,280,1,0,0,0,284,281,1,0,0,0,284,282,1,0,0,0,284,283,
      1,0,0,0,285,65,1,0,0,0,286,287,3,2,1,0,287,67,1,0,0,0,288,289,3,2,
      1,0,289,290,5,33,0,0,290,291,3,2,1,0,291,69,1,0,0,0,292,293,3,2,1,
      0,293,294,5,42,0,0,294,299,3,38,19,0,295,296,5,41,0,0,296,298,3,38,
      19,0,297,295,1,0,0,0,298,301,1,0,0,0,299,297,1,0,0,0,299,300,1,0,0,
      0,300,302,1,0,0,0,301,299,1,0,0,0,302,303,5,43,0,0,303,71,1,0,0,0,
      304,305,3,2,1,0,305,306,5,42,0,0,306,311,3,38,19,0,307,308,5,41,0,
      0,308,310,3,38,19,0,309,307,1,0,0,0,310,313,1,0,0,0,311,309,1,0,0,
      0,311,312,1,0,0,0,312,314,1,0,0,0,313,311,1,0,0,0,314,315,5,43,0,0,
      315,316,3,78,39,0,316,73,1,0,0,0,317,322,3,76,38,0,318,319,5,41,0,
      0,319,321,3,76,38,0,320,318,1,0,0,0,321,324,1,0,0,0,322,320,1,0,0,
      0,322,323,1,0,0,0,323,75,1,0,0,0,324,322,1,0,0,0,325,327,5,44,0,0,
      326,328,3,78,39,0,327,326,1,0,0,0,327,328,1,0,0,0,328,334,1,0,0,0,
      329,331,5,45,0,0,330,332,3,78,39,0,331,330,1,0,0,0,331,332,1,0,0,0,
      332,334,1,0,0,0,333,325,1,0,0,0,333,329,1,0,0,0,334,77,1,0,0,0,335,
      336,5,32,0,0,336,339,3,30,15,0,337,339,3,32,16,0,338,335,1,0,0,0,338,
      337,1,0,0,0,339,340,1,0,0,0,340,342,5,46,0,0,341,343,5,47,0,0,342,
      341,1,0,0,0,342,343,1,0,0,0,343,79,1,0,0,0,344,349,3,82,41,0,345,346,
      5,41,0,0,346,348,3,82,41,0,347,345,1,0,0,0,348,351,1,0,0,0,349,347,
      1,0,0,0,349,350,1,0,0,0,350,81,1,0,0,0,351,349,1,0,0,0,352,357,3,88,
      44,0,353,357,3,86,43,0,354,357,3,84,42,0,355,357,3,90,45,0,356,352,
      1,0,0,0,356,353,1,0,0,0,356,354,1,0,0,0,356,355,1,0,0,0,357,83,1,0,
      0,0,358,359,3,92,46,0,359,360,5,33,0,0,360,361,3,92,46,0,361,85,1,
      0,0,0,362,363,3,92,46,0,363,364,5,33,0,0,364,365,3,92,46,0,365,366,
      5,32,0,0,366,87,1,0,0,0,367,368,3,92,46,0,368,369,5,33,0,0,369,370,
      3,92,46,0,370,373,5,48,0,0,371,374,3,34,17,0,372,374,3,30,15,0,373,
      371,1,0,0,0,373,372,1,0,0,0,374,89,1,0,0,0,375,376,3,92,46,0,376,377,
      5,32,0,0,377,91,1,0,0,0,378,381,3,94,47,0,379,381,3,34,17,0,380,378,
      1,0,0,0,380,379,1,0,0,0,381,93,1,0,0,0,382,383,5,49,0,0,383,384,3,
      18,9,0,384,385,3,20,10,0,385,386,3,34,17,0,386,387,5,50,0,0,387,394,
      1,0,0,0,388,389,3,18,9,0,389,390,3,20,10,0,390,391,3,34,17,0,391,394,
      1,0,0,0,392,394,3,18,9,0,393,382,1,0,0,0,393,388,1,0,0,0,393,392,1,
      0,0,0,394,95,1,0,0,0,395,396,3,98,49,0,396,397,3,112,56,0,397,398,
      3,136,68,0,398,418,1,0,0,0,399,400,3,98,49,0,400,401,3,112,56,0,401,
      418,1,0,0,0,402,403,3,98,49,0,403,404,3,136,68,0,404,418,1,0,0,0,405,
      406,3,98,49,0,406,407,3,130,65,0,407,418,1,0,0,0,408,409,3,98,49,0,
      409,410,3,114,57,0,410,418,1,0,0,0,411,418,3,98,49,0,412,413,3,112,
      56,0,413,414,3,136,68,0,414,418,1,0,0,0,415,418,3,112,56,0,416,418,
      3,136,68,0,417,395,1,0,0,0,417,399,1,0,0,0,417,402,1,0,0,0,417,405,
      1,0,0,0,417,408,1,0,0,0,417,411,1,0,0,0,417,412,1,0,0,0,417,415,1,
      0,0,0,417,416,1,0,0,0,418,420,1,0,0,0,419,421,5,34,0,0,420,419,1,0,
      0,0,420,421,1,0,0,0,421,427,1,0,0,0,422,424,3,36,18,0,423,425,5,34,
      0,0,424,423,1,0,0,0,424,425,1,0,0,0,425,427,1,0,0,0,426,417,1,0,0,
      0,426,422,1,0,0,0,427,97,1,0,0,0,428,433,3,100,50,0,429,430,5,41,0,
      0,430,432,3,100,50,0,431,429,1,0,0,0,432,435,1,0,0,0,433,431,1,0,0,
      0,433,434,1,0,0,0,434,99,1,0,0,0,435,433,1,0,0,0,436,442,3,104,52,
      0,437,442,3,102,51,0,438,442,3,108,54,0,439,442,3,110,55,0,440,442,
      3,106,53,0,441,436,1,0,0,0,441,437,1,0,0,0,441,438,1,0,0,0,441,439,
      1,0,0,0,441,440,1,0,0,0,442,101,1,0,0,0,443,444,3,106,53,0,444,445,
      5,33,0,0,445,446,3,106,53,0,446,103,1,0,0,0,447,448,3,102,51,0,448,
      449,5,48,0,0,449,450,3,30,15,0,450,105,1,0,0,0,451,452,5,53,0,0,452,
      107,1,0,0,0,453,454,3,106,53,0,454,455,5,48,0,0,455,456,3,30,15,0,
      456,109,1,0,0,0,457,458,3,106,53,0,458,459,5,32,0,0,459,111,1,0,0,
      0,460,465,3,114,57,0,461,462,5,41,0,0,462,464,3,114,57,0,463,461,1,
      0,0,0,464,467,1,0,0,0,465,463,1,0,0,0,465,466,1,0,0,0,466,113,1,0,
      0,0,467,465,1,0,0,0,468,475,3,126,63,0,469,475,3,124,62,0,470,475,
      3,122,61,0,471,475,3,120,60,0,472,475,3,118,59,0,473,475,3,116,58,
      0,474,468,1,0,0,0,474,469,1,0,0,0,474,470,1,0,0,0,474,471,1,0,0,0,
      474,472,1,0,0,0,474,473,1,0,0,0,475,115,1,0,0,0,476,477,3,16,8,0,477,
      117,1,0,0,0,478,479,3,16,8,0,479,480,5,33,0,0,480,481,3,16,8,0,481,
      119,1,0,0,0,482,483,3,16,8,0,483,484,5,33,0,0,484,485,3,16,8,0,485,
      486,5,48,0,0,486,487,3,30,15,0,487,121,1,0,0,0,488,490,3,130,65,0,
      489,491,3,128,64,0,490,489,1,0,0,0,490,491,1,0,0,0,491,123,1,0,0,0,
      492,494,3,130,65,0,493,495,3,128,64,0,494,493,1,0,0,0,494,495,1,0,
      0,0,495,496,1,0,0,0,496,497,5,32,0,0,497,125,1,0,0,0,498,500,3,130,
      65,0,499,501,3,128,64,0,500,499,1,0,0,0,500,501,1,0,0,0,501,502,1,
      0,0,0,502,503,5,33,0,0,503,505,3,132,66,0,504,506,3,128,64,0,505,504,
      1,0,0,0,505,506,1,0,0,0,506,127,1,0,0,0,507,508,3,20,10,0,508,510,
      3,2,1,0,509,511,3,78,39,0,510,509,1,0,0,0,510,511,1,0,0,0,511,514,
      1,0,0,0,512,514,3,78,39,0,513,507,1,0,0,0,513,512,1,0,0,0,514,129,
      1,0,0,0,515,517,3,106,53,0,516,515,1,0,0,0,516,517,1,0,0,0,517,518,
      1,0,0,0,518,519,3,16,8,0,519,520,3,26,13,0,520,526,1,0,0,0,521,523,
      3,106,53,0,522,521,1,0,0,0,522,523,1,0,0,0,523,524,1,0,0,0,524,526,
      3,134,67,0,525,516,1,0,0,0,525,522,1,0,0,0,526,131,1,0,0,0,527,530,
      3,130,65,0,528,530,3,26,13,0,529,527,1,0,0,0,529,528,1,0,0,0,530,133,
      1,0,0,0,531,532,5,51,0,0,532,135,1,0,0,0,533,534,5,52,0,0,534,539,
      3,138,69,0,535,536,5,41,0,0,536,538,3,138,69,0,537,535,1,0,0,0,538,
      541,1,0,0,0,539,537,1,0,0,0,539,540,1,0,0,0,540,137,1,0,0,0,541,539,
      1,0,0,0,542,546,3,144,72,0,543,546,3,142,71,0,544,546,3,140,70,0,545,
      542,1,0,0,0,545,543,1,0,0,0,545,544,1,0,0,0,546,139,1,0,0,0,547,548,
      3,28,14,0,548,141,1,0,0,0,549,550,3,28,14,0,550,551,5,33,0,0,551,552,
      3,28,14,0,552,143,1,0,0,0,553,554,3,28,14,0,554,555,5,33,0,0,555,556,
      3,28,14,0,556,557,5,48,0,0,557,558,3,30,15,0,558,145,1,0,0,0,49,150,
      154,162,199,207,216,220,226,230,234,238,248,255,270,277,284,299,311,
      322,327,331,333,338,342,349,356,373,380,393,417,420,424,426,433,441,
      465,474,490,494,500,505,510,513,516,522,525,529,539,545
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class C247stringContext extends ParserRuleContext {
  C247stringContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_c247string;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterC247string(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitC247string(this);
  }
}

class CdayoftheweekContext extends ParserRuleContext {
  CworkdaysContext? cworkdays() => getRuleContext<CworkdaysContext>(0);
  CweekendContext? cweekend() => getRuleContext<CweekendContext>(0);
  CdayoftheweekContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cdayoftheweek;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCdayoftheweek(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCdayoftheweek(this);
  }
}

class CworkdaysContext extends ParserRuleContext {
  Cworkdays2lettersContext? cworkdays2letters() => getRuleContext<Cworkdays2lettersContext>(0);
  Cworkdays3lettersContext? cworkdays3letters() => getRuleContext<Cworkdays3lettersContext>(0);
  CworkdaysContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cworkdays;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCworkdays(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCworkdays(this);
  }
}

class Cworkdays2lettersContext extends ParserRuleContext {
  Cworkdays2lettersContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cworkdays2letters;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCworkdays2letters(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCworkdays2letters(this);
  }
}

class Cworkdays3lettersContext extends ParserRuleContext {
  Cworkdays3lettersContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cworkdays3letters;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCworkdays3letters(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCworkdays3letters(this);
  }
}

class CweekendContext extends ParserRuleContext {
  Cweekend2lettersContext? cweekend2letters() => getRuleContext<Cweekend2lettersContext>(0);
  Cweekend3lettersContext? cweekend3letters() => getRuleContext<Cweekend3lettersContext>(0);
  CweekendContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cweekend;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCweekend(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCweekend(this);
  }
}

class Cweekend2lettersContext extends ParserRuleContext {
  Cweekend2lettersContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cweekend2letters;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCweekend2letters(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCweekend2letters(this);
  }
}

class Cweekend3lettersContext extends ParserRuleContext {
  Cweekend3lettersContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cweekend3letters;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCweekend3letters(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCweekend3letters(this);
  }
}

class CmonthContext extends ParserRuleContext {
  CmonthContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cmonth;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCmonth(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCmonth(this);
  }
}

class CsunlighteventContext extends ParserRuleContext {
  CsunlighteventContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_csunlightevent;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCsunlightevent(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCsunlightevent(this);
  }
}

class CoffsetsymbolsContext extends ParserRuleContext {
  CoffsetsymbolsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_coffsetsymbols;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCoffsetsymbols(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCoffsetsymbols(this);
  }
}

class CminuteContext extends ParserRuleContext {
  TerminalNode? NUMBERS() => getToken(ohminParser.TOKEN_NUMBERS, 0);
  CminuteContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cminute;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCminute(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCminute(this);
  }
}

class ChourContext extends ParserRuleContext {
  TerminalNode? NUMBERS() => getToken(ohminParser.TOKEN_NUMBERS, 0);
  ChourContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_chour;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterChour(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitChour(this);
  }
}

class CdayContext extends ParserRuleContext {
  TerminalNode? NUMBERS() => getToken(ohminParser.TOKEN_NUMBERS, 0);
  CdayContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cday;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCday(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCday(this);
  }
}

class CweeknumContext extends ParserRuleContext {
  TerminalNode? NUMBERS() => getToken(ohminParser.TOKEN_NUMBERS, 0);
  CweeknumContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cweeknum;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCweeknum(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCweeknum(this);
  }
}

class Positive_integerContext extends ParserRuleContext {
  TerminalNode? NUMBERS() => getToken(ohminParser.TOKEN_NUMBERS, 0);
  Positive_integerContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_positive_integer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterPositive_integer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitPositive_integer(this);
  }
}

class Negative_integerContext extends ParserRuleContext {
  Positive_integerContext? positive_integer() => getRuleContext<Positive_integerContext>(0);
  Negative_integerContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_negative_integer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterNegative_integer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitNegative_integer(this);
  }
}

class Hh_mmContext extends ParserRuleContext {
  ChourContext? chour() => getRuleContext<ChourContext>(0);
  CminuteContext? cminute() => getRuleContext<CminuteContext>(0);
  Hh_mmContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_hh_mm;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterHh_mm(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitHh_mm(this);
  }
}

class CommentContext extends ParserRuleContext {
  TerminalNode? COMMENT() => getToken(ohminParser.TOKEN_COMMENT, 0);
  CommentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_comment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterComment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitComment(this);
  }
}

class Nth_entryContext extends ParserRuleContext {
  Negative_integerContext? negative_integer() => getRuleContext<Negative_integerContext>(0);
  List<Positive_integerContext> positive_integers() => getRuleContexts<Positive_integerContext>();
  Positive_integerContext? positive_integer(int i) => getRuleContext<Positive_integerContext>(i);
  Nth_entryContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_nth_entry;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterNth_entry(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitNth_entry(this);
  }
}

class Opening_hoursContext extends ParserRuleContext {
  List<Rule_sequenceContext> rule_sequences() => getRuleContexts<Rule_sequenceContext>();
  Rule_sequenceContext? rule_sequence(int i) => getRuleContext<Rule_sequenceContext>(i);
  TerminalNode? EOF() => getToken(ohminParser.TOKEN_EOF, 0);
  List<Rule_separatorContext> rule_separators() => getRuleContexts<Rule_separatorContext>();
  Rule_separatorContext? rule_separator(int i) => getRuleContext<Rule_separatorContext>(i);
  Opening_hoursContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_opening_hours;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterOpening_hours(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitOpening_hours(this);
  }
}

class Rule_sequenceContext extends ParserRuleContext {
  Selector_sequenceContext? selector_sequence() => getRuleContext<Selector_sequenceContext>(0);
  Rule_modifierContext? rule_modifier() => getRuleContext<Rule_modifierContext>(0);
  Rule_sequenceContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rule_sequence;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterRule_sequence(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitRule_sequence(this);
  }
}

class Rule_separatorContext extends ParserRuleContext {
  Rule_separatorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rule_separator;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class Rule_modifierContext extends ParserRuleContext {
  Rule_modifier_openContext? rule_modifier_open() => getRuleContext<Rule_modifier_openContext>(0);
  Rule_modifier_closedContext? rule_modifier_closed() => getRuleContext<Rule_modifier_closedContext>(0);
  Rule_modifier_unknownContext? rule_modifier_unknown() => getRuleContext<Rule_modifier_unknownContext>(0);
  Rule_modifier_commentContext? rule_modifier_comment() => getRuleContext<Rule_modifier_commentContext>(0);
  Rule_modifierContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rule_modifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterRule_modifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitRule_modifier(this);
  }
}

class Rule_modifier_openContext extends ParserRuleContext {
  CommentContext? comment() => getRuleContext<CommentContext>(0);
  Rule_modifier_openContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rule_modifier_open;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterRule_modifier_open(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitRule_modifier_open(this);
  }
}

class Rule_modifier_closedContext extends ParserRuleContext {
  CommentContext? comment() => getRuleContext<CommentContext>(0);
  Rule_modifier_closedContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rule_modifier_closed;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterRule_modifier_closed(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitRule_modifier_closed(this);
  }
}

class Rule_modifier_unknownContext extends ParserRuleContext {
  CommentContext? comment() => getRuleContext<CommentContext>(0);
  Rule_modifier_unknownContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rule_modifier_unknown;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterRule_modifier_unknown(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitRule_modifier_unknown(this);
  }
}

class Rule_modifier_commentContext extends ParserRuleContext {
  CommentContext? comment() => getRuleContext<CommentContext>(0);
  Rule_modifier_commentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rule_modifier_comment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterRule_modifier_comment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitRule_modifier_comment(this);
  }
}

class Selector_sequenceContext extends ParserRuleContext {
  C247stringContext? c247string() => getRuleContext<C247stringContext>(0);
  Wide_range_selectorsContext? wide_range_selectors() => getRuleContext<Wide_range_selectorsContext>(0);
  Small_range_selectorsContext? small_range_selectors() => getRuleContext<Small_range_selectorsContext>(0);
  Selector_sequenceContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_selector_sequence;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterSelector_sequence(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitSelector_sequence(this);
  }
}

class Small_range_selectorsContext extends ParserRuleContext {
  Weekday_selectorContext? weekday_selector() => getRuleContext<Weekday_selectorContext>(0);
  Time_selectorContext? time_selector() => getRuleContext<Time_selectorContext>(0);
  Small_range_selectorsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_small_range_selectors;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterSmall_range_selectors(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitSmall_range_selectors(this);
  }
}

class Weekday_selectorContext extends ParserRuleContext {
  Holiday_sequenceContext? holiday_sequence() => getRuleContext<Holiday_sequenceContext>(0);
  Weekday_sequenceContext? weekday_sequence() => getRuleContext<Weekday_sequenceContext>(0);
  Weekday_selectorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_weekday_selector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeekday_selector(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeekday_selector(this);
  }
}

class Weekday_sequenceContext extends ParserRuleContext {
  List<Weekday_rangesContext> weekday_rangess() => getRuleContexts<Weekday_rangesContext>();
  Weekday_rangesContext? weekday_ranges(int i) => getRuleContext<Weekday_rangesContext>(i);
  Weekday_sequenceContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_weekday_sequence;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeekday_sequence(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeekday_sequence(this);
  }
}

class Weekday_rangesContext extends ParserRuleContext {
  Weekday_ranges_range_nth_offsetContext? weekday_ranges_range_nth_offset() => getRuleContext<Weekday_ranges_range_nth_offsetContext>(0);
  Weekday_ranges_range_nthContext? weekday_ranges_range_nth() => getRuleContext<Weekday_ranges_range_nthContext>(0);
  Weekday_ranges_rangeContext? weekday_ranges_range() => getRuleContext<Weekday_ranges_rangeContext>(0);
  Weekday_ranges_singleContext? weekday_ranges_single() => getRuleContext<Weekday_ranges_singleContext>(0);
  Weekday_rangesContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_weekday_ranges;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeekday_ranges(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeekday_ranges(this);
  }
}

class Weekday_ranges_singleContext extends ParserRuleContext {
  CdayoftheweekContext? cdayoftheweek() => getRuleContext<CdayoftheweekContext>(0);
  Weekday_ranges_singleContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_weekday_ranges_single;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeekday_ranges_single(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeekday_ranges_single(this);
  }
}

class Weekday_ranges_rangeContext extends ParserRuleContext {
  List<CdayoftheweekContext> cdayoftheweeks() => getRuleContexts<CdayoftheweekContext>();
  CdayoftheweekContext? cdayoftheweek(int i) => getRuleContext<CdayoftheweekContext>(i);
  Weekday_ranges_rangeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_weekday_ranges_range;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeekday_ranges_range(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeekday_ranges_range(this);
  }
}

class Weekday_ranges_range_nthContext extends ParserRuleContext {
  CdayoftheweekContext? cdayoftheweek() => getRuleContext<CdayoftheweekContext>(0);
  List<Nth_entryContext> nth_entrys() => getRuleContexts<Nth_entryContext>();
  Nth_entryContext? nth_entry(int i) => getRuleContext<Nth_entryContext>(i);
  Weekday_ranges_range_nthContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_weekday_ranges_range_nth;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeekday_ranges_range_nth(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeekday_ranges_range_nth(this);
  }
}

class Weekday_ranges_range_nth_offsetContext extends ParserRuleContext {
  CdayoftheweekContext? cdayoftheweek() => getRuleContext<CdayoftheweekContext>(0);
  List<Nth_entryContext> nth_entrys() => getRuleContexts<Nth_entryContext>();
  Nth_entryContext? nth_entry(int i) => getRuleContext<Nth_entryContext>(i);
  Day_offsetContext? day_offset() => getRuleContext<Day_offsetContext>(0);
  Weekday_ranges_range_nth_offsetContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_weekday_ranges_range_nth_offset;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeekday_ranges_range_nth_offset(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeekday_ranges_range_nth_offset(this);
  }
}

class Holiday_sequenceContext extends ParserRuleContext {
  List<HolidayContext> holidays() => getRuleContexts<HolidayContext>();
  HolidayContext? holiday(int i) => getRuleContext<HolidayContext>(i);
  Holiday_sequenceContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_holiday_sequence;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterHoliday_sequence(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitHoliday_sequence(this);
  }
}

class HolidayContext extends ParserRuleContext {
  HolidayContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_holiday;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class Day_offsetContext extends ParserRuleContext {
  Negative_integerContext? negative_integer() => getRuleContext<Negative_integerContext>(0);
  Positive_integerContext? positive_integer() => getRuleContext<Positive_integerContext>(0);
  Day_offsetContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_day_offset;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterDay_offset(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitDay_offset(this);
  }
}

class Time_selectorContext extends ParserRuleContext {
  List<TimespanContext> timespans() => getRuleContexts<TimespanContext>();
  TimespanContext? timespan(int i) => getRuleContext<TimespanContext>(i);
  Time_selectorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_time_selector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterTime_selector(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitTime_selector(this);
  }
}

class TimespanContext extends ParserRuleContext {
  Timespan_range_cronContext? timespan_range_cron() => getRuleContext<Timespan_range_cronContext>(0);
  Timespan_range_openendedContext? timespan_range_openended() => getRuleContext<Timespan_range_openendedContext>(0);
  Timespan_rangeContext? timespan_range() => getRuleContext<Timespan_rangeContext>(0);
  Timespan_openendedContext? timespan_openended() => getRuleContext<Timespan_openendedContext>(0);
  TimespanContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_timespan;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterTimespan(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitTimespan(this);
  }
}

class Timespan_rangeContext extends ParserRuleContext {
  List<TimeContext> times() => getRuleContexts<TimeContext>();
  TimeContext? time(int i) => getRuleContext<TimeContext>(i);
  Timespan_rangeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_timespan_range;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterTimespan_range(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitTimespan_range(this);
  }
}

class Timespan_range_openendedContext extends ParserRuleContext {
  List<TimeContext> times() => getRuleContexts<TimeContext>();
  TimeContext? time(int i) => getRuleContext<TimeContext>(i);
  Timespan_range_openendedContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_timespan_range_openended;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterTimespan_range_openended(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitTimespan_range_openended(this);
  }
}

class Timespan_range_cronContext extends ParserRuleContext {
  List<TimeContext> times() => getRuleContexts<TimeContext>();
  TimeContext? time(int i) => getRuleContext<TimeContext>(i);
  Hh_mmContext? hh_mm() => getRuleContext<Hh_mmContext>(0);
  Positive_integerContext? positive_integer() => getRuleContext<Positive_integerContext>(0);
  Timespan_range_cronContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_timespan_range_cron;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterTimespan_range_cron(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitTimespan_range_cron(this);
  }
}

class Timespan_openendedContext extends ParserRuleContext {
  TimeContext? time() => getRuleContext<TimeContext>(0);
  Timespan_openendedContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_timespan_openended;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterTimespan_openended(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitTimespan_openended(this);
  }
}

class TimeContext extends ParserRuleContext {
  Variable_timeContext? variable_time() => getRuleContext<Variable_timeContext>(0);
  Hh_mmContext? hh_mm() => getRuleContext<Hh_mmContext>(0);
  TimeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_time;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterTime(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitTime(this);
  }
}

class Variable_timeContext extends ParserRuleContext {
  CsunlighteventContext? csunlightevent() => getRuleContext<CsunlighteventContext>(0);
  CoffsetsymbolsContext? coffsetsymbols() => getRuleContext<CoffsetsymbolsContext>(0);
  Hh_mmContext? hh_mm() => getRuleContext<Hh_mmContext>(0);
  Variable_timeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variable_time;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterVariable_time(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitVariable_time(this);
  }
}

class Wide_range_selectorsContext extends ParserRuleContext {
  Year_selContext? year_sel() => getRuleContext<Year_selContext>(0);
  Calendarmonth_selectorContext? calendarmonth_selector() => getRuleContext<Calendarmonth_selectorContext>(0);
  Week_selectorContext? week_selector() => getRuleContext<Week_selectorContext>(0);
  Date_fromContext? date_from() => getRuleContext<Date_fromContext>(0);
  Calendarmonth_rangeContext? calendarmonth_range() => getRuleContext<Calendarmonth_rangeContext>(0);
  CommentContext? comment() => getRuleContext<CommentContext>(0);
  Wide_range_selectorsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_wide_range_selectors;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWide_range_selectors(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWide_range_selectors(this);
  }
}

class Year_selContext extends ParserRuleContext {
  List<Year_selectorContext> year_selectors() => getRuleContexts<Year_selectorContext>();
  Year_selectorContext? year_selector(int i) => getRuleContext<Year_selectorContext>(i);
  Year_selContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_year_sel;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterYear_sel(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitYear_sel(this);
  }
}

class Year_selectorContext extends ParserRuleContext {
  Year_selector_range_cronContext? year_selector_range_cron() => getRuleContext<Year_selector_range_cronContext>(0);
  Year_selector_rangeContext? year_selector_range() => getRuleContext<Year_selector_rangeContext>(0);
  Year_selector_single_cronContext? year_selector_single_cron() => getRuleContext<Year_selector_single_cronContext>(0);
  Year_selector_single_openendedContext? year_selector_single_openended() => getRuleContext<Year_selector_single_openendedContext>(0);
  Year_selector_singleContext? year_selector_single() => getRuleContext<Year_selector_singleContext>(0);
  Year_selectorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_year_selector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterYear_selector(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitYear_selector(this);
  }
}

class Year_selector_rangeContext extends ParserRuleContext {
  List<Year_selector_singleContext> year_selector_singles() => getRuleContexts<Year_selector_singleContext>();
  Year_selector_singleContext? year_selector_single(int i) => getRuleContext<Year_selector_singleContext>(i);
  Year_selector_rangeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_year_selector_range;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterYear_selector_range(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitYear_selector_range(this);
  }
}

class Year_selector_range_cronContext extends ParserRuleContext {
  Year_selector_rangeContext? year_selector_range() => getRuleContext<Year_selector_rangeContext>(0);
  Positive_integerContext? positive_integer() => getRuleContext<Positive_integerContext>(0);
  Year_selector_range_cronContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_year_selector_range_cron;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterYear_selector_range_cron(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitYear_selector_range_cron(this);
  }
}

class Year_selector_singleContext extends ParserRuleContext {
  TerminalNode? NUMBERS() => getToken(ohminParser.TOKEN_NUMBERS, 0);
  Year_selector_singleContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_year_selector_single;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterYear_selector_single(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitYear_selector_single(this);
  }
}

class Year_selector_single_cronContext extends ParserRuleContext {
  Year_selector_singleContext? year_selector_single() => getRuleContext<Year_selector_singleContext>(0);
  Positive_integerContext? positive_integer() => getRuleContext<Positive_integerContext>(0);
  Year_selector_single_cronContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_year_selector_single_cron;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterYear_selector_single_cron(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitYear_selector_single_cron(this);
  }
}

class Year_selector_single_openendedContext extends ParserRuleContext {
  Year_selector_singleContext? year_selector_single() => getRuleContext<Year_selector_singleContext>(0);
  Year_selector_single_openendedContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_year_selector_single_openended;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterYear_selector_single_openended(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitYear_selector_single_openended(this);
  }
}

class Calendarmonth_selectorContext extends ParserRuleContext {
  List<Calendarmonth_rangeContext> calendarmonth_ranges() => getRuleContexts<Calendarmonth_rangeContext>();
  Calendarmonth_rangeContext? calendarmonth_range(int i) => getRuleContext<Calendarmonth_rangeContext>(i);
  Calendarmonth_selectorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_calendarmonth_selector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCalendarmonth_selector(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCalendarmonth_selector(this);
  }
}

class Calendarmonth_rangeContext extends ParserRuleContext {
  Calendarmonth_range_from_toContext? calendarmonth_range_from_to() => getRuleContext<Calendarmonth_range_from_toContext>(0);
  Calendarmonth_range_from_openendedContext? calendarmonth_range_from_openended() => getRuleContext<Calendarmonth_range_from_openendedContext>(0);
  Calendarmonth_range_fromContext? calendarmonth_range_from() => getRuleContext<Calendarmonth_range_fromContext>(0);
  Calendarmonth_range_cronContext? calendarmonth_range_cron() => getRuleContext<Calendarmonth_range_cronContext>(0);
  Calendarmonth_range_rangeContext? calendarmonth_range_range() => getRuleContext<Calendarmonth_range_rangeContext>(0);
  Calendarmonth_range_singleContext? calendarmonth_range_single() => getRuleContext<Calendarmonth_range_singleContext>(0);
  Calendarmonth_rangeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_calendarmonth_range;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCalendarmonth_range(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCalendarmonth_range(this);
  }
}

class Calendarmonth_range_singleContext extends ParserRuleContext {
  CmonthContext? cmonth() => getRuleContext<CmonthContext>(0);
  Calendarmonth_range_singleContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_calendarmonth_range_single;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCalendarmonth_range_single(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCalendarmonth_range_single(this);
  }
}

class Calendarmonth_range_rangeContext extends ParserRuleContext {
  List<CmonthContext> cmonths() => getRuleContexts<CmonthContext>();
  CmonthContext? cmonth(int i) => getRuleContext<CmonthContext>(i);
  Calendarmonth_range_rangeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_calendarmonth_range_range;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCalendarmonth_range_range(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCalendarmonth_range_range(this);
  }
}

class Calendarmonth_range_cronContext extends ParserRuleContext {
  List<CmonthContext> cmonths() => getRuleContexts<CmonthContext>();
  CmonthContext? cmonth(int i) => getRuleContext<CmonthContext>(i);
  Positive_integerContext? positive_integer() => getRuleContext<Positive_integerContext>(0);
  Calendarmonth_range_cronContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_calendarmonth_range_cron;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCalendarmonth_range_cron(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCalendarmonth_range_cron(this);
  }
}

class Calendarmonth_range_fromContext extends ParserRuleContext {
  Date_fromContext? date_from() => getRuleContext<Date_fromContext>(0);
  Date_offsetContext? date_offset() => getRuleContext<Date_offsetContext>(0);
  Calendarmonth_range_fromContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_calendarmonth_range_from;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCalendarmonth_range_from(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCalendarmonth_range_from(this);
  }
}

class Calendarmonth_range_from_openendedContext extends ParserRuleContext {
  Date_fromContext? date_from() => getRuleContext<Date_fromContext>(0);
  Date_offsetContext? date_offset() => getRuleContext<Date_offsetContext>(0);
  Calendarmonth_range_from_openendedContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_calendarmonth_range_from_openended;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCalendarmonth_range_from_openended(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCalendarmonth_range_from_openended(this);
  }
}

class Calendarmonth_range_from_toContext extends ParserRuleContext {
  Date_fromContext? date_from() => getRuleContext<Date_fromContext>(0);
  Date_toContext? date_to() => getRuleContext<Date_toContext>(0);
  List<Date_offsetContext> date_offsets() => getRuleContexts<Date_offsetContext>();
  Date_offsetContext? date_offset(int i) => getRuleContext<Date_offsetContext>(i);
  Calendarmonth_range_from_toContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_calendarmonth_range_from_to;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterCalendarmonth_range_from_to(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitCalendarmonth_range_from_to(this);
  }
}

class Date_offsetContext extends ParserRuleContext {
  CoffsetsymbolsContext? coffsetsymbols() => getRuleContext<CoffsetsymbolsContext>(0);
  CdayoftheweekContext? cdayoftheweek() => getRuleContext<CdayoftheweekContext>(0);
  Day_offsetContext? day_offset() => getRuleContext<Day_offsetContext>(0);
  Date_offsetContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_date_offset;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterDate_offset(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitDate_offset(this);
  }
}

class Date_fromContext extends ParserRuleContext {
  CmonthContext? cmonth() => getRuleContext<CmonthContext>(0);
  CdayContext? cday() => getRuleContext<CdayContext>(0);
  Year_selector_singleContext? year_selector_single() => getRuleContext<Year_selector_singleContext>(0);
  Moveable_holidaysContext? moveable_holidays() => getRuleContext<Moveable_holidaysContext>(0);
  Date_fromContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_date_from;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterDate_from(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitDate_from(this);
  }
}

class Date_toContext extends ParserRuleContext {
  Date_fromContext? date_from() => getRuleContext<Date_fromContext>(0);
  CdayContext? cday() => getRuleContext<CdayContext>(0);
  Date_toContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_date_to;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterDate_to(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitDate_to(this);
  }
}

class Moveable_holidaysContext extends ParserRuleContext {
  Moveable_holidaysContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_moveable_holidays;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterMoveable_holidays(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitMoveable_holidays(this);
  }
}

class Week_selectorContext extends ParserRuleContext {
  List<WeekContext> weeks() => getRuleContexts<WeekContext>();
  WeekContext? week(int i) => getRuleContext<WeekContext>(i);
  Week_selectorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_week_selector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeek_selector(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeek_selector(this);
  }
}

class WeekContext extends ParserRuleContext {
  Week_range_cronContext? week_range_cron() => getRuleContext<Week_range_cronContext>(0);
  Week_rangeContext? week_range() => getRuleContext<Week_rangeContext>(0);
  Week_singleContext? week_single() => getRuleContext<Week_singleContext>(0);
  WeekContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_week;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeek(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeek(this);
  }
}

class Week_singleContext extends ParserRuleContext {
  CweeknumContext? cweeknum() => getRuleContext<CweeknumContext>(0);
  Week_singleContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_week_single;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeek_single(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeek_single(this);
  }
}

class Week_rangeContext extends ParserRuleContext {
  List<CweeknumContext> cweeknums() => getRuleContexts<CweeknumContext>();
  CweeknumContext? cweeknum(int i) => getRuleContext<CweeknumContext>(i);
  Week_rangeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_week_range;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeek_range(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeek_range(this);
  }
}

class Week_range_cronContext extends ParserRuleContext {
  List<CweeknumContext> cweeknums() => getRuleContexts<CweeknumContext>();
  CweeknumContext? cweeknum(int i) => getRuleContext<CweeknumContext>(i);
  Positive_integerContext? positive_integer() => getRuleContext<Positive_integerContext>(0);
  Week_range_cronContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_week_range_cron;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterWeek_range_cron(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitWeek_range_cron(this);
  }
}

class Rule_separator_normalContext extends Rule_separatorContext {
  Rule_separator_normalContext(Rule_separatorContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterRule_separator_normal(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitRule_separator_normal(this);
  }
}

class Rule_separator_fallbackContext extends Rule_separatorContext {
  Rule_separator_fallbackContext(Rule_separatorContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterRule_separator_fallback(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitRule_separator_fallback(this);
  }
}class Singular_day_holidayContext extends HolidayContext {
  Day_offsetContext? day_offset() => getRuleContext<Day_offsetContext>(0);
  Singular_day_holidayContext(HolidayContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterSingular_day_holiday(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitSingular_day_holiday(this);
  }
}

class Plural_day_holidayContext extends HolidayContext {
  Day_offsetContext? day_offset() => getRuleContext<Day_offsetContext>(0);
  Plural_day_holidayContext(HolidayContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.enterPlural_day_holiday(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ohminListener) listener.exitPlural_day_holiday(this);
  }
}