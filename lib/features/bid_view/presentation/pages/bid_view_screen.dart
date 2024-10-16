import 'package:bid_ride/features/bid_view/presentation/widgets/bid_details.dart';
import 'package:bid_ride/features/bid_view/presentation/widgets/bid_input.dart';
import 'package:bid_ride/features/bid_view/presentation/widgets/photo_widget.dart';
import 'package:bid_ride/features/bid_view/presentation/widgets/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BidViewScreen extends StatelessWidget {
  const BidViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: false,
        titleSpacing: 0,
        leading:IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_back),),
        title:  Text('Maruti Wagon',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(
            children: [
              const TimeWidget(),
              SizedBox(height: 5.h,),
              const PhotoWidget(),
              SizedBox(height: 5.h,),
              const BidDetails(),
              SizedBox(height: 5.h,),
              const BidInput(),


            ],
          ),
        ),
      ),

    );
  }
}
