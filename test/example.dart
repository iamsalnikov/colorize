import "../lib/colorize.dart";

void main() {

  print("\n");
  color("\tColorize", front: Styles.GREEN, isBold: true);

  ColorizeString colorize = new ColorizeString("\tColorize ")..lightYellow();
  ColorizeString console = new ColorizeString("console ")..lightBlue();
  ColorizeString output = new ColorizeString("output")..lightMagenta();

  String description = colorize.toString() + " " + console.toString() + " " + output.toString();
  print(description);
  print("\n");

  ColorizeString bg = new ColorizeString("\t")..bgRed();
  ColorizeString text = new ColorizeString("\t<- red")..red();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgGreen();
  text = new ColorizeString("\t<- green")..green();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgYellow();
  text = new ColorizeString("\t<- yellow")..yellow();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgBlue();
  text = new ColorizeString("\t<- blue")..blue();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgMagenta();
  text = new ColorizeString("\t<- magenta")..magenta();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgCyan();
  text = new ColorizeString("\t<- cyan")..cyan();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgLightGray();
  text = new ColorizeString("\t<- lightGray")..lightGray();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgDarkGray();
  text = new ColorizeString("\t<- darkGray")..darkGray();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgLightRed();
  text = new ColorizeString("\t<- lightRed")..lightRed();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgLightGreen();
  text = new ColorizeString("\t<- lightGreen")..lightGreen();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgLightYellow();
  text = new ColorizeString("\t<- lightYellow")..lightYellow();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgLightBlue();
  text = new ColorizeString("\t<- lightBlue")..lightBlue();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgLightMagenta();
  text = new ColorizeString("\t<- lightMagenta")..lightMagenta();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgLightCyan();
  text = new ColorizeString("\t<- lightCyan")..lightCyan();
  print("\t" + bg.toString() + text.toString());

  bg = new ColorizeString("\t")..bgWhite();
  text = new ColorizeString("\t<- white")..white();
  print("\t" + bg.toString() + text.toString());

  print("\n");
  color("\tBold", isBold: true);
  color("\tUnderline", isUnderline: true);
  color("\tItalic", isItalic: true);
  color("\tReverse", isReverse: true);
  color("\tBold Italic Underline", isBold: true, isItalic: true, isUnderline: true);

  print("\n");

}