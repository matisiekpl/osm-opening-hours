import 'parser.dart';

class OsmOpeningHours {
  const OsmOpeningHours._();

  static bool check(String input) {
    try {
      OpeningHoursParser(input).parse();
      return true;
    } on ParseException {
      return false;
    }
  }

  static String align(String input) {
    try {
      final domain =
          OpeningHoursParser(input.trim(), lenient: true).parse();
      return domain.format();
    } on ParseException catch (error) {
      throw FormatException(error.message, input, error.position);
    }
  }
}
