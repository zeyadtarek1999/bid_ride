import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12.0.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
               Text('Top Deals',style: Theme.of(context).textTheme.bodyLarge,),
              const Spacer(),
              Text('See all',style: TextStyle(color: AppColors.hintColor),)
            ],
          ),
          SizedBox(height: 20.h,),
          CustomRadioButton(
            elevation: 0,
            margin:  EdgeInsets.symmetric(horizontal: 6.0.w),
            defaultSelected: 'All',
            radius: 4.r,
            shapeRadius: 40.r,
            enableShape: true,
            unSelectedBorderColor: AppColors.mainColor,
            absoluteZeroSpacing: false,
            unSelectedColor:AppColors.scaffoldColor,
            buttonLables: const ['All', 'Maruti', 'Swift', 'Honda','Toyota','Mini'],
            buttonValues: const ['All', 'Maruti', 'Swift', 'Honda','Toyota','Mini'],
            buttonTextStyle: ButtonTextStyle(
              selectedColor: AppColors.scaffoldColor,
              unSelectedColor: AppColors.mainColor,
              textStyle: const TextStyle(fontSize: 16),
            ),
            radioButtonValue: (value) {
            },
            height: 30,
            width: 90,
            selectedColor:AppColors.mainColor,
          ),
           SizedBox(height: 15.h),
        ],
      ),
    );
  }
}
