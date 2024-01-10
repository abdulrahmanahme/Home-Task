import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    super.key,
   required this.title
  });
 final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
         title,
          style: AppTextStyle. font16primaryColor400,
        ),
        SizedBox(
      height: 8.h,
    ),
    Container(
      height: 5.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: AppColors.greenColor,
        borderRadius: BorderRadius.circular(8),
      ),
    ),
      ],
    );
  }
}