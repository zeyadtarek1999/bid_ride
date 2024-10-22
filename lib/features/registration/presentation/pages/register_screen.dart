import 'package:bid_ride/config/routes/app_routes.dart';
import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:bid_ride/core/validations/app_validation.dart';
import 'package:bid_ride/features/first_feature/presentation/manager/cat_fact_cubit.dart';
import 'package:bid_ride/features/registration/presentation/cubit/register_cubit.dart';
import 'package:bid_ride/features/splash/presentation/pages/splash_screen.dart';
import 'package:bid_ride/shared_widgets/buttons/custom_material_btn.dart';
import 'package:bid_ride/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();


    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        leading: IconButton(onPressed: () {
          Navigator.pushReplacementNamed(context, AppRoutes.welcomeScreenRoute);
        }, icon: const Icon(Icons.arrow_back,)),
      ),
      body: BlocConsumer<RegisterCubit, RegisterState>(

        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {    final cubit = context.read<RegisterCubit>();

        return Form(
          key:cubit.formKey ,
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Register',
                        style: Theme
                            .of(context)
                            .textTheme
                            .displayMedium,
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
                                CustomTextFormFieldWidget(
                                controller: cubit.firstName ,
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
                                CustomTextFormFieldWidget(controller: cubit.lastName ,
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
                      CustomTextFormFieldWidget(controller: cubit.email ,
                      hint: 'Enter your email',

                    ),
                    SizedBox(height: 15.h,),
                    const Text('Phone Number'),
                    SizedBox(height: 5.h,),
                      CustomTextFormFieldWidget(controller: cubit.phoneNumber ,
                      hint: 'Enter your phone',

                    ),
                    SizedBox(height: 15.h,),
                    const Text('Password'),
                    SizedBox(height: 5.h,),
                      CustomTextFormFieldWidget(controller: cubit.password ,
                      hint: '********',
                      isPassword: true,
                    ),
                    SizedBox(height: 15.h,),
                    const Text('Confirm Password'),
                    SizedBox(height: 5.h,),
                      CustomTextFormFieldWidget(controller: cubit.confirmPassword ,
                      hint: '********',
                      isPassword: true,                            validator: AppValidator.passwordValidation,


                      ),
                    SizedBox(height: 40.h,),
                    CustomMaterialButton(text: 'Create Account', onPressed: () {},)
                  ],
                ),
              ),
            ),
        );
        },
      ),
    );
  }

}