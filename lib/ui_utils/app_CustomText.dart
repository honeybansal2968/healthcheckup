import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText{
  static Widget appText({required String text, TextStyle? textStyle}) {
    return Text(text,style: GoogleFonts.nunito(textStyle: textStyle),);
  }
}