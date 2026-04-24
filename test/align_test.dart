import 'package:osm_opening_hours/osm_opening_hours.dart';
import 'package:test/test.dart';

void main() {
  group('align - case normalization', () {
    test('lowercase weekdays', () {
      expect(
        OsmOpeningHours.align('mo-fr 09:00-17:00'),
        equals('Mo-Fr 09:00-17:00'),
      );
    });

    test('uppercase weekdays', () {
      expect(
        OsmOpeningHours.align('MO-FR 09:00-17:00'),
        equals('Mo-Fr 09:00-17:00'),
      );
    });

    test('lowercase months', () {
      expect(
        OsmOpeningHours.align('jan-mar 09:00-17:00'),
        equals('Jan-Mar 09:00-17:00'),
      );
    });

    test('mixed case weekday list', () {
      expect(
        OsmOpeningHours.align('mo,WE,Fr 09:00-17:00'),
        equals('Mo,We,Fr 09:00-17:00'),
      );
    });

    test('uppercase PH', () {
      expect(
        OsmOpeningHours.align('ph off'),
        equals('PH off'),
      );
    });
  });

  group('align - digit padding', () {
    test('single-digit start hour', () {
      expect(
        OsmOpeningHours.align('Mo-Fr 9:00-17:00'),
        equals('Mo-Fr 09:00-17:00'),
      );
    });

    test('single-digit start and end hours', () {
      expect(
        OsmOpeningHours.align('Mo-Fr 9:00-9:30'),
        equals('Mo-Fr 09:00-09:30'),
      );
    });

    test('already padded', () {
      expect(
        OsmOpeningHours.align('Mo-Fr 09:00-09:30'),
        equals('Mo-Fr 09:00-09:30'),
      );
    });
  });

  group('align - whitespace normalization', () {
    test('missing space after semicolon', () {
      expect(
        OsmOpeningHours.align('Mo-Fr 09:00-17:00;Sa 10:00-14:00'),
        equals('Mo-Fr 09:00-17:00; Sa 10:00-14:00'),
      );
    });

    test('extra spaces around weekday dash', () {
      expect(
        OsmOpeningHours.align('Mo  -  Fr   09:00-17:00'),
        equals('Mo-Fr 09:00-17:00'),
      );
    });

    test('trimmed input', () {
      expect(
        OsmOpeningHours.align(' 24/7 '),
        equals('24/7'),
      );
    });

    test('fallback with no surrounding spaces', () {
      expect(
        OsmOpeningHours.align('Mo-Fr 09:00-17:00||"by appointment"'),
        equals('Mo-Fr 09:00-17:00 || "by appointment"'),
      );
    });

    test('leading and trailing whitespace', () {
      expect(
        OsmOpeningHours.align('   Mo-Fr 09:00-17:00   '),
        equals('Mo-Fr 09:00-17:00'),
      );
    });

    test('extra spaces around month dash', () {
      expect(
        OsmOpeningHours.align('Apr - Oct Mo-Fr 09:00-17:00'),
        equals('Apr-Oct Mo-Fr 09:00-17:00'),
      );
    });
  });

  group('align - modifier casing', () {
    test('open uppercase', () {
      expect(
        OsmOpeningHours.align('Mo-Fr 09:00-17:00 OPEN'),
        equals('Mo-Fr 09:00-17:00 open'),
      );
    });

    test('off uppercase', () {
      expect(
        OsmOpeningHours.align('PH OFF'),
        equals('PH off'),
      );
    });

    test('closed mixed case', () {
      expect(
        OsmOpeningHours.align('Mo-Fr 09:00-17:00; Sa Closed'),
        equals('Mo-Fr 09:00-17:00; Sa closed'),
      );
    });
  });

  group('align - idempotent canonical forms', () {
    for (final canonical in const [
      'Mo-Fr 09:00-17:00',
      '24/7',
      'PH off',
      'Mo-Fr 09:00-17:00; Sa 10:00-14:00',
      'Jan-Mar 10:00-16:00',
      'Dec 25 off',
      'easter -2 days off',
      '2024 Jan 01 off',
      'week 01-10 Mo-Fr 09:00-17:00',
      'Su[1] 10:00-14:00',
      'Mo-Fr 09:00-17:00 || "by appointment"',
      'sunrise-sunset',
      '(sunrise+01:00)-(sunset-01:00)',
      'Mo-Fr 10:00-20:00/30',
      'Mo-Fr 09:00-12:00,13:00-17:00',
      '20:00-26:00',
    ]) {
      test('canonical unchanged: $canonical', () {
        expect(OsmOpeningHours.align(canonical), equals(canonical));
      });

      test('double-align idempotent: $canonical', () {
        final once = OsmOpeningHours.align(canonical);
        expect(OsmOpeningHours.align(once), equals(once));
      });
    }
  });

  group('align - unparseable input throws', () {
    test('garbage throws FormatException', () {
      expect(
        () => OsmOpeningHours.align('complete garbage !!!'),
        throwsFormatException,
      );
    });

    test('empty input throws FormatException', () {
      expect(
        () => OsmOpeningHours.align(''),
        throwsFormatException,
      );
    });

    test('unclosed comment throws FormatException', () {
      expect(
        () => OsmOpeningHours.align('"unclosed'),
        throwsFormatException,
      );
    });

    test('FormatException carries original source', () {
      try {
        OsmOpeningHours.align('complete garbage !!!');
        fail('expected FormatException');
      } on FormatException catch (error) {
        expect(error.source, equals('complete garbage !!!'));
      }
    });
  });

  group('align - roundtrip through check', () {
    for (final input in const [
      'mo-fr 9:00-17:00',
      'MO-FR 09:00-17:00',
      'Mo-Fr 09:00-17:00;Sa 10:00-14:00',
      ' 24/7 ',
      'ph off',
      'Mo-Fr 09:00-17:00||"by appointment"',
    ]) {
      test('aligned output passes check: $input', () {
        final aligned = OsmOpeningHours.align(input);
        expect(OsmOpeningHours.check(aligned), isTrue);
      });
    }
  });
}
