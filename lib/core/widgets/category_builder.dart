import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_const.dart';
import '../../config/app_text_styles.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) => Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        AssetImage(AppConst.productImages[index]),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    AppConst.titleProduct[index],
                    style: AppTextStyle.font15GreyColor400,
                  ),
                ],
              ),
          separatorBuilder: (_, index) => SizedBox(width: 20.w),
          itemCount: AppConst.productImages.length),
    );
  }
}
