part of colorize;

@proxy
class ColorizeString {

  static final String ESC = "\u{1B}";

  String text = '';

  ColorizeString(this.text);

  String toString() {
    return text;
  }

  ColorizeString noSuchMethod(Invocation mirror) {
    String style = MirrorSystem.getName(mirror.memberName);
    apply(style);

    return this;
  }

  String buildEscSeq(String style) {
    return ESC + "[${Styles.list[style]}m";
  }

  ColorizeString apply(String style) {
    if (Styles.list.containsKey(style)) {
      text = applyStyle(style, text);
    }

    return this;
  }

  String applyStyle(String style, String text) {
    return buildEscSeq(style) + text + buildEscSeq('reset');
  }

}