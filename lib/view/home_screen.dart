import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/widgets/avatar_data_widget.dart';
import '../core/widgets/category_builder.dart';
import '../core/widgets/category_title.dart';
import '../core/widgets/leading_app_bar_widget.dart';
import '../core/widgets/live_now_card.dart';
import '../core/widgets/top_offer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150.h,
        leading: const LeadingAppBarWidget(),
        actions: const [
          AvatarDataWidget(
            title: 'محمد',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const TopOfferWidget(),
              SizedBox(
                height: 24.h,
              ),
              const CategoryTitle(
                title: 'الاقسام',
              ),
              SizedBox(
                height: 24.h,
              ),
              const CategoryBuilder(),
              SizedBox(
                height: 24.h,
              ),
              const CategoryTitle(
                title: 'يعرض حاليا',
              ),
              SizedBox(
                height: 20.h,
              ),
              const LiveNowCard(
                userName: 'صباح الخير',
                time: '01:42:56',
                nameStore: 'متجر جولي فيل',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
