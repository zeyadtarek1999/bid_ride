import 'package:bid_ride/config/routes/app_routes.dart';
import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:bid_ride/core/validations/app_validation.dart';
import 'package:bid_ride/features/registration/domain/entities/register_entity.dart';
import 'package:bid_ride/features/registration/presentation/cubit/register_cubit.dart';
import 'package:bid_ride/generated/locale_keys.g.dart';
import 'package:bid_ride/shared_widgets/buttons/custom_material_btn.dart';
import 'package:bid_ride/shared_widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
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

        listener: (context, state) {},
        builder: (context, state) {
          final cubit = context.read<RegisterCubit>();
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
                        LocaleKeys.Register.tr(),
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
                               Text(LocaleKeys.First_Name.tr()),
                              SizedBox(height: 5.h,),
                                CustomTextFormFieldWidget(
                                  validator: AppValidator.firstNameValidation,
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
                               Text(LocaleKeys.Last_Name.tr()),
                              SizedBox(height: 5.h,),
                                CustomTextFormFieldWidget(
                                  validator: AppValidator.lastNameValidation,

                                  controller: cubit.lastName ,
                                hint: 'Doe',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h,),
                    Text(LocaleKeys.Email.tr()),
                    SizedBox(height: 5.h,),
                      CustomTextFormFieldWidget(
                        validator: AppValidator.emailValidation,
                        controller: cubit.email ,
                      hint: LocaleKeys.Enter_your_email.tr(),

                    ),
                    SizedBox(height: 15.h,),
                     Text(LocaleKeys.Phone_Number.tr()),
                    SizedBox(height: 5.h,),
                      CustomTextFormFieldWidget(
                        validator: AppValidator.phoneValidation,
                        controller: cubit.phoneNumber ,
                      hint: LocaleKeys.Enter_your_phone.tr(),

                    ),
                    SizedBox(height: 15.h,),
                    Text(LocaleKeys.Password.tr()),
                    SizedBox(height: 5.h,),
                      CustomTextFormFieldWidget(
                        validator: AppValidator.passwordValidation,
                        controller: cubit.password ,
                      hint: '********',
                      isPassword: true,
                    ),
                    SizedBox(height: 15.h,),
                    Text(LocaleKeys.Confirm_Password.tr()),
                    SizedBox(height: 5.h,),
                      CustomTextFormFieldWidget(
                        controller: cubit.confirmPassword ,
                      hint: '********',
                      isPassword: true,
                        validator: (value) => AppValidator.confirmPasswordValidation(value, cubit.password.text),
                      ),
                    SizedBox(height: 40.h,),
                    CustomMaterialButton(text: LocaleKeys.Create_Account.tr(), onPressed: () {
                      if(cubit.formKey.currentState!.validate()){
                        cubit.signUp(
                            User(
                              lastName: cubit.lastName.text,
                              email: cubit.email.text,
                              firstName: cubit.firstName.text,
                              phone: int.parse(cubit.phoneNumber.text), // Convert phone number to int
                              password: cubit.password.text,
                            ),
                      context
                        );

                      }
                    },)
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