import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles{
  TextStyle get title;
  TextStyle get button;
}

class AppTextStylesDefault implements AppTextStyles{
  @override
  TextStyle get button => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: AppTheme.colors.button
  );

  @override
  TextStyle get title => GoogleFonts.montserrat(
      fontWeight: FontWeight.w700,
      fontSize: 40,
      color: AppTheme.colors.title
  );

}