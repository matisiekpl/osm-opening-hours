import 'package:osm_opening_hours/osm_opening_hours.dart';

void main() {
  final samples = <String>[
    'Mo-Fr 09:00-17:00; Sa 10:00-14:00',
    '24/7',
    'Apr-Sep: Mo-Fr 09:00-13:00,14:00-18:00; Oct-Mar: Mo-Fr 10:00-16:00',
    'mo-fr 9:00-17:00',
    'Mo-Fr 09:00-17:00||"by appointment"',
    'garbage input',
  ];

  for (final value in samples) {
    final valid = OsmOpeningHours.check(value);
    print('input:   $value');
    print('check:   $valid');
    try {
      print('align:   ${OsmOpeningHours.align(value)}');
    } on FormatException catch (error) {
      print('align:   <FormatException: ${error.message}>');
    }
    print('');
  }
}
