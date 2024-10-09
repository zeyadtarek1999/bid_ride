import 'package:bid_ride/features/favourite/presentation/widgets/favourite_widget_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => const FavouriteWidgetBuild(),
              separatorBuilder: (context, index) => SizedBox(height: 20.h),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
