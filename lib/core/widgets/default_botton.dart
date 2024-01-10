import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const DefaultButton(
      {super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 12.w),
        decoration: BoxDecoration(
          color: AppColors.greenColor,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
         buttonText ,
          style: AppTextStyle.font12GreyColor400,
        ),
      ),
    );
  }
}