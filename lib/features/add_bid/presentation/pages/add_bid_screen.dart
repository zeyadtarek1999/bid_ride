import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:bid_ride/features/add_bid/presentation/widgets/add_category.dart';
import 'package:bid_ride/features/add_bid/presentation/widgets/add_details.dart';
import 'package:bid_ride/features/add_bid/presentation/widgets/add_location.dart';
import 'package:bid_ride/features/add_bid/presentation/widgets/add_photo.dart';
import 'package:bid_ride/shared_widgets/buttons/custom_material_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddBidScreen extends StatelessWidget {
  const AddBidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submit Ad'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
          child:  Column(
            children: [
              const AddPhoto(),
              SizedBox(height: 10.h,),
              const AddCategory(),
              SizedBox(height: 10.h,),
              const AddDetails(),
              SizedBox(height: 10.h,),
              const AddLocation(),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(child: CustomMaterialButton(text: 'Cancel', onPressed: (){},color: AppColors.hintColor,)),
                  SizedBox(width: 5.w,),
                  Expanded(child: CustomMaterialButton(text: 'Submit', onPressed: (){},color: AppColors.secondColor,))
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
