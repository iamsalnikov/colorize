part of colorize;

@proxy
class ColorizeString {

  static final String ESC = "\u{1B}";

  String initial = '';
  String wrapped = '';

  ColorizeString([this.initial = '']) {
    wrapped = initial;
  }

  String toString() {
    return wrapped;
  }

  ColorizeString noSuchMethod(Invocation mirror) {
    String style = MirrorSystem.getName(mirror.memberName);
    apply(style);

    return this;
  }

  ColorizeString call(String text) {
    this.initial = text;
    this.wrapped = text;
    return this;
  }

  String buildEscSeq(String style) {
    return ESC + "[${Styles.list[style]}m";
  }

  ColorizeString apply(String style, [String text]) {

    if (text == null) {
      text = wrapped;
    }

    wrapped = _stylize(style, text);
    return this;

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