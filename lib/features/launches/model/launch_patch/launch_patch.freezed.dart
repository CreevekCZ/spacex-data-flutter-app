// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_patch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchPatch _$LaunchPatchFromJson(Map<String, dynamic> json) {
  return _LaunchPatch.fromJson(json);
}

/// @nodoc
mixin _$LaunchPatch {
  @HiveField(0)
  String? get small => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchPatchCopyWith<LaunchPatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchPatchCopyWith<$Res> {
  factory $LaunchPatchCopyWith(
          LaunchPatch value, $Res Function(LaunchPatch) then) =
      _$LaunchPatchCopyWithImpl<$Res, LaunchPatch>;
  @useResult
  $Res call({@HiveField(0) String? small, @HiveField(1) String? large});
}

/// @nodoc
class _$LaunchPatchCopyWithImpl<$Res, $Val extends LaunchPatch>
    implements $LaunchPatchCopyWith<$Res> {
  _$LaunchPatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LaunchPatchCopyWith<$Res>
    implements $LaunchPatchCopyWith<$Res> {
  factory _$$_LaunchPatchCopyWith(
          _$_LaunchPatch value, $Res Function(_$_LaunchPatch) then) =
      __$$_LaunchPatchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? small, @HiveField(1) String? large});
}

/// @nodoc
class __$$_LaunchPatchCopyWithImpl<$Res>
    extends _$LaunchPatchCopyWithImpl<$Res, _$_LaunchPatch>
    implements _$$_LaunchPatchCopyWith<$Res> {
  __$$_LaunchPatchCopyWithImpl(
      _$_LaunchPatch _value, $Res Function(_$_LaunchPatch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_$_LaunchPatch(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5, adapterName: 'LaunchPatchAdapter')
class _$_LaunchPatch implements _LaunchPatch {
  const _$_LaunchPatch({@HiveField(0) this.small, @HiveField(1) this.large});

  factory _$_LaunchPatch.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchPatchFromJson(json);

  @override
  @HiveField(0)
  final String? small;
  @override
  @HiveField(1)
  final String? large;

  @override
  String toString() {
    return 'LaunchPatch(small: $small, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchPatch &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchPatchCopyWith<_$_LaunchPatch> get copyWith =>
      __$$_LaunchPatchCopyWithImpl<_$_LaunchPatch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchPatchToJson(
      this,
    );
  }
}

abstract class _LaunchPatch implements LaunchPatch {
  const factory _LaunchPatch(
      {@HiveField(0) final String? small,
      @HiveField(1) final String? large}) = _$_LaunchPatch;

  factory _LaunchPatch.fromJson(Map<String, dynamic> json) =
      _$_LaunchPatch.fromJson;

  @override
  @HiveField(0)
  String? get small;
  @override
  @HiveField(1)
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchPatchCopyWith<_$_LaunchPatch> get copyWith =>
      throw _privateConstructorUsedError;
}
