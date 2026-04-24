import 'package:osm_opening_hours/osm_opening_hours.dart';

void main() {
  final samples = <String>[
    'Mo-Fr 09:00-17:00; Sa 10:00-14:00',
    '24/7',
    'Mo-Fr 09:00-17:00 || "by appointment"',
    'garbage input',
  ];

  for (final value in samples) {
    print('$value -> ${OsmOpeningHours.check(value)}');
  }
}
