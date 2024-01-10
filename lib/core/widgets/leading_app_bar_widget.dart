import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/config/app_colors.dart';
import 'package:home/core/widgets/bell_notification.dart';

class LeadingAppBarWidget extends StatelessWidget {
  const LeadingAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Row(
        children: [
          const BellNotification(),
          SizedBox(
            width: 8.w,
          ),
          const Icon(
            Icons.search,
            size: 30,
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}