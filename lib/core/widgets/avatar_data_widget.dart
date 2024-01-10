import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/core/widgets/user_avatar_widget.dart';

import '../../config/app_text_styles.dart';

class AvatarDataWidget extends StatelessWidget {
  const AvatarDataWidget({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                ',صباح الخير',
                style: AppTextStyle.font16PrimaryTextColor500,
              ),
              Text(
                title,
                style: AppTextStyle.font16PrimaryTextColor700,
              ),
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          UserAvatar(
            image: image,
          ),
        ],
      ),
    );
  }
}
