import 'package:bid_ride/config/routes/app_routes.dart';
import 'package:bid_ride/gen/assets.gen.dart';
import 'package:bid_ride/shared_widgets/buttons/custom_material_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Assets.images.welcomeScreen.image(
              fit: BoxFit.contain,
            ),
            SizedBox(height: 50.h), // Add some spacing
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Spread buttons evenly
                children: [
                  Expanded(
                    child: CustomMaterialButton(text: 'Register', onPressed: () {
                      Navigator.pushReplacementNamed(context, AppRoutes.registerScreenRoute);

                    },textStyle: const TextStyle(color: Colors.black),color: Colors.white,borderColor: Colors.black,borderWidth: 0.9.w,),
                  ),
                  const SizedBox(width: 10), // Space between buttons
                  Expanded(
                    child: CustomMaterialButton(text: 'Login', onPressed: () {}),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
