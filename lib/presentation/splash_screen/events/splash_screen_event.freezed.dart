// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenEventCopyWith<$Res> {
  factory $SplashScreenEventCopyWith(
          SplashScreenEvent value, $Res Function(SplashScreenEvent) then) =
      _$SplashScreenEventCopyWithImpl<$Res, SplashScreenEvent>;
}

/// @nodoc
class _$SplashScreenEventCopyWithImpl<$Res, $Val extends SplashScreenEvent>
    implements $SplashScreenEventCopyWith<$Res> {
  _$SplashScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckLoginStatusImplCopyWith<$Res> {
  factory _$$CheckLoginStatusImplCopyWith(_$CheckLoginStatusImpl value,
          $Res Function(_$CheckLoginStatusImpl) then) =
      __$$CheckLoginStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLoginStatusImplCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$CheckLoginStatusImpl>
    implements _$$CheckLoginStatusImplCopyWith<$Res> {
  __$$CheckLoginStatusImplCopyWithImpl(_$CheckLoginStatusImpl _value,
      $Res Function(_$CheckLoginStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckLoginStatusImpl implements CheckLoginStatus {
  const _$CheckLoginStatusImpl();

  @override
  String toString() {
    return 'SplashScreenEvent.checkLoginStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckLoginStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginStatus,
  }) {
    return checkLoginStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginStatus,
  }) {
    return checkLoginStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginStatus,
    required TResult orElse(),
  }) {
    if (checkLoginStatus != null) {
      return checkLoginStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
  }) {
    return checkLoginStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
  }) {
    return checkLoginStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    required TResult orElse(),
  }) {
    if (checkLoginStatus != null) {
      return checkLoginStatus(this);
    }
    return orElse();
  }
}

abstract class CheckLoginStatus implements SplashScreenEvent {
  const factory CheckLoginStatus() = _$CheckLoginStatusImpl;
}

/// @nodoc
mixin _$SplashScreenState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isLoggedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashScreenStateCopyWith<SplashScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenStateCopyWith<$Res> {
  factory $SplashScreenStateCopyWith(
          SplashScreenState value, $Res Function(SplashScreenState) then) =
      _$SplashScreenStateCopyWithImpl<$Res, SplashScreenState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isError,
      String? errorMessage,
      bool? isLoggedIn});
}

/// @nodoc
class _$SplashScreenStateCopyWithImpl<$Res, $Val extends SplashScreenState>
    implements $SplashScreenStateCopyWith<$Res> {
  _$SplashScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? isError = null,
    Object? errorMessage = freezed,
    Object? isLoggedIn = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoggedIn: freezed == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashScreenStateImplCopyWith<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  factory _$$SplashScreenStateImplCopyWith(_$SplashScreenStateImpl value,
          $Res Function(_$SplashScreenStateImpl) then) =
      __$$SplashScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isError,
      String? errorMessage,
      bool? isLoggedIn});
}

/// @nodoc
class __$$SplashScreenStateImplCopyWithImpl<$Res>
    extends _$SplashScreenStateCopyWithImpl<$Res, _$SplashScreenStateImpl>
    implements _$$SplashScreenStateImplCopyWith<$Res> {
  __$$SplashScreenStateImplCopyWithImpl(_$SplashScreenStateImpl _value,
      $Res Function(_$SplashScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? isError = null,
    Object? errorMessage = freezed,
    Object? isLoggedIn = freezed,
  }) {
    return _then(_$SplashScreenStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoggedIn: freezed == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SplashScreenStateImpl implements _SplashScreenState {
  const _$SplashScreenStateImpl(
      {this.isLoading = false,
      this.isSuccess = false,
      this.isError = false,
      this.errorMessage,
      this.isLoggedIn});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final bool isError;
  @override
  final String? errorMessage;
  @override
  final bool? isLoggedIn;

  @override
  String toString() {
    return 'SplashScreenState(isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError, errorMessage: $errorMessage, isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashScreenStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isSuccess, isError, errorMessage, isLoggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashScreenStateImplCopyWith<_$SplashScreenStateImpl> get copyWith =>
      __$$SplashScreenStateImplCopyWithImpl<_$SplashScreenStateImpl>(
          this, _$identity);
}

abstract class _SplashScreenState implements SplashScreenState {
  const factory _SplashScreenState(
      {final bool isLoading,
      final bool isSuccess,
      final bool isError,
      final String? errorMessage,
      final bool? isLoggedIn}) = _$SplashScreenStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isError;
  @override
  String? get errorMessage;
  @override
  bool? get isLoggedIn;
  @override
  @JsonKey(ignore: true)
  _$$SplashScreenStateImplCopyWith<_$SplashScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
