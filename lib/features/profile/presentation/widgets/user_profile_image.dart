import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/assets.gen.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.hintColor,
          radius: 64.r,
          child: ClipOval(
            child: CircleAvatar(
              radius: 60.r,
              child: Assets.images.user.image(
                fit: BoxFit.cover,
                width: 120.w,
                height: 120.h,
              ),
            ),
          ),
        ),
        CircleAvatar(
          radius: 20.r,
          backgroundColor: AppColors.secondColor,
          child: IconButton(
            color:AppColors.scaffoldColor,
            onPressed: () {
              // Handle image edit here
            },
            icon: const Icon(Icons.edit),
          ),
        )
      ],
    );
  }
}
