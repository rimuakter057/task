import 'package:flutter/material.dart';

import '../../../app/utils/sizes.dart';
import '../../common/Widget/custom_container.dart';

class ConColorWidget extends StatelessWidget {
  const ConColorWidget({
    super.key, required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(height: AppSizes.containerColorH,
      width: AppSizes.containerColorW,
      color: color,
    );
  }
}