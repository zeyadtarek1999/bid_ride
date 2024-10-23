import 'package:bid_ride/core/enum/alert_enum.dart';
import 'package:bid_ride/core/services/alert_service.dart';
import 'package:bid_ride/features/registration/domain/entities/register_entity.dart';
import 'package:bid_ride/features/registration/domain/use_cases/register_uc.dart';
import 'package:bid_ride/injection_container.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final  SignUpUseCase signUpUseCase ;
  RegisterCubit({required this.signUpUseCase}) : super(RegisterInitial());

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  final GlobalKey<FormState>  formKey = GlobalKey<FormState>();

  Future<void> signUp(User user , context) async {
    emit(SignUpLoading());

    final result = await signUpUseCase.signUp(user);

    result.fold((failure) {
            getIt<AlertService>().showAlert(
              context: context,
              title:' LocaleKeys.incomplete_form.tr()',
              subtitle: 'LocaleKeys.please_fill_out.tr()',
              status: AlertStatus.error,
            );
            emit(SignUpError(failure.massage));
      }, (_) {
      getIt<AlertService>().showAlert(
              context: context,
              title:' LocaleKeys.incomplete_form.tr()',
              subtitle: 'LocaleKeys.please_fill_out.tr()',
              status: AlertStatus.success,
            );
        emit(SignUpSuccess());
      },
    );
  }
}
