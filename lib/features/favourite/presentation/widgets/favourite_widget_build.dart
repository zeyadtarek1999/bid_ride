import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:bid_ride/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteWidgetBuild extends StatelessWidget {
  const FavouriteWidgetBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.scaffoldColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Assets.images.car.image(
            fit: BoxFit.cover,
            height: 100.h
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tittle',style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: 5.h,),
              Text('Desctiption',style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: 5.h,),
              Text('Starts:',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor)),
              SizedBox(height: 5.h,),
              Text('Ends:',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor)),



            ],),
          const Spacer(),
          Column(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.share))
      
            ],
          )
        ],
      ),
    );
  }
}
