import 'package:flutter/cupertino.dart';
import 'package:task/app/utils/color/app_colors.dart';

import '../../../app/utils/color/gradient_color.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.height,
    required this.width,
    this.gradient,
    this.allRadius,
    this.leftTopRadius,
    this.rightTopRadius,
    this.leftBottomRadius,
    this.rightBottomRadius, this.child, this.color,
  });
final Color? color;
  final double height;
  final double width;
  final Gradient? gradient;
  final double? allRadius;
  final double? leftTopRadius;
  final double? rightTopRadius;
  final double? leftBottomRadius;
  final double? rightBottomRadius;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color:color??AppColors.primaryColor,
        gradient: gradient ,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(leftTopRadius ?? allRadius ?? 0.0),
          topRight: Radius.circular(rightTopRadius ?? allRadius ?? 0.0),
          bottomLeft: Radius.circular(leftBottomRadius ?? allRadius ?? 0.0),
          bottomRight: Radius.circular(rightBottomRadius ?? allRadius ?? 0.0),
        ),
      ),
      child: child,
    );
  }
}
