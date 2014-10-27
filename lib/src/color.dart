part of colorize;

void color(String text, {
    String front: '',
    String back: '',
    bool isUnderline: false,
    bool isBold: false,
    bool isDark: false,
    bool isItalic: false,
    bool isReverse: false
  }) {

  Colorize string = new Colorize(text);

  if (front.length > 0) {
    string.apply(front);
  }

  if (back.length > 0) {
    string.apply(back);
  }

  if (isUnderline) {
    string.underline();
  }

  if (isBold) {
    string.bold();
  }

  if (isDark) {
    string.dark();
  }

  if (isItalic) {
    string.italic();
  }

  if (isReverse) {
    string.reverse();
  }

  print(string);

}