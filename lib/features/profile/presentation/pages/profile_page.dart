import 'package:bid_ride/config/routes/app_routes.dart';
import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:bid_ride/features/profile/presentation/widgets/user_profile_image.dart';
import 'package:bid_ride/shared_widgets/buttons/custom_material_btn.dart';
import 'package:bid_ride/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          TextButton(onPressed: (){}, child: Text('Update',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.secondColor,)))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const UserProfileImage(),
            SizedBox(height: 10.h,),
            const Text('Mahmoud Samir'),
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50.h,),
                      const Text('E-mail'),
                      SizedBox(height: 5.h,),
                      const CustomTextFormFieldWidget(
                        hint: 'Mahmoudsamir0777@gmail.com',
                      ),
                      SizedBox(height: 15.h,),
                      const Text('Phone'),
                      SizedBox(height: 5.h,),
                      const CustomTextFormFieldWidget(
                        hint: '01150324699',
                      ),
                      SizedBox(height: 15.h,),
                      const Text('Address'),
                      SizedBox(height: 5.h,),
                      const CustomTextFormFieldWidget(
                        hint: 'Enter your address',
                      ),
                      SizedBox(height: 60.h,),
                      CustomMaterialButton(text: 'Logout', onPressed: (){
                        Navigator.pushReplacementNamed(context, AppRoutes.loginScreenRoute);
                      })
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
