import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle titleTextFont({double? size,FontWeight? fontWeight,Color? color})
{
   return GoogleFonts.kanit(fontWeight: fontWeight??FontWeight.w500,fontSize: size??15,color: color);
}

TextStyle subTitleTextFont()
{
   return GoogleFonts.kanit();
}