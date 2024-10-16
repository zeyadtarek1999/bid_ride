import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: AppColors.mainColor

      ),
      child:  Padding(
        padding:EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Row(
          children: [
            Text('Aug 11, 10:40Am ',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor)),
            Text(' - ',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor)),
            Text('Aug 20,06:00Pm',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor)),
            const Spacer(),
            Icon(Icons.timer,color: AppColors.white,)
          ],
        ),
      ),
    );
  }
}
