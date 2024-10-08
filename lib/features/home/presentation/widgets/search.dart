import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0.sp),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 90.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey.shade500),
                   SizedBox(width: 10.w),
                  const Text(
                    "Search for Honda Pilot 7-Passenger",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
           SizedBox(width: 10.w),

          // Filter icon
          IconButton(
            icon:  Icon(Icons.tune, color: AppColors.mainColor), // Filter icon in indigo
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}
