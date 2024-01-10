import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../core/widgets/avatar_data_widget.dart';
import '../core/widgets/category_builder.dart';
import '../core/widgets/category_title.dart';
import '../core/widgets/leading_app_bar_widget.dart';
import '../core/widgets/live_now_builder.dart';
import '../core/widgets/top_offer_widget.dart';
import '../view_model/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HomeViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150.h,
        leading: const LeadingAppBarWidget(),
        actions: [
          provider.isLoading
              ? Container()
              : AvatarDataWidget(
                  image: provider.homeModel!.data!.userDetails!.image!,
                  title: '!${provider.homeModel!.data!.userDetails!.name!}',
                ),
        ],
      ),
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TopOfferWidget(
                      title: provider.homeModel!.data!.topOffer!.title!,
                      des: provider.homeModel!.data!.topOffer!.desc!,
                    ),
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
                    LiveNowBuilder(homeModel: provider.homeModel),
                  ],
                ),
              ),
            ),
    );
  }
}
