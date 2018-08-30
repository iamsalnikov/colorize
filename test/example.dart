import "../lib/colorize.dart";

void main() {

  print("\n");
  color("\tColorize", front: Styles.GREEN, isBold: true);

  Colorize colorize = (new Colorize("\tColorize ") as dynamic)..lightYellow();
  Colorize console = new Colorize("console ")..lightBlue();
  Colorize output = new Colorize("output")..lightMagenta();

  String description = colorize.toString() + " " + console.toString() + " " + output.toString();
  print(description);
  print("\n");

  Colorize bg = new Colorize("\t")..bgRed();
  Colorize text = new Colorize("\t<- red")..red();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgGreen();
  text = new Colorize("\t<- green")..green();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgYellow();
  text = new Colorize("\t<- yellow")..yellow();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgBlue();
  text = new Colorize("\t<- blue")..blue();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgMagenta();
  text = new Colorize("\t<- magenta")..magenta();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgCyan();
  text = new Colorize("\t<- cyan")..cyan();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgLightGray();
  text = new Colorize("\t<- lightGray")..lightGray();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgDarkGray();
  text = new Colorize("\t<- darkGray")..darkGray();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgLightRed();
  text = new Colorize("\t<- lightRed")..lightRed();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgLightGreen();
  text = new Colorize("\t<- lightGreen")..lightGreen();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgLightYellow();
  text = new Colorize("\t<- lightYellow")..lightYellow();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgLightBlue();
  text = new Colorize("\t<- lightBlue")..lightBlue();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgLightMagenta();
  text = new Colorize("\t<- lightMagenta")..lightMagenta();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgLightCyan();
  text = new Colorize("\t<- lightCyan")..lightCyan();
  print("\t" + bg.toString() + text.toString());

  bg = new Colorize("\t")..bgWhite();
  text = new Colorize("\t<- white")..white();
  print("\t" + bg.toString() + text.toString());

  print("\n");
  color("\tBold", isBold: true);
  color("\tUnderline", isUnderline: true);
  color("\tItalic", isItalic: true);
  color("\tReverse", isReverse: true);
  color("\tBold Italic Underline", isBold: true, isItalic: true, isUnderline: true);

  print("\n");

}