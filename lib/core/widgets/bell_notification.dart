
import 'package:flutter/material.dart';

import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';

class BellNotification extends StatelessWidget {
  const BellNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(
          Icons.notifications_none_rounded,
          size: 37,
          color: AppColors.primaryColor,
        ),
        Positioned(
          left: 3,
          top: -1,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: const BoxDecoration(
              color: AppColors.greenColor,
              shape: BoxShape.circle,
            ),
            child: Text(
              '3',
              style: AppTextStyle.font12White500,
            ),
          ),
        ),
      ],
    );
  }
}