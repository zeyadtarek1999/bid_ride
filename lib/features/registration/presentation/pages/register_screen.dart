import 'package:bid_ride/shared_widgets/buttons/custom_material_btn.dart';
import 'package:bid_ride/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget{
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_back,)),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Center(
                  child: Text(
                    'Register',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              SizedBox(height: 50.h,),
               Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('First Name'),
                        SizedBox(height: 5.h,),
                        const CustomTextFormFieldWidget(
                          hint: 'John',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Last Name'),
                        SizedBox(height: 5.h,),
                        const CustomTextFormFieldWidget(
                          hint: 'Doe',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              const Text('E-mail'),
              SizedBox(height: 5.h,),
              const CustomTextFormFieldWidget(
                hint: 'Enter your email',

              ),
              SizedBox(height: 15.h,),
              const Text('Phone Number'),
              SizedBox(height: 5.h,),
              const CustomTextFormFieldWidget(
                hint: 'Enter your phone',

              ),
              SizedBox(height: 15.h,),
              const Text('Password'),
              SizedBox(height: 5.h,),
              const CustomTextFormFieldWidget(
                hint: '********',
                isPassword: true,
              ),
              SizedBox(height: 15.h,),
              const Text('Confirm Password'),
              SizedBox(height: 5.h,),
              const CustomTextFormFieldWidget(
                hint: '********',
                isPassword: true,

              ),
              SizedBox(height: 40.h,),
              CustomMaterialButton(text: 'Create Account', onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }

}