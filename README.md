# Colorize

Colorize console output in dart console apps!

![](http://i.imgur.com/BaxDbw9.png)

## Install

Add dependency to your `pubspec.yaml`:

```yaml
colorize: any
```

Run

```bash
pub get
```

## Usage

Import package:

```dart
import 'package:colorize/colorize.dart';
```

You have two way to colorize your string:

* use class `ColorizeString`
* use top-level function `color()`

### Use `ColorizeString`

For colorize string with `ColorizeString` class you should create object of type `ColorizeString`:

```dart
ColorizeString string = new ColorizeString("This is my string!");
```

Then you can call methods of `ColorizeString`.

**Text color**

* default()
* black()
* red()
* green()
* yellow()
* blue()
* magenta()
* cyan()
* lightGray()
* darkGray()
* lightRed()
* lightGreen()
* lightYellow()
* lightBlue()
* lightMagenta()
* lightCyan()
* white()

**Background color**

* bgDefault()
* bgBlack()
* bgRed()
* bgGreen()
* bgYellow()
* bgBlue()
* bgMagenta()
* bgCyan()
* bgLightGray()
* bgDarkGray()
* bgLightRed()
* bgLightGreen()
* bgLightYellow()
* bgLightBlue()
* bgLightMagenta()
* bgLightCyan()
* bgWhite()

**Formatting**

* reset()
* bold()
* dark()
* italic()
* underline()
* blink()
* reverse()
* concealed()