import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> carCategories = [
      'Sedan',
      'SUV',
      'Hatchback',
      'Convertible',
      'Truck',
      'Van',
      'Coupe',
      'Electric',
      'Hybrid',
    ];

    String? selectedCarCategory;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Car Category',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Category',
            border: OutlineInputBorder(),
          ),
          value: selectedCarCategory,
          items: carCategories.map((category) {
            return DropdownMenuItem<String>(
              value: category,
              child: Text(
                category,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            );
          }).toList(),
          onChanged: (value) {
            selectedCarCategory = value;
          },
          isExpanded: true,
        ),
      ],
    );
  }
}
