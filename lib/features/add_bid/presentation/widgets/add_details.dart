import 'package:bid_ride/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddDetails extends StatelessWidget {
  const AddDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> carConditions = [
      'New',
      'Used - Like New',
      'Used - Good',
      'Used - Fair',
    ];

    final List<String> fuelTypes = [
      'Petrol',
      'Diesel',
      'Electric',
      'Hybrid',
    ];

    String? selectedCarCondition;
    String? selectedFuelType;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Car Details',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const CustomTextFormFieldWidget(
          hint: 'Car Make (e.g., Toyota, Honda)',
        ),
        SizedBox(height: 20.h),
        const CustomTextFormFieldWidget(
          hint: 'Car Model (e.g., Corolla, Civic)',
        ),
        SizedBox(height: 20.h),
        const CustomTextFormFieldWidget(
          hint: 'Year of Manufacture',
        ),
        SizedBox(height: 20.h),
        const CustomTextFormFieldWidget(
          hint: 'Mileage (e.g., 150,000 km)',
        ),
        SizedBox(height: 20.h),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Condition',
            border: OutlineInputBorder(),
          ),
          value: selectedCarCondition,
          items: carConditions.map((condition) {
            return DropdownMenuItem<String>(
              value: condition,
              child: Text(
                condition,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            );
          }).toList(),
          onChanged: (value) {
            selectedCarCondition = value;
          },
          isExpanded: true,
        ),
        SizedBox(height: 20.h),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Fuel Type',
            border: OutlineInputBorder(),
          ),
          value: selectedFuelType,
          items: fuelTypes.map((fuelType) {
            return DropdownMenuItem<String>(
              value: fuelType,
              child: Text(
                fuelType,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            );
          }).toList(),
          onChanged: (value) {
            selectedFuelType = value;
          },
          isExpanded: true,
        ),
        SizedBox(height: 20.h),
        const CustomTextFormFieldWidget(
          hint: 'Price (e.g.,L.E 10,000)',
        ),
      ],
    );
  }
}
