import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_text_styles.dart';

class TopOfferWidget extends StatelessWidget {
  const TopOfferWidget({
    super.key,
    required this.title,
    required this.des,
  });
  final String title;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFFEBF5FF),
              const Color(0xFF1D71B9).withOpacity(.888)
            ],
            stops: const [
              0.0168,
              0.7707
            ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 10.w,
          ),
          Image.asset('assets/images/hidPhone.png'),
          const Spacer(),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: Text(
                  title,
                  style: AppTextStyle.font20White700,
                ),
              ),
              SizedBox(
                width: 150.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 120.w,
                      child: Text(
                        des,
                        maxLines: 2,
                        style: AppTextStyle.font14White400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    'اشتري الان',
                    style: AppTextStyle.font14White700,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Image.asset('assets/images/arrow.png'),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ],
      ),
      // Add child widgets or content as needed
    );
  }
}
