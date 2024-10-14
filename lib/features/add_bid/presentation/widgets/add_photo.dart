import 'dart:io';
import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class AddPhoto extends StatefulWidget {
  const AddPhoto({super.key});

  @override
  _AddPhotoState createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  final ImagePicker _picker = ImagePicker();
  final List<File?> _adImages = [null, null, null, null, null];
  Future<void> _pickImage(int index) async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _adImages[index] = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Ad Images',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, // 5 image slots
            crossAxisSpacing: 8.sp,
            mainAxisSpacing: 8.sp,
            childAspectRatio: 1,
          ),
          itemCount: _adImages.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _pickImage(index),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: _adImages[index] != null
                    ? ClipRRect(borderRadius: BorderRadius.circular(10.r),
                      child: Image.file(
                    _adImages[index]!,
                    fit: BoxFit.cover,
                  ),
                ) :  Icon(Icons.add, size: 30.sp, color: AppColors.secondColor),
              ),
            );
          },
        ),
         SizedBox(height: 10.h),
         Text(
          'Prepare images before uploading. Upload images larger than 750px x 450px. Max number of images is 5. Max image size is 134MB.',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.hintColor),
        ),
      ],
    );
  }
}
