import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/core/widgets/live_now_card.dart';

import '../../model/home_model/home_model.dart';

class LiveNowBuilder extends StatelessWidget {
  const LiveNowBuilder({
    super.key,
    required this.homeModel,
  });

  final HomeModel? homeModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) => LiveNowCard(
                userName: homeModel!.data!.liveNow![index].title!,
                nameStore: homeModel!.data!.liveNow![index].user!.name!,
                userImage: homeModel!.data!.liveNow![index].user!.image!,
                itemImage: homeModel!.data!.liveNow![index].image!,
              ),
          separatorBuilder: (_, index) => SizedBox(width: 20.w),
          itemCount: homeModel!.data!.liveNow!.length),
    );
  }
}
