import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_event.freezed.dart';

@freezed
class SplashScreenEvent with _$SplashScreenEvent {
  const factory SplashScreenEvent.checkLoginStatus() = CheckLoginStatus;
}

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isError,
    String? errorMessage,
    bool? isLoggedIn,
  }) = _SplashScreenState;
}

