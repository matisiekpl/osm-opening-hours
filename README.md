# osm_opening_hours

Strict validator for [OpenStreetMap `opening_hours`](https://wiki.openstreetmap.org/wiki/Key:opening_hours) tag values.

Implements the full EBNF grammar from the [opening_hours specification](https://wiki.openstreetmap.org/wiki/Key:opening_hours/specification) using an ANTLR4-generated parser, plus semantic checks for numeric ranges (hours, minutes, days, weeks, years, nth-of-month) that grammars alone cannot enforce.

## Installation

```sh
dart pub add osm_opening_hours
```

## Usage

```dart
import 'package:osm_opening_hours/osm_opening_hours.dart';

void main() {
  OsmOpeningHours.check('Mo-Fr 09:00-17:00');          // true
  OsmOpeningHours.check('24/7');                        // true
  OsmOpeningHours.check('Mo-Fr 09:00-17:00 || "by appointment"'); // true

  OsmOpeningHours.check('mo-fr 9:00-17:00');            // false (strict casing and padding)
  OsmOpeningHours.check('Mo-Fr 25:00-30:00');           // false (hour out of range)
  OsmOpeningHours.check('garbage');                     // false
}
```

See `example/osm_opening_hours_example.dart` for a runnable sample.
