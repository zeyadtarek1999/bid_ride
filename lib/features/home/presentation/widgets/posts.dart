import 'package:bid_ride/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Assets.images.car.image(
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 8.h,
                left: 8.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child:  Padding(
                    padding: EdgeInsets.all(4.0.sp),
                    child: Row(
                      children: [
                        const Icon(Icons.threesixty, size: 16),
                        SizedBox(width: 4.w),
                        const Text('360 View', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ),
               Positioned(
                top: 8.h,
                right: 8.w,
                child:  IconButton(onPressed:(){}, icon:const Icon( Icons.favorite_border), color: Colors.white),
              ),
               Positioned(
                bottom: 12.h,
                left: 8.w,
                child:  IconButton(onPressed:(){}, color: Colors.white, icon:const Icon(Icons.share),),
              ),
            ],
          ),
           SizedBox(height: 12.h),
          const Text(
            "FILA Men's shorts",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
           SizedBox(height: 4.h),
          const Text(
            'Aug 11, 10:40Am - Aug 20, 06:00Pm',overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
