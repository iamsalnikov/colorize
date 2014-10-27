part of colorize;

@proxy
class ColorizeString {

  static final String ESC = "\u{1B}";

  String initial = '';

  ColorizeString([this.initial = '']);

  String toString() {
    return initial;
  }

  ColorizeString noSuchMethod(Invocation mirror) {
    String style = MirrorSystem.getName(mirror.memberName);
    apply(style);

    return this;
  }

  ColorizeString call(String text) {
    return new ColorizeString(text);
  }

  String buildEscSeq(String style) {
    return ESC + "[${Styles.list[style]}m";
  }

  ColorizeString apply(String style, [String text]) {

    if (text == null) {
      text = initial;
    }

    initial = _stylize(style, text);
    return this;

  }

  String operator +(ColorizeString string) {
    return this.toString() + string.toString();
  }

  String _stylize(String style, String text) {

    if (Styles.list.containsKey(style)) {
      return _applyStyle(style, text);
    }

    return text;
  }

  String _applyStyle(String style, String text) {
    return buildEscSeq(style) + text + buildEscSeq('reset');
  }

}