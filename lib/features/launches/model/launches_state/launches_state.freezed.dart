// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launches_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaunchesState {
  @HiveField(0)
  List<Launch> get launches => throw _privateConstructorUsedError;
  @HiveField(1)
  LaunchesFilterData get filterData => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaunchesStateCopyWith<LaunchesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchesStateCopyWith<$Res> {
  factory $LaunchesStateCopyWith(
          LaunchesState value, $Res Function(LaunchesState) then) =
      _$LaunchesStateCopyWithImpl<$Res, LaunchesState>;
  @useResult
  $Res call(
      {@HiveField(0) List<Launch> launches,
      @HiveField(1) LaunchesFilterData filterData,
      @HiveField(2) DateTime? updatedAt});

  $LaunchesFilterDataCopyWith<$Res> get filterData;
}

/// @nodoc
class _$LaunchesStateCopyWithImpl<$Res, $Val extends LaunchesState>
    implements $LaunchesStateCopyWith<$Res> {
  _$LaunchesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? launches = null,
    Object? filterData = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      launches: null == launches
          ? _value.launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<Launch>,
      filterData: null == filterData
          ? _value.filterData
          : filterData // ignore: cast_nullable_to_non_nullable
              as LaunchesFilterData,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchesFilterDataCopyWith<$Res> get filterData {
    return $LaunchesFilterDataCopyWith<$Res>(_value.filterData, (value) {
      return _then(_value.copyWith(filterData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LaunchesStateCopyWith<$Res>
    implements $LaunchesStateCopyWith<$Res> {
  factory _$$_LaunchesStateCopyWith(
          _$_LaunchesState value, $Res Function(_$_LaunchesState) then) =
      __$$_LaunchesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<Launch> launches,
      @HiveField(1) LaunchesFilterData filterData,
      @HiveField(2) DateTime? updatedAt});

  @override
  $LaunchesFilterDataCopyWith<$Res> get filterData;
}

/// @nodoc
class __$$_LaunchesStateCopyWithImpl<$Res>
    extends _$LaunchesStateCopyWithImpl<$Res, _$_LaunchesState>
    implements _$$_LaunchesStateCopyWith<$Res> {
  __$$_LaunchesStateCopyWithImpl(
      _$_LaunchesState _value, $Res Function(_$_LaunchesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? launches = null,
    Object? filterData = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_LaunchesState(
      launches: null == launches
          ? _value._launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<Launch>,
      filterData: null == filterData
          ? _value.filterData
          : filterData // ignore: cast_nullable_to_non_nullable
              as LaunchesFilterData,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 6, adapterName: 'LaunchesStateAdapter')
class _$_LaunchesState extends _LaunchesState {
  const _$_LaunchesState(
      {@HiveField(0) final List<Launch> launches = const [],
      @HiveField(1) this.filterData = const LaunchesFilterData(),
      @HiveField(2) this.updatedAt})
      : _launches = launches,
        super._();

  final List<Launch> _launches;
  @override
  @JsonKey()
  @HiveField(0)
  List<Launch> get launches {
    if (_launches is EqualUnmodifiableListView) return _launches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_launches);
  }

  @override
  @JsonKey()
  @HiveField(1)
  final LaunchesFilterData filterData;
  @override
  @HiveField(2)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'LaunchesState(launches: $launches, filterData: $filterData, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchesState &&
            const DeepCollectionEquality().equals(other._launches, _launches) &&
            (identical(other.filterData, filterData) ||
                other.filterData == filterData) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_launches), filterData, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchesStateCopyWith<_$_LaunchesState> get copyWith =>
      __$$_LaunchesStateCopyWithImpl<_$_LaunchesState>(this, _$identity);
}

abstract class _LaunchesState extends LaunchesState {
  const factory _LaunchesState(
      {@HiveField(0) final List<Launch> launches,
      @HiveField(1) final LaunchesFilterData filterData,
      @HiveField(2) final DateTime? updatedAt}) = _$_LaunchesState;
  const _LaunchesState._() : super._();

  @override
  @HiveField(0)
  List<Launch> get launches;
  @override
  @HiveField(1)
  LaunchesFilterData get filterData;
  @override
  @HiveField(2)
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchesStateCopyWith<_$_LaunchesState> get copyWith =>
      throw _privateConstructorUsedError;
}
