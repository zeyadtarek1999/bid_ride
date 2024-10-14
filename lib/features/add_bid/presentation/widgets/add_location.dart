import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({super.key});

  @override
  _AddLocationState createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  bool _useProfileAddress = false;
  bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ad Location & Contact',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
         SizedBox(height: 10.h),
        CheckboxListTile(
          title: Text('Use address set in profile section',style: Theme.of(context).textTheme.bodySmall!.copyWith(color:AppColors.mainColor,fontWeight: FontWeight.bold),),
          value: _useProfileAddress,
          onChanged: (bool? value) {
            setState(() {
              _useProfileAddress = value!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
         SizedBox(height: 10.h),
        CheckboxListTile(
          title: Row(
            children: [
              Text('I agree to ',style: Theme.of(context).textTheme.bodySmall!.copyWith(color:AppColors.mainColor,fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: () {
                },
                child: Text(
                  'terms & conditions',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color:AppColors.secondColor,fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
          value: _agreeToTerms,
          onChanged: (bool? value) {
            setState(() {
              _agreeToTerms = value!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ],
    );
  }
}
