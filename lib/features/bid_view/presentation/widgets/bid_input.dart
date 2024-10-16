import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BidInput extends StatelessWidget {
  const BidInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.scaffoldColor, width: 2.0.w),
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
                hintText: 'Enter Your Bid',
                filled: true,
                fillColor: Colors.grey[300],
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0.r),
                    bottomLeft: Radius.circular(8.0.r),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Container(
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius:  BorderRadius.only(
                topRight: Radius.circular(8.0.r),
                bottomRight: Radius.circular(8.0.r),
              ),
            ),
            child: TextButton(
              onPressed: () {
              },
              child: Text(
                'BID (14)',
                style: TextStyle(
                  color: Colors.white, // White text color
                  fontSize: 16.sp, // Text size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
