import 'package:bid_ride/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bid_ride/features/first_feature/presentation/manager/cat_fact_cubit.dart';
import '../../../../injection_container.dart';
import '../../../../shared_widgets/buttons/custom_material_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CatFactCubit>(),
      child: BlocBuilder<CatFactCubit, CatFactState>(
        builder: (context, state) {
          final CatFactCubit catFactCubit = CatFactCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            body: Center(
              child: Column(
               children: [
                 CustomMaterialButton(text: 'Hello', onPressed: () {  },),
                 CustomTextFormFieldWidget(hint: 'asd', isPassword: true,suffix: Icons.favorite_outline,)
               ],

              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                catFactCubit.getCatFact();
              },
              tooltip: 'try',
              child: const Icon(Icons.search),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        },
      ),
    );
  }
}
