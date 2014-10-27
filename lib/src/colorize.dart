part of colorize;

@proxy
class Colorize {

  static final String ESC = "\u{1B}";

  String initial = '';

  Colorize([this.initial = '']);

  String toString() {
    return initial;
  }

  Colorize noSuchMethod(Invocation mirror) {
    String style = MirrorSystem.getName(mirror.memberName);
    apply(style);

    return this;
  }

  Colorize call(String text) {
    initial = text;
    return this;
  }

  String buildEscSeq(String style) {
    return ESC + "[${Styles.list[style]}m";
  }

  Colorize apply(String style, [String text]) {

    if (text == null) {
      text = initial;
    }

    initial = _stylize(style, text);
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