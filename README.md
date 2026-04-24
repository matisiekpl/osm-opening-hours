# osm_opening_hours

Strict validator for [OpenStreetMap `opening_hours`](https://wiki.openstreetmap.org/wiki/Key:opening_hours) tag values.

Implements the full EBNF grammar from the [opening_hours specification](https://wiki.openstreetmap.org/wiki/Key:opening_hours/specification) using an ANTLR4-generated parser, plus semantic checks for numeric ranges (hours, minutes, days, weeks, years, nth-of-month) that grammars alone cannot enforce.

## Features

- `OsmOpeningHours.check(value)` — returns `true` if the value is a valid `opening_hours` expression, `false` otherwise.
- Strict: rejects lowercase weekday/month tokens, unpadded digits, out-of-range values, and malformed separators.
- No exceptions thrown from `check` — invalid input simply returns `false`.

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  osm_opening_hours: ^1.0.0
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
