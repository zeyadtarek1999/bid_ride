import 'package:bid_ride/features/home/presentation/widgets/category.dart';
import 'package:bid_ride/features/home/presentation/widgets/posts.dart';
import 'package:bid_ride/features/home/presentation/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.line_weight),onPressed: (){},),
        title: const Text('AutoBidCar'),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.notifications))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Search(),
            const Category(),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 8.w, // Horizontal spacing
                mainAxisSpacing: 12.h, // Vertical spacing
                childAspectRatio: 0.75, // Adjust to make the items fit properly
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const Posts();
              },
            ),
          ],
        ),
      ),
    );
  }
}
