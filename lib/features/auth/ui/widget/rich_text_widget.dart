import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../app/utils/color/app_colors.dart';

class RichTextWidget extends StatelessWidget {
  final String normalText;
  final String actionText;
  final VoidCallback onTap;

  const RichTextWidget({
    super.key,
    required this.normalText,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: normalText,
        style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.normal, // regular
          color:  AppColors.secondaryTextColor,
        ),
        children: [
          TextSpan(
            text: actionText,
            style: GoogleFonts.poppins(
              fontSize:12,
              fontWeight: FontWeight.normal, // medium
              color: AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
