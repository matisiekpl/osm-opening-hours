import 'package:osm_opening_hours/osm_opening_hours.dart';
import 'package:test/test.dart';

void main() {
  group('OsmOpeningHours smoke test', () {
    test('check accepts a valid value', () {
      expect(OsmOpeningHours.check('Mo-Fr 09:00-17:00'), isTrue);
    });

    test('check rejects an invalid value', () {
      expect(OsmOpeningHours.check('nonsense'), isFalse);
    });

    test('align returns canonical form', () {
      expect(
        OsmOpeningHours.align('mo-fr 9:00-17:00'),
        equals('Mo-Fr 09:00-17:00'),
      );
    });
  });
}
