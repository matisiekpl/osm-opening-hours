# osm_opening_hours

Validation and canonical formatting for [OpenStreetMap `opening_hours`](https://wiki.openstreetmap.org/wiki/Key:opening_hours) tag values.

Implements the full EBNF grammar from the [opening_hours specification](https://wiki.openstreetmap.org/wiki/Key:opening_hours/specification) with two entry points.

## Features

- `check(value)` - strict validation against the spec.
- `align(value)` - normalize to canonical form (case, digit padding, separators).
- Zero runtime dependencies.

## Usage

```dart
import 'package:osm_opening_hours/osm_opening_hours.dart';

void main() {
  OsmOpeningHours.check('Mo-Fr 09:00-17:00');         // true
  OsmOpeningHours.check('mo-fr 9:00-17:00');          // false (strict)
  OsmOpeningHours.check('garbage');                    // false

  OsmOpeningHours.align('mo-fr 9:00-17:00');
  // Mo-Fr 09:00-17:00

  OsmOpeningHours.align('Mo-Fr 09:00-17:00;Sa 10:00-14:00');
  // Mo-Fr 09:00-17:00; Sa 10:00-14:00

  OsmOpeningHours.align('garbage');
  // throws FormatException
}
```

## Supported Grammar

All constructs from the specification are supported, including:

- Fixed times, extended hours (up to 48:00), open-ended times (`18:00+`).
- Variable times: `sunrise`, `sunset`, `dawn`, `dusk` with `(event±HH:mm)` offsets.
- Weekday ranges, lists, and nth-of-month (`Su[1]`, `Su[-1]`, `Su[1-3]`, `Su[1,3,5]`).
- Month ranges and lists, date ranges spanning year boundaries, `easter` with day offsets.
- Year selectors including ranges, periodicity, and open-ended (`2024+`).
- Week selectors with ranges and periodicity.
- Public holidays (`PH`) with optional day shifts, school holidays (`SH`).
- Rule modifiers: `open`, `closed`, `off`, `unknown`, comments.
- Rule separators: `;` (normal), `,` (additional), ` || ` (fallback).
- Shortcut `24/7`.

## Author

Mateusz Woźniak &lt;matisiek11@gmail.com&gt;
