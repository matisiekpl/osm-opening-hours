import 'package:antlr4/antlr4.dart';

import 'generated/ohminBaseListener.dart';
import 'generated/ohminLexer.dart';
import 'generated/ohminParser.dart';

class _Invalid implements Exception {
  const _Invalid();
}

class _ThrowingErrorListener extends BaseErrorListener {
  @override
  void syntaxError(
    Recognizer<ATNSimulator> recognizer,
    Object? offendingSymbol,
    int? line,
    int? charPositionInLine,
    String msg,
    RecognitionException? e,
  ) {
    throw const _Invalid();
  }
}

class _SemanticValidator extends ohminBaseListener {
  @override
  void enterPositive_integer(Positive_integerContext ctx) {
    final text = ctx.NUMBERS()?.text;
    if (text == null) throw const _Invalid();
    if (int.parse(text) < 1) throw const _Invalid();
  }

  @override
  void enterCminute(CminuteContext ctx) {
    _checkDigits(ctx.NUMBERS()?.text, 2, min: 0, max: 59, label: 'minute');
  }

  @override
  void enterCday(CdayContext ctx) {
    _checkDigits(ctx.NUMBERS()?.text, 2, min: 1, max: 31, label: 'day');
  }

  @override
  void enterCweeknum(CweeknumContext ctx) {
    _checkDigits(ctx.NUMBERS()?.text, 2, min: 1, max: 53, label: 'week');
  }

  @override
  void enterChour(ChourContext ctx) {
    _checkDigits(ctx.NUMBERS()?.text, 2, min: 0, max: 48, label: 'hour');
  }

  @override
  void enterYear_selector_single(Year_selector_singleContext ctx) {
    _checkDigits(ctx.NUMBERS()?.text, 4, min: 1900, max: 9999, label: 'year');
  }

  @override
  void enterNth_entry(Nth_entryContext ctx) {
    for (final pi in ctx.positive_integers()) {
      _checkRange(pi.NUMBERS()?.text, min: 1, max: 5, label: 'nth');
    }
    final negative = ctx.negative_integer();
    if (negative != null) {
      _checkRange(
        negative.positive_integer()?.NUMBERS()?.text,
        min: 1,
        max: 5,
        label: 'nth',
      );
    }
  }

  @override
  void enterTimespan_range(Timespan_rangeContext ctx) {
    _checkStart(ctx.times());
  }

  @override
  void enterTimespan_range_openended(Timespan_range_openendedContext ctx) {
    _checkStart(ctx.times());
  }

  @override
  void enterTimespan_range_cron(Timespan_range_cronContext ctx) {
    _checkStart(ctx.times());
  }

  @override
  void enterTimespan_openended(Timespan_openendedContext ctx) {
    final time = ctx.time();
    if (time != null) _checkStartHour(time);
  }

  void _checkStart(List<TimeContext> times) {
    if (times.isEmpty) return;
    _checkStartHour(times.first);
  }

  void _checkStartHour(TimeContext ctx) {
    final hhmm = ctx.hh_mm();
    if (hhmm == null) return;
    final text = hhmm.chour()?.NUMBERS()?.text;
    if (text == null || text.length != 2) return;
    final value = int.parse(text);
    if (value > 24) throw const _Invalid();
  }

  void _checkDigits(
    String? text,
    int expectedLength, {
    required int min,
    required int max,
    required String label,
  }) {
    if (text == null) throw const _Invalid();
    if (text.length != expectedLength) throw const _Invalid();
    final value = int.parse(text);
    if (value < min || value > max) throw const _Invalid();
  }

  void _checkRange(
    String? text, {
    required int min,
    required int max,
    required String label,
  }) {
    if (text == null) throw const _Invalid();
    final value = int.parse(text);
    if (value < min || value > max) throw const _Invalid();
  }
}

class OsmOpeningHours {
  const OsmOpeningHours._();

  static bool check(String input) {
    if (input.isEmpty) return false;
    try {
      final charStream = InputStream.fromString(input);
      final lexer = ohminLexer(charStream);
      lexer.removeErrorListeners();
      lexer.addErrorListener(_ThrowingErrorListener());

      final tokens = CommonTokenStream(lexer);
      final parser = ohminParser(tokens);
      parser.removeErrorListeners();
      parser.addErrorListener(_ThrowingErrorListener());
      parser.errorHandler = BailErrorStrategy();

      final tree = parser.opening_hours();
      ParseTreeWalker.DEFAULT.walk(_SemanticValidator(), tree);
      return true;
    } catch (_) {
      return false;
    }
  }
}
