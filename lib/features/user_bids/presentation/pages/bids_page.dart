import 'package:bid_ride/features/user_bids/presentation/widgets/bids_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BidsPage extends StatelessWidget {
  const BidsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bids'),
      ),
      body: ListView.separated(itemBuilder: (context,index)=>const BidsWidget(), separatorBuilder: (context,index)=>SizedBox(height: 15.h,), itemCount: 10)
    );
  }
}
