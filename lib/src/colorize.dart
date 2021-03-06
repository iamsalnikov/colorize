part of colorize;

class Colorize {
  static final String ESC = "\u{1B}";

  String initial = '';

  Colorize([this.initial = '']);

  Colorize apply(Styles style, [String? text]) {
    if (text == null) {
      text = initial;
    }

    initial = _applyStyle(style, text);
    return this;
  }

  Colorize bgBlack() {
    return apply(Styles.BG_BLACK);
  }

  Colorize bgBlue() {
    return apply(Styles.BG_BLUE);
  }

  Colorize bgCyan() {
    return apply(Styles.BG_CYAN);
  }

  Colorize bgDarkGray() {
    return apply(Styles.BG_DARK_GRAY);
  }

  Colorize bgDefault() {
    return apply(Styles.BG_DEFAULT);
  }

  Colorize bgGreen() {
    return apply(Styles.BG_GREEN);
  }

  Colorize bgLightBlue() {
    return apply(Styles.BG_LIGHT_BLUE);
  }

  Colorize bgLightCyan() {
    return apply(Styles.BG_LIGHT_CYAN);
  }

  Colorize bgLightGray() {
    return apply(Styles.BG_LIGHT_GRAY);
  }

  Colorize bgLightGreen() {
    return apply(Styles.BG_LIGHT_GREEN);
  }

  Colorize bgLightMagenta() {
    return apply(Styles.BG_LIGHT_MAGENTA);
  }

  Colorize bgLightRed() {
    return apply(Styles.BG_LIGHT_RED);
  }

  Colorize bgLightYellow() {
    return apply(Styles.BG_LIGHT_YELLOW);
  }

  Colorize bgMagenta() {
    return apply(Styles.BG_MAGENTA);
  }

  Colorize bgRed() {
    return apply(Styles.BG_RED);
  }

  Colorize bgWhite() {
    return apply(Styles.BG_WHITE);
  }

  Colorize bgYellow() {
    return apply(Styles.BG_YELLOW);
  }

  Colorize black() {
    return apply(Styles.BLACK);
  }

  Colorize blink() {
    return apply(Styles.BLINK);
  }

  Colorize blue() {
    return apply(Styles.BLUE);
  }

  Colorize bold() {
    return apply(Styles.BOLD);
  }

  String buildEscSeq(Styles style) {
    return ESC + "[${getStyle(style)}m";
  }

  Colorize call(String text) {
    initial = text;
    return this;
  }

  Colorize concealed() {
    return apply(Styles.CONCEALED);
  }

  Colorize cyan() {
    return apply(Styles.CYAN);
  }

  Colorize dark() {
    return apply(Styles.DARK);
  }

  Colorize darkGray() {
    return apply(Styles.DARK_GRAY);
  }

  Colorize default_slyle() {
    return apply(Styles.DEFAULT);
  }

  Colorize green() {
    return apply(Styles.GREEN);
  }

  Colorize italic() {
    return apply(Styles.ITALIC);
  }

  Colorize lightBlue() {
    return apply(Styles.LIGHT_BLUE);
  }

  Colorize lightCyan() {
    return apply(Styles.LIGHT_CYAN);
  }

  Colorize lightGray() {
    return apply(Styles.LIGHT_GRAY);
  }

  Colorize lightGreen() {
    return apply(Styles.LIGHT_GREEN);
  }

  Colorize lightMagenta() {
    return apply(Styles.LIGHT_MAGENTA);
  }

  Colorize lightRed() {
    return apply(Styles.LIGHT_RED);
  }

  Colorize lightYellow() {
    return apply(Styles.LIGHT_YELLOW);
  }

  Colorize magenta() {
    return apply(Styles.MAGENTA);
  }

  Colorize red() {
    return apply(Styles.RED);
  }

  Colorize reverse() {
    return apply(Styles.REVERSE);
  }

  String toString() {
    return initial;
  }

  Colorize underline() {
    return apply(Styles.UNDERLINE);
  }

  Colorize white() {
    return apply(Styles.WHITE);
  }

  Colorize yellow() {
    return apply(Styles.YELLOW);
  }

  String _applyStyle(Styles style, String text) {
    return buildEscSeq(style) + text + buildEscSeq(Styles.RESET);
  }

  static String getStyle(Styles style) {
    switch (style) {
      case Styles.RESET:
        return '0';
      case Styles.BOLD:
        return '1';
      case Styles.DARK:
        return '2';
      case Styles.ITALIC:
        return '3';
      case Styles.UNDERLINE:
        return '4';
      case Styles.BLINK:
        return '5';
      case Styles.REVERSE:
        return '7';
      case Styles.CONCEALED:
        return '8';
      case Styles.DEFAULT:
        return '39';
      case Styles.BLACK:
        return '30';
      case Styles.RED:
        return '31';
      case Styles.GREEN:
        return '32';
      case Styles.YELLOW:
        return '33';
      case Styles.BLUE:
        return '34';
      case Styles.MAGENTA:
        return '35';
      case Styles.CYAN:
        return '36';
      case Styles.LIGHT_GRAY:
        return '37';
      case Styles.DARK_GRAY:
        return '90';
      case Styles.LIGHT_RED:
        return '91';
      case Styles.LIGHT_GREEN:
        return '92';
      case Styles.LIGHT_YELLOW:
        return '93';
      case Styles.LIGHT_BLUE:
        return '94';
      case Styles.LIGHT_MAGENTA:
        return '95';
      case Styles.LIGHT_CYAN:
        return '96';
      case Styles.WHITE:
        return '97';
      case Styles.BG_DEFAULT:
        return '49';
      case Styles.BG_BLACK:
        return '40';
      case Styles.BG_RED:
        return '41';
      case Styles.BG_GREEN:
        return '42';
      case Styles.BG_YELLOW:
        return '43';
      case Styles.BG_BLUE:
        return '44';
      case Styles.BG_MAGENTA:
        return '45';
      case Styles.BG_CYAN:
        return '46';
      case Styles.BG_LIGHT_GRAY:
        return '47';
      case Styles.BG_DARK_GRAY:
        return '100';
      case Styles.BG_LIGHT_RED:
        return '101';
      case Styles.BG_LIGHT_GREEN:
        return '102';
      case Styles.BG_LIGHT_YELLOW:
        return '103';
      case Styles.BG_LIGHT_BLUE:
        return '104';
      case Styles.BG_LIGHT_MAGENTA:
        return '105';
      case Styles.BG_LIGHT_CYAN:
        return '106';
      case Styles.BG_WHITE:
        return '107';
      default: return '';
    }
  }
}
