import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:bid_ride/gen/assets.gen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> _currentImageIndex = ValueNotifier<int>(0);
    final List<String> carImages = [
      Assets.images.car2.path,
      Assets.images.car.path,
      Assets.images.car.path,
    ];

    return Container(
      height: 460.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.mainColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ValueListenableBuilder<int>(
            valueListenable: _currentImageIndex,
            builder: (context, index, _) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  carImages[index],
                  width: double.infinity,
                  height: 300.h,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          SizedBox(height: 10.h),
          CarouselSlider(
            items: carImages.map((imagePath) {
              int imageIndex = carImages.indexOf(imagePath);
              return GestureDetector(
                onTap: () {
                  _currentImageIndex.value = imageIndex;
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.r),
                  child: Image.asset(
                    imagePath,
                    width: 120.w, // Adjust thumbnail size
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 100.h, // Adjust carousel height
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.3, // Space between thumbnails
              enlargeCenterPage: false, // Disable center enlargement
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0.sp),
            child: Text(
              'Seller : Shreeram Motor Finance',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
