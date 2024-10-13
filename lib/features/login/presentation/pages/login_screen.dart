import 'package:bid_ride/config/routes/app_routes.dart';
import 'package:bid_ride/shared_widgets/buttons/custom_material_btn.dart';
import 'package:bid_ride/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, AppRoutes.welcomeScreenRoute);

        },icon: const Icon(Icons.arrow_back,)),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 50.h,),
              const Text('E-mail'),
              SizedBox(height: 5.h,),
              const CustomTextFormFieldWidget(
                hint: 'Enter your email',
        
              ),
              SizedBox(height: 15.h,),
              const Text('Password'),
              SizedBox(height: 5.h,),
              const CustomTextFormFieldWidget(
                hint: 'Enter your password',
                isPassword: true,
              ),
              SizedBox(height: 60.h,),
              CustomMaterialButton(text: 'Login', onPressed: (){
                Navigator.pushReplacementNamed(context, AppRoutes.homeScreenRoute);
        
              })
        
            ],
          ),
        ),
      ),
    );
  }
}
