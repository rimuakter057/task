

import 'package:flutter/material.dart';

import '../../../../app/utils/sizes.dart';
import '../../../common/Widget/custom_profile_image.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key, required this.image,
  });
  final String  image;
  @override
  Widget build(BuildContext context) {
    return CustomImage(imagePath: image,
      height: AppSizes.iconS,
      width: AppSizes.iconS,
    );
  }
}