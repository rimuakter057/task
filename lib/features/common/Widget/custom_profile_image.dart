import 'package:flutter/material.dart';

import '../../../app/utils/asset_path.dart';
import '../../../app/utils/sizes.dart';


class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key, this.height, this.width, this.imagePath, this.color,
  });
  final double?height;
  final double?width;
  final String?imagePath;
 final Color?color;
  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath??AssetImages.profile,
      height:height?? AppSizes.profileS,
      width:width??AppSizes.profileS,
      fit: BoxFit.cover,
      color: color,
    );
  }
}