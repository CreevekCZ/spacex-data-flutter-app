// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crews_filter_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CrewsFilterData _$CrewsFilterDataFromJson(Map<String, dynamic> json) {
  return _CrewsFilterData.fromJson(json);
}

/// @nodoc
mixin _$CrewsFilterData {
  @HiveField(0)
  String? get searchTerm => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get agency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrewsFilterDataCopyWith<CrewsFilterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewsFilterDataCopyWith<$Res> {
  factory $CrewsFilterDataCopyWith(
          CrewsFilterData value, $Res Function(CrewsFilterData) then) =
      _$CrewsFilterDataCopyWithImpl<$Res, CrewsFilterData>;
  @useResult
  $Res call({@HiveField(0) String? searchTerm, @HiveField(1) String? agency});
}

/// @nodoc
class _$CrewsFilterDataCopyWithImpl<$Res, $Val extends CrewsFilterData>
    implements $CrewsFilterDataCopyWith<$Res> {
  _$CrewsFilterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? agency = freezed,
  }) {
    return _then(_value.copyWith(
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CrewsFilterDataCopyWith<$Res>
    implements $CrewsFilterDataCopyWith<$Res> {
  factory _$$_CrewsFilterDataCopyWith(
          _$_CrewsFilterData value, $Res Function(_$_CrewsFilterData) then) =
      __$$_CrewsFilterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? searchTerm, @HiveField(1) String? agency});
}

/// @nodoc
class __$$_CrewsFilterDataCopyWithImpl<$Res>
    extends _$CrewsFilterDataCopyWithImpl<$Res, _$_CrewsFilterData>
    implements _$$_CrewsFilterDataCopyWith<$Res> {
  __$$_CrewsFilterDataCopyWithImpl(
      _$_CrewsFilterData _value, $Res Function(_$_CrewsFilterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? agency = freezed,
  }) {
    return _then(_$_CrewsFilterData(
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 8, adapterName: 'CrewsFilterDataAdapter')
class _$_CrewsFilterData extends _CrewsFilterData {
  const _$_CrewsFilterData(
      {@HiveField(0) this.searchTerm, @HiveField(1) this.agency})
      : super._();

  factory _$_CrewsFilterData.fromJson(Map<String, dynamic> json) =>
      _$$_CrewsFilterDataFromJson(json);

  @override
  @HiveField(0)
  final String? searchTerm;
  @override
  @HiveField(1)
  final String? agency;

  @override
  String toString() {
    return 'CrewsFilterData(searchTerm: $searchTerm, agency: $agency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CrewsFilterData &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.agency, agency) || other.agency == agency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, searchTerm, agency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CrewsFilterDataCopyWith<_$_CrewsFilterData> get copyWith =>
      __$$_CrewsFilterDataCopyWithImpl<_$_CrewsFilterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CrewsFilterDataToJson(
      this,
    );
  }
}

abstract class _CrewsFilterData extends CrewsFilterData {
  const factory _CrewsFilterData(
      {@HiveField(0) final String? searchTerm,
      @HiveField(1) final String? agency}) = _$_CrewsFilterData;
  const _CrewsFilterData._() : super._();

  factory _CrewsFilterData.fromJson(Map<String, dynamic> json) =
      _$_CrewsFilterData.fromJson;

  @override
  @HiveField(0)
  String? get searchTerm;
  @override
  @HiveField(1)
  String? get agency;
  @override
  @JsonKey(ignore: true)
  _$$_CrewsFilterDataCopyWith<_$_CrewsFilterData> get copyWith =>
      throw _privateConstructorUsedError;
}
