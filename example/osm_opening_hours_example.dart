import 'package:osm_opening_hours/osm_opening_hours.dart';

void main() {
  final samples = <String>[
    'Mo-Fr 09:00-17:00; Sa 10:00-14:00',
    '24/7',
    'Mo-Fr 09:00-17:00 || "by appointment"',
    'Apr-Sep Mo-Fr 09:00-17:00',
    'Su[1] 10:00-14:00',
    'sunrise-sunset',
    'mo-fr 9:00-17:00',
    'Mo-Fr 25:00-30:00',
    'garbage input',
  ];

  for (final value in samples) {
    final valid = OsmOpeningHours.check(value);
    print('${valid ? 'OK  ' : 'FAIL'}  $value');
  }
}
