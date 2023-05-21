// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_message_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GlobalMessageState {
  String? get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  GlobalMessageCategory get category => throw _privateConstructorUsedError;
  GlobalMessageType get displayType => throw _privateConstructorUsedError;
  bool get showCloseButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalMessageStateCopyWith<GlobalMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalMessageStateCopyWith<$Res> {
  factory $GlobalMessageStateCopyWith(
          GlobalMessageState value, $Res Function(GlobalMessageState) then) =
      _$GlobalMessageStateCopyWithImpl<$Res, GlobalMessageState>;
  @useResult
  $Res call(
      {String? title,
      String message,
      GlobalMessageCategory category,
      GlobalMessageType displayType,
      bool showCloseButton});
}

/// @nodoc
class _$GlobalMessageStateCopyWithImpl<$Res, $Val extends GlobalMessageState>
    implements $GlobalMessageStateCopyWith<$Res> {
  _$GlobalMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = null,
    Object? category = null,
    Object? displayType = null,
    Object? showCloseButton = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GlobalMessageCategory,
      displayType: null == displayType
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as GlobalMessageType,
      showCloseButton: null == showCloseButton
          ? _value.showCloseButton
          : showCloseButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GlobalMessageStateCopyWith<$Res>
    implements $GlobalMessageStateCopyWith<$Res> {
  factory _$$_GlobalMessageStateCopyWith(_$_GlobalMessageState value,
          $Res Function(_$_GlobalMessageState) then) =
      __$$_GlobalMessageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String message,
      GlobalMessageCategory category,
      GlobalMessageType displayType,
      bool showCloseButton});
}

/// @nodoc
class __$$_GlobalMessageStateCopyWithImpl<$Res>
    extends _$GlobalMessageStateCopyWithImpl<$Res, _$_GlobalMessageState>
    implements _$$_GlobalMessageStateCopyWith<$Res> {
  __$$_GlobalMessageStateCopyWithImpl(
      _$_GlobalMessageState _value, $Res Function(_$_GlobalMessageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = null,
    Object? category = null,
    Object? displayType = null,
    Object? showCloseButton = null,
  }) {
    return _then(_$_GlobalMessageState(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GlobalMessageCategory,
      displayType: null == displayType
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as GlobalMessageType,
      showCloseButton: null == showCloseButton
          ? _value.showCloseButton
          : showCloseButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GlobalMessageState extends _GlobalMessageState {
  const _$_GlobalMessageState(
      {this.title,
      required this.message,
      required this.category,
      required this.displayType,
      this.showCloseButton = true})
      : super._();

  @override
  final String? title;
  @override
  final String message;
  @override
  final GlobalMessageCategory category;
  @override
  final GlobalMessageType displayType;
  @override
  @JsonKey()
  final bool showCloseButton;

  @override
  String toString() {
    return 'GlobalMessageState(title: $title, message: $message, category: $category, displayType: $displayType, showCloseButton: $showCloseButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GlobalMessageState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.displayType, displayType) ||
                other.displayType == displayType) &&
            (identical(other.showCloseButton, showCloseButton) ||
                other.showCloseButton == showCloseButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, message, category, displayType, showCloseButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlobalMessageStateCopyWith<_$_GlobalMessageState> get copyWith =>
      __$$_GlobalMessageStateCopyWithImpl<_$_GlobalMessageState>(
          this, _$identity);
}

abstract class _GlobalMessageState extends GlobalMessageState {
  const factory _GlobalMessageState(
      {final String? title,
      required final String message,
      required final GlobalMessageCategory category,
      required final GlobalMessageType displayType,
      final bool showCloseButton}) = _$_GlobalMessageState;
  const _GlobalMessageState._() : super._();

  @override
  String? get title;
  @override
  String get message;
  @override
  GlobalMessageCategory get category;
  @override
  GlobalMessageType get displayType;
  @override
  bool get showCloseButton;
  @override
  @JsonKey(ignore: true)
  _$$_GlobalMessageStateCopyWith<_$_GlobalMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
