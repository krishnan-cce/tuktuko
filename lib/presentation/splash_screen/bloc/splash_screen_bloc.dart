import 'package:bloc/bloc.dart';

import '../../../secure_storage/secure_storage.dart';
import '../events/splash_screen_event.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  final SecureStorage secureStorage;

  SplashScreenBloc(
      this.secureStorage
      ) : super(const SplashScreenState()) {


    on<CheckLoginStatus>((event, emit) async {
      bool? isLoggedIn = await secureStorage.readBool("isLogin");
      print("isLoggedIn value: $isLoggedIn");

      emit(state.copyWith(isLoggedIn: isLoggedIn));

      if (isLoggedIn != true) {

      } else {
        emit(state.copyWith(isSuccess: true));
      }
    });

    add(const CheckLoginStatus());
  }
}
