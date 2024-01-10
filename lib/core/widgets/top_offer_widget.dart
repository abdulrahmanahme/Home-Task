
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopOfferWidget extends StatelessWidget {
  const TopOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: 150.h,
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
        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Text(
            //           'عرض خاص',
            //           style: AppTextStyle.font20White700,
            //         ),
            Row(
              children: [Image.asset('assets/images/hidPhone.png')],
            ),
          ],
        ),
        // Add child widgets or content as needed
      ),
    );
  }
}