import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BidDetails extends StatelessWidget {
  const BidDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Swift Dzire R ZXLR',style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.mainColor),),
              SizedBox(height: 5.h,),
              Text('2018 | 75,000 KMS | Diesel',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor),)
            ],),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: AppColors.scaffoldColor, // Assuming this is the white color
                border: Border.all(
                  color: Colors.black, // Black border
                  width: 1.0, // Border width
                ),
                borderRadius: BorderRadius.circular(8.0), // Slightly rounded corners
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'MH 43',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'DX 984',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 5.h,),
        Text('Yard Location : Godhbunder Road Thane',style: Theme.of(context).textTheme.bodySmall,),
        SizedBox(height: 10.h,),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                   Icon(Icons.calendar_month_outlined,color: AppColors.hintColor,size: 40.h,),
                  Text('Repo Date',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor),),
                  Text('25-Feb-23',style: Theme.of(context).textTheme.bodySmall,)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.fire_truck,color: AppColors.hintColor,size: 40.h,),
                  Text('Run Status',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor),),
                  Text('Driven to Yard',style: Theme.of(context).textTheme.bodySmall,)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.car_crash,color: AppColors.hintColor,size: 40.h,),
                  Text('Transmission',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor),),
                  Text('Dual Clutch',style: Theme.of(context).textTheme.bodySmall,)
                ],
              ),
            )

          ],
        ),
        SizedBox(height: 10.h,),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.grey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Center the content horizontally
                  children: [
                    Icon(Icons.monetization_on, color: AppColors.green),
                    SizedBox(width: 5.w),  // Space between the icon and text
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,  // Center the text vertically
                      crossAxisAlignment: CrossAxisAlignment.start,  // Align text to the start
                      children: [
                        Text('Last bid:', style: Theme.of(context).textTheme.bodySmall),
                        Text('1,30,00,120', style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 5.w),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.grey,
                ),
                child: Center(  // Center the timer text
                  child: Text(
                    '00:10:20',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.secondColor),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5.w),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.grey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Center the icon and text horizontally
                  children: [
                    const Icon(Icons.wb_incandescent),
                    SizedBox(width: 5.w),  // Space between the icon and text
                    Text(
                      'Winning',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )



      ],
    );
  }
}
