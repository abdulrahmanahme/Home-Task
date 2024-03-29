import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/core/widgets/default_botton.dart';

import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';

class LiveNowCard extends StatelessWidget {
  const LiveNowCard({
    super.key,
    required this.nameStore,
    required this.userName,
    required this.itemImage,
    required this.userImage,


  });
  final String userName;
  final String nameStore;
  final String userImage;
  final String itemImage;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: 280.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(itemImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(alignment: Alignment.bottomRight, children: [
        Positioned(
          top: 20.0,
          left: 20.0,
          child: DefaultButton(
            onPressed: () {
            },
            buttonText: 'مباشر',
          ),
        ),
        Positioned(
          bottom: 10.h,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 260.w,
                      child: Row(
                        children: [
                          const Spacer(),
                          Text(
                            userName,
                            style: AppTextStyle.font10GreyColor400,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CircleAvatar(
                            radius: 10.0,
                            backgroundColor: AppColors.blue.withOpacity(.5),
                            child: CircleAvatar(
                                radius: 20.0,
                                backgroundColor: AppColors.white,
                                backgroundImage:
                                    NetworkImage(userImage)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      nameStore,
                      style: AppTextStyle.font14White700,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
