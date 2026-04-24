import 'package:osm_opening_hours/osm_opening_hours.dart';
import 'package:test/test.dart';

void main() {
  group('check - basic time ranges', () {
    test('simple time range', () {
      expect(OsmOpeningHours.check('09:00-17:00'), isTrue);
    });

    test('weekday range with time', () {
      expect(OsmOpeningHours.check('Mo-Fr 09:00-17:00'), isTrue);
    });

    test('individual weekdays', () {
      expect(OsmOpeningHours.check('Mo,We,Fr 09:00-17:00'), isTrue);
    });

    test('weekday with split hours', () {
      expect(
        OsmOpeningHours.check('Mo-Fr 09:00-12:00,13:00-17:00'),
        isTrue,
      );
    });

    test('multiple rules', () {
      expect(
        OsmOpeningHours.check('Mo-Fr 09:00-17:00; Sa 10:00-14:00'),
        isTrue,
      );
    });

    test('three rules with off', () {
      expect(
        OsmOpeningHours.check(
          'Mo-Fr 09:00-17:00; Sa 10:00-14:00; Su off',
        ),
        isTrue,
      );
    });

    test('24/7 alone', () {
      expect(OsmOpeningHours.check('24/7'), isTrue);
    });

    test('24/7 with comment', () {
      expect(OsmOpeningHours.check('24/7 "holidays"'), isTrue);
    });

    test('single day', () {
      expect(OsmOpeningHours.check('Mo 09:00-17:00'), isTrue);
    });

    test('all seven days short', () {
      expect(
        OsmOpeningHours.check('Mo-Su 00:00-24:00'),
        isTrue,
      );
    });
  });

  group('check - time features', () {
    test('extended end hour', () {
      expect(OsmOpeningHours.check('20:00-26:00'), isTrue);
    });

    test('crossing midnight', () {
      expect(OsmOpeningHours.check('20:00-02:00'), isTrue);
    });

    test('open-ended time', () {
      expect(OsmOpeningHours.check('18:00+'), isTrue);
    });

    test('sunrise to sunset', () {
      expect(OsmOpeningHours.check('sunrise-sunset'), isTrue);
    });

    test('variable times with offsets', () {
      expect(
        OsmOpeningHours.check('(sunrise+01:00)-(sunset-01:00)'),
        isTrue,
      );
    });

    test('dawn to dusk', () {
      expect(OsmOpeningHours.check('dawn-dusk'), isTrue);
    });

    test('time range with repeat minutes', () {
      expect(
        OsmOpeningHours.check('Mo-Fr 10:00-20:00/30'),
        isTrue,
      );
    });

    test('time range with repeat hour_minutes', () {
      expect(
        OsmOpeningHours.check('Mo-Fr 10:00-20:00/01:30'),
        isTrue,
      );
    });

    test('open-ended after range', () {
      expect(OsmOpeningHours.check('09:00-18:00+'), isTrue);
    });

    test('max extended hour 48', () {
      expect(OsmOpeningHours.check('00:00-48:00'), isTrue);
    });

    test('24:00 as end', () {
      expect(OsmOpeningHours.check('09:00-24:00'), isTrue);
    });
  });

  group('check - date features', () {
    test('month range', () {
      expect(OsmOpeningHours.check('Jan-Mar 10:00-16:00'), isTrue);
    });

    test('month range with weekday and time', () {
      expect(
        OsmOpeningHours.check('Apr-Oct Mo-Fr 09:00-18:00'),
        isTrue,
      );
    });

    test('single date off', () {
      expect(OsmOpeningHours.check('Dec 25 off'), isTrue);
    });

    test('date range with daynum-only end', () {
      expect(OsmOpeningHours.check('Dec 24-26 off'), isTrue);
    });

    test('date range spanning year boundary', () {
      expect(OsmOpeningHours.check('Dec 25-Jan 06 off'), isTrue);
    });

    test('easter with day shift', () {
      expect(OsmOpeningHours.check('easter -2 days off'), isTrue);
    });

    test('easter with positive day shift', () {
      expect(OsmOpeningHours.check('easter +49 days off'), isTrue);
    });

    test('single month', () {
      expect(OsmOpeningHours.check('Jul 10:00-16:00'), isTrue);
    });

    test('single month with 24 hours end', () {
      expect(OsmOpeningHours.check('Jul 00:00-24:00'), isTrue);
    });
  });

  group('check - year and week', () {
    test('year with date off', () {
      expect(OsmOpeningHours.check('2024 Jan 01 off'), isTrue);
    });

    test('year range with weekday time', () {
      expect(
        OsmOpeningHours.check('2020-2030 Mo-Fr 09:00-17:00'),
        isTrue,
      );
    });

    test('year open-ended', () {
      expect(
        OsmOpeningHours.check('2024+ Mo-Fr 09:00-17:00'),
        isTrue,
      );
    });

    test('year list', () {
      expect(
        OsmOpeningHours.check(
          '2024,2025 Mo-Fr 09:00-17:00',
        ),
        isTrue,
      );
    });

    test('year range with periodicity', () {
      expect(
        OsmOpeningHours.check(
          '2020-2030/2 Mo-Fr 09:00-17:00',
        ),
        isTrue,
      );
    });

    test('week range with weekday time', () {
      expect(
        OsmOpeningHours.check('week 01-10 Mo-Fr 09:00-17:00'),
        isTrue,
      );
    });

    test('week with periodicity', () {
      expect(
        OsmOpeningHours.check(
          'week 01-53/2 Mo-Fr 09:00-17:00',
        ),
        isTrue,
      );
    });

    test('week list', () {
      expect(
        OsmOpeningHours.check('week 25,30,52 Mo-Fr 09:00-17:00'),
        isTrue,
      );
    });

    test('single week', () {
      expect(OsmOpeningHours.check('week 25 Mo-Fr 09:00-17:00'),
          isTrue);
    });
  });

  group('check - nth weekday', () {
    test('first sunday', () {
      expect(OsmOpeningHours.check('Su[1] 10:00-14:00'), isTrue);
    });

    test('last sunday', () {
      expect(OsmOpeningHours.check('Su[-1] off'), isTrue);
    });

    test('multiple nth', () {
      expect(
        OsmOpeningHours.check('Su[1,3,5] 10:00-14:00'),
        isTrue,
      );
    });

    test('nth range', () {
      expect(
        OsmOpeningHours.check('Su[1-3] 10:00-14:00'),
        isTrue,
      );
    });

    test('nth with day offset', () {
      expect(
        OsmOpeningHours.check('Su[1] +1 days off'),
        isTrue,
      );
    });

    test('multiple negative nth', () {
      expect(
        OsmOpeningHours.check('Su[-1,-2] off'),
        isTrue,
      );
    });
  });

  group('check - holidays', () {
    test('PH off', () {
      expect(OsmOpeningHours.check('PH off'), isTrue);
    });

    test('PH with day shift', () {
      expect(OsmOpeningHours.check('PH +1 days off'), isTrue);
    });

    test('SH with weekday time', () {
      expect(
        OsmOpeningHours.check('SH Mo-Fr 09:00-17:00'),
        isTrue,
      );
    });

    test('PH followed by weekdays', () {
      expect(
        OsmOpeningHours.check('PH,Mo-Fr 09:00-17:00'),
        isTrue,
      );
    });

    test('weekdays followed by PH', () {
      expect(
        OsmOpeningHours.check('Mo-Fr,PH 09:00-17:00'),
        isTrue,
      );
    });

    test('SH off', () {
      expect(OsmOpeningHours.check('SH off'), isTrue);
    });

    test('PH Mo-Fr space separated', () {
      expect(
        OsmOpeningHours.check('PH Mo-Fr 09:00-17:00'),
        isTrue,
      );
    });
  });

  group('check - modifiers and comments', () {
    test('fallback with comment', () {
      expect(
        OsmOpeningHours.check(
          'Mo-Fr 09:00-17:00 || "by appointment"',
        ),
        isTrue,
      );
    });

    test('open modifier with comment', () {
      expect(
        OsmOpeningHours.check(
          'Mo-Fr 09:00-17:00 open "regular hours"',
        ),
        isTrue,
      );
    });

    test('comment-only rule', () {
      expect(
        OsmOpeningHours.check('"by appointment"'),
        isTrue,
      );
    });

    test('closed modifier', () {
      expect(
        OsmOpeningHours.check('Mo-Fr 09:00-17:00; Sa closed'),
        isTrue,
      );
    });

    test('unknown modifier', () {
      expect(OsmOpeningHours.check('Mo-Fr 09:00-17:00 unknown'),
          isTrue);
    });

    test('comment as modifier', () {
      expect(
        OsmOpeningHours.check(
          'Mo-Fr 09:00-17:00 "business hours"; Sa closed',
        ),
        isTrue,
      );
    });
  });

  group('check - real-world examples', () {
    test('saturday short', () {
      expect(OsmOpeningHours.check('Mo-Sa 10:00-20:00'), isTrue);
    });

    test('weekday range with Tu off', () {
      expect(
        OsmOpeningHours.check('Mo-Sa 08:00-18:00; Tu off'),
        isTrue,
      );
    });

    test('seasonal schedule with colon readability', () {
      expect(
        OsmOpeningHours.check(
          'Apr-Sep: Mo-Fr 09:00-13:00,14:00-18:00; '
          'Oct-Mar: Mo-Fr 10:00-16:00',
        ),
        isTrue,
      );
    });

    test('complex seasonal with holidays', () {
      expect(
        OsmOpeningHours.check(
          'Mo-Fr 09:00-17:00; Sa 10:00-14:00; Su,PH off',
        ),
        isTrue,
      );
    });
  });

  group('check - invalid inputs', () {
    test('empty string', () {
      expect(OsmOpeningHours.check(''), isFalse);
    });

    test('whitespace only', () {
      expect(OsmOpeningHours.check('   '), isFalse);
    });

    test('no colons in time', () {
      expect(OsmOpeningHours.check('0900-1700'), isFalse);
    });

    test('single-digit hour in strict', () {
      expect(
        OsmOpeningHours.check('Mo-Fr 9:00-17:00'),
        isFalse,
      );
    });

    test('dots instead of colons', () {
      expect(OsmOpeningHours.check('08.00-16.00'), isFalse);
    });

    test('slash format', () {
      expect(OsmOpeningHours.check('7/8-23'), isFalse);
    });

    test('start hour 25 invalid', () {
      expect(OsmOpeningHours.check('25:00-26:00'), isFalse);
    });

    test('minute > 59', () {
      expect(OsmOpeningHours.check('10:60-11:00'), isFalse);
    });

    test('hour > 48 at end', () {
      expect(OsmOpeningHours.check('09:00-49:00'), isFalse);
    });

    test('invalid weekday', () {
      expect(
        OsmOpeningHours.check('Mo-Foo 09:00-17:00'),
        isFalse,
      );
    });

    test('invalid month', () {
      expect(
        OsmOpeningHours.check('Jan-Foo 09:00-17:00'),
        isFalse,
      );
    });

    test('lowercase in strict', () {
      expect(
        OsmOpeningHours.check('mo-fr 09:00-17:00'),
        isFalse,
      );
    });

    test('unclosed comment', () {
      expect(OsmOpeningHours.check('"unclosed'), isFalse);
    });

    test('unbalanced paren', () {
      expect(
        OsmOpeningHours.check('(sunrise+01:00'),
        isFalse,
      );
    });

    test('wrong separator slash', () {
      expect(
        OsmOpeningHours.check('Mo-Fr 09:00-17:00 / Sa 10:00-14:00'),
        isFalse,
      );
    });

    test('double comma', () {
      expect(
        OsmOpeningHours.check('Mo-Fr 09:00-17:00,,Sa'),
        isFalse,
      );
    });

    test('garbage input', () {
      expect(OsmOpeningHours.check('random garbage'), isFalse);
    });

    test('missing end time', () {
      expect(OsmOpeningHours.check('Mo-Fr 09:00-'), isFalse);
    });

    test('missing start time', () {
      expect(OsmOpeningHours.check('-09:00'), isFalse);
    });

    test('week > 53', () {
      expect(
        OsmOpeningHours.check('week 54 Mo-Fr 09:00-17:00'),
        isFalse,
      );
    });

    test('daynum > 31', () {
      expect(OsmOpeningHours.check('Dec 32 off'), isFalse);
    });

    test('year < 1900', () {
      expect(
        OsmOpeningHours.check('1899 Mo-Fr 09:00-17:00'),
        isFalse,
      );
    });

    test('easter +0 days zero count', () {
      expect(
        OsmOpeningHours.check('easter +0 days off'),
        isFalse,
      );
    });

    test('weekday then PH via space', () {
      expect(
        OsmOpeningHours.check('Mo-Fr PH 09:00-17:00'),
        isFalse,
      );
    });

    test('fallback without surrounding spaces in strict', () {
      expect(
        OsmOpeningHours.check(
          'Mo-Fr 09:00-17:00||"by appointment"',
        ),
        isFalse,
      );
    });

    test('space around dash in weekday in strict', () {
      expect(
        OsmOpeningHours.check('Mo - Fr 09:00-17:00'),
        isFalse,
      );
    });

    test('trailing garbage', () {
      expect(
        OsmOpeningHours.check('Mo-Fr 09:00-17:00 foo'),
        isFalse,
      );
    });

    test('just dash', () {
      expect(OsmOpeningHours.check('-'), isFalse);
    });

    test('just colon', () {
      expect(OsmOpeningHours.check(':'), isFalse);
    });

    test('just semicolon', () {
      expect(OsmOpeningHours.check(';'), isFalse);
    });

    test('only comment then separator then nothing', () {
      expect(OsmOpeningHours.check('"x"; '), isFalse);
    });

    test('single digit daynum strict', () {
      expect(OsmOpeningHours.check('Dec 5 off'), isFalse);
    });

    test('nth zero', () {
      expect(OsmOpeningHours.check('Su[0] off'), isFalse);
    });

    test('nth six', () {
      expect(OsmOpeningHours.check('Su[6] off'), isFalse);
    });

    test('week zero', () {
      expect(
        OsmOpeningHours.check('week 00 Mo-Fr 09:00-17:00'),
        isFalse,
      );
    });
  });
}
