// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launches_filter_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaunchesFilterData {
  @HiveField(1)
  String? get searchTerm => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get year => throw _privateConstructorUsedError;
  @HiveField(3)
  bool? get success => throw _privateConstructorUsedError;
  @HiveField(4)
  bool? get onlyWithImages => throw _privateConstructorUsedError;
  @HiveField(5)
  bool? get hasCrew => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaunchesFilterDataCopyWith<LaunchesFilterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchesFilterDataCopyWith<$Res> {
  factory $LaunchesFilterDataCopyWith(
          LaunchesFilterData value, $Res Function(LaunchesFilterData) then) =
      _$LaunchesFilterDataCopyWithImpl<$Res, LaunchesFilterData>;
  @useResult
  $Res call(
      {@HiveField(1) String? searchTerm,
      @HiveField(2) String? year,
      @HiveField(3) bool? success,
      @HiveField(4) bool? onlyWithImages,
      @HiveField(5) bool? hasCrew});
}

/// @nodoc
class _$LaunchesFilterDataCopyWithImpl<$Res, $Val extends LaunchesFilterData>
    implements $LaunchesFilterDataCopyWith<$Res> {
  _$LaunchesFilterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? year = freezed,
    Object? success = freezed,
    Object? onlyWithImages = freezed,
    Object? hasCrew = freezed,
  }) {
    return _then(_value.copyWith(
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyWithImages: freezed == onlyWithImages
          ? _value.onlyWithImages
          : onlyWithImages // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasCrew: freezed == hasCrew
          ? _value.hasCrew
          : hasCrew // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LaunchesFilterDataCopyWith<$Res>
    implements $LaunchesFilterDataCopyWith<$Res> {
  factory _$$_LaunchesFilterDataCopyWith(_$_LaunchesFilterData value,
          $Res Function(_$_LaunchesFilterData) then) =
      __$$_LaunchesFilterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String? searchTerm,
      @HiveField(2) String? year,
      @HiveField(3) bool? success,
      @HiveField(4) bool? onlyWithImages,
      @HiveField(5) bool? hasCrew});
}

/// @nodoc
class __$$_LaunchesFilterDataCopyWithImpl<$Res>
    extends _$LaunchesFilterDataCopyWithImpl<$Res, _$_LaunchesFilterData>
    implements _$$_LaunchesFilterDataCopyWith<$Res> {
  __$$_LaunchesFilterDataCopyWithImpl(
      _$_LaunchesFilterData _value, $Res Function(_$_LaunchesFilterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? year = freezed,
    Object? success = freezed,
    Object? onlyWithImages = freezed,
    Object? hasCrew = freezed,
  }) {
    return _then(_$_LaunchesFilterData(
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyWithImages: freezed == onlyWithImages
          ? _value.onlyWithImages
          : onlyWithImages // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasCrew: freezed == hasCrew
          ? _value.hasCrew
          : hasCrew // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1, adapterName: 'LaunchesFilterDataAdapter')
class _$_LaunchesFilterData extends _LaunchesFilterData {
  const _$_LaunchesFilterData(
      {@HiveField(1) this.searchTerm,
      @HiveField(2) this.year,
      @HiveField(3) this.success,
      @HiveField(4) this.onlyWithImages,
      @HiveField(5) this.hasCrew})
      : super._();

  @override
  @HiveField(1)
  final String? searchTerm;
  @override
  @HiveField(2)
  final String? year;
  @override
  @HiveField(3)
  final bool? success;
  @override
  @HiveField(4)
  final bool? onlyWithImages;
  @override
  @HiveField(5)
  final bool? hasCrew;

  @override
  String toString() {
    return 'LaunchesFilterData(searchTerm: $searchTerm, year: $year, success: $success, onlyWithImages: $onlyWithImages, hasCrew: $hasCrew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchesFilterData &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.onlyWithImages, onlyWithImages) ||
                other.onlyWithImages == onlyWithImages) &&
            (identical(other.hasCrew, hasCrew) || other.hasCrew == hasCrew));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, searchTerm, year, success, onlyWithImages, hasCrew);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchesFilterDataCopyWith<_$_LaunchesFilterData> get copyWith =>
      __$$_LaunchesFilterDataCopyWithImpl<_$_LaunchesFilterData>(
          this, _$identity);
}

abstract class _LaunchesFilterData extends LaunchesFilterData {
  const factory _LaunchesFilterData(
      {@HiveField(1) final String? searchTerm,
      @HiveField(2) final String? year,
      @HiveField(3) final bool? success,
      @HiveField(4) final bool? onlyWithImages,
      @HiveField(5) final bool? hasCrew}) = _$_LaunchesFilterData;
  const _LaunchesFilterData._() : super._();

  @override
  @HiveField(1)
  String? get searchTerm;
  @override
  @HiveField(2)
  String? get year;
  @override
  @HiveField(3)
  bool? get success;
  @override
  @HiveField(4)
  bool? get onlyWithImages;
  @override
  @HiveField(5)
  bool? get hasCrew;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchesFilterDataCopyWith<_$_LaunchesFilterData> get copyWith =>
      throw _privateConstructorUsedError;
}
