// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchFailure _$LaunchFailureFromJson(Map<String, dynamic> json) {
  return _LaunchFailure.fromJson(json);
}

/// @nodoc
mixin _$LaunchFailure {
  @HiveField(0)
  int get time => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get altitude => throw _privateConstructorUsedError;
  @HiveField(2)
  String get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchFailureCopyWith<LaunchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchFailureCopyWith<$Res> {
  factory $LaunchFailureCopyWith(
          LaunchFailure value, $Res Function(LaunchFailure) then) =
      _$LaunchFailureCopyWithImpl<$Res, LaunchFailure>;
  @useResult
  $Res call(
      {@HiveField(0) int time,
      @HiveField(1) int? altitude,
      @HiveField(2) String reason});
}

/// @nodoc
class _$LaunchFailureCopyWithImpl<$Res, $Val extends LaunchFailure>
    implements $LaunchFailureCopyWith<$Res> {
  _$LaunchFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? altitude = freezed,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LaunchFailureCopyWith<$Res>
    implements $LaunchFailureCopyWith<$Res> {
  factory _$$_LaunchFailureCopyWith(
          _$_LaunchFailure value, $Res Function(_$_LaunchFailure) then) =
      __$$_LaunchFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int time,
      @HiveField(1) int? altitude,
      @HiveField(2) String reason});
}

/// @nodoc
class __$$_LaunchFailureCopyWithImpl<$Res>
    extends _$LaunchFailureCopyWithImpl<$Res, _$_LaunchFailure>
    implements _$$_LaunchFailureCopyWith<$Res> {
  __$$_LaunchFailureCopyWithImpl(
      _$_LaunchFailure _value, $Res Function(_$_LaunchFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? altitude = freezed,
    Object? reason = null,
  }) {
    return _then(_$_LaunchFailure(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'LaunchFailureAdapter')
class _$_LaunchFailure implements _LaunchFailure {
  const _$_LaunchFailure(
      {@HiveField(0) required this.time,
      @HiveField(1) this.altitude,
      @HiveField(2) required this.reason});

  factory _$_LaunchFailure.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchFailureFromJson(json);

  @override
  @HiveField(0)
  final int time;
  @override
  @HiveField(1)
  final int? altitude;
  @override
  @HiveField(2)
  final String reason;

  @override
  String toString() {
    return 'LaunchFailure(time: $time, altitude: $altitude, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchFailure &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, altitude, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchFailureCopyWith<_$_LaunchFailure> get copyWith =>
      __$$_LaunchFailureCopyWithImpl<_$_LaunchFailure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchFailureToJson(
      this,
    );
  }
}

abstract class _LaunchFailure implements LaunchFailure {
  const factory _LaunchFailure(
      {@HiveField(0) required final int time,
      @HiveField(1) final int? altitude,
      @HiveField(2) required final String reason}) = _$_LaunchFailure;

  factory _LaunchFailure.fromJson(Map<String, dynamic> json) =
      _$_LaunchFailure.fromJson;

  @override
  @HiveField(0)
  int get time;
  @override
  @HiveField(1)
  int? get altitude;
  @override
  @HiveField(2)
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchFailureCopyWith<_$_LaunchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
