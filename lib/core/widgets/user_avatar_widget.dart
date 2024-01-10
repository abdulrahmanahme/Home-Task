import 'package:flutter/material.dart';
import '../../config/app_colors.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
  required  this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25.0, 
          backgroundColor: AppColors.blue.withOpacity(.5), 
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: AppColors.white,
            backgroundImage:NetworkImage(image)
           
          ),
        ),
      ],
    );
  }
}