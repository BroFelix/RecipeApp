import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  static final titleTextBold = GoogleFonts.poppins(
    height: 1.2,
    fontSize: 50.0,
    fontWeight: FontWeight.w600,
  );

  static final headerTextBold = GoogleFonts.poppins(
    fontSize: 30.0,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static final largeTextBold = GoogleFonts.poppins(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
  );

  static final mediumTextBold = GoogleFonts.poppins(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  static final normalTextBold = GoogleFonts.poppins(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );
  static final smallTextBold = GoogleFonts.poppins(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  static final smallerTextBold = GoogleFonts.poppins(
    fontSize: 11.0,
    fontWeight: FontWeight.w600,
  );

  static final titleTextRegular = GoogleFonts.poppins(
    height: 1.2,
    fontSize: 50.0,
    fontWeight: FontWeight.w400,
  );

  static final headerTextRegular = GoogleFonts.poppins(
    fontSize: 30.0,
    fontWeight: FontWeight.w400,
  );

  static final largeTextRegular = GoogleFonts.poppins(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  );

  static final mediumTextRegular = GoogleFonts.poppins(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );

  static final normalTextRegular = GoogleFonts.poppins(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
  static final smallTextRegular = GoogleFonts.poppins(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  static final smallerTextRegular = GoogleFonts.poppins(
    fontSize: 11.0,
    fontWeight: FontWeight.w400,
  );
}
