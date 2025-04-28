import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color/app_colors.dart';
import '../../sizes.dart';


class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme(BuildContext context) {
    return TextTheme(
      headlineLarge: GoogleFonts.poppins(
        fontSize: 30,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: AppSizes.fontSizeLg(context),
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      headlineSmall:  GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),

      bodyLarge: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.secondaryTextColor,
      ),

      bodyMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),

      bodySmall:GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.secondaryTextColor,),


      labelMedium:  GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),

      titleMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color:AppColors.white,
      ),







/*
      headlineMedium: GoogleFonts.poppins(
        fontSize: AppSizes.fontSizeLg(context),
        fontWeight: FontWeight.w600,
        color: Colors.white,

      ),
        labelMedium:  GoogleFonts.poppins(
          fontSize: MediaQuery.of(context).size.width * 0.038, // Same font size for hint text
          fontWeight: FontWeight.w500,  // Regular weight for hint text
          color: AppColors.black,
        ),
      titleMedium: GoogleFonts.poppins(
        fontSize: AppSizes.appbarText(context),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      titleSmall:  GoogleFonts.poppins(
        fontSize: AppSizes.width(context)* 0.04, // Same font size for hint text
        fontWeight: FontWeight.normal, // Regular weight for hint text
        color: Color(0xFF767676),
      ),

      bodyLarge: GoogleFonts.poppins(
        fontSize: AppSizes.width(context)*0.05,
        fontWeight: FontWeight.w500,
        color: AppColors.black,),

      bodyMedium: GoogleFonts.poppins(
        fontSize: AppSizes.fontSizeMd(context),
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),

      bodySmall:GoogleFonts.poppins(
        fontSize: AppSizes.fontSizeSm(context),
        fontWeight: FontWeight.w400,
        color: AppColors.black,),
*/

     /* labelLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: AppSizes.fontSizeSm(context),
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: AppSizes.fontSizeSm(context),
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.5),
      ),*/
    );
  }

/*   headlineSmall:  GoogleFonts.poppins(
        fontSize: AppSizes.fontSizeMd(context),
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),*/
/*      titleLarge: GoogleFonts.poppins(
        fontSize: AppSizes.appbarText(context),
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),*/
}
