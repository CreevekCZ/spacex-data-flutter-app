// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crews_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CrewsState _$CrewsStateFromJson(Map<String, dynamic> json) {
  return _CrewsState.fromJson(json);
}

/// @nodoc
mixin _$CrewsState {
  @HiveField(0)
  List<Crew> get crews => throw _privateConstructorUsedError;
  @HiveField(1)
  CrewsFilterData get filterData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrewsStateCopyWith<CrewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewsStateCopyWith<$Res> {
  factory $CrewsStateCopyWith(
          CrewsState value, $Res Function(CrewsState) then) =
      _$CrewsStateCopyWithImpl<$Res, CrewsState>;
  @useResult
  $Res call(
      {@HiveField(0) List<Crew> crews,
      @HiveField(1) CrewsFilterData filterData});

  $CrewsFilterDataCopyWith<$Res> get filterData;
}

/// @nodoc
class _$CrewsStateCopyWithImpl<$Res, $Val extends CrewsState>
    implements $CrewsStateCopyWith<$Res> {
  _$CrewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crews = null,
    Object? filterData = null,
  }) {
    return _then(_value.copyWith(
      crews: null == crews
          ? _value.crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
      filterData: null == filterData
          ? _value.filterData
          : filterData // ignore: cast_nullable_to_non_nullable
              as CrewsFilterData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CrewsFilterDataCopyWith<$Res> get filterData {
    return $CrewsFilterDataCopyWith<$Res>(_value.filterData, (value) {
      return _then(_value.copyWith(filterData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CrewsStateCopyWith<$Res>
    implements $CrewsStateCopyWith<$Res> {
  factory _$$_CrewsStateCopyWith(
          _$_CrewsState value, $Res Function(_$_CrewsState) then) =
      __$$_CrewsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<Crew> crews,
      @HiveField(1) CrewsFilterData filterData});

  @override
  $CrewsFilterDataCopyWith<$Res> get filterData;
}

/// @nodoc
class __$$_CrewsStateCopyWithImpl<$Res>
    extends _$CrewsStateCopyWithImpl<$Res, _$_CrewsState>
    implements _$$_CrewsStateCopyWith<$Res> {
  __$$_CrewsStateCopyWithImpl(
      _$_CrewsState _value, $Res Function(_$_CrewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crews = null,
    Object? filterData = null,
  }) {
    return _then(_$_CrewsState(
      crews: null == crews
          ? _value._crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
      filterData: null == filterData
          ? _value.filterData
          : filterData // ignore: cast_nullable_to_non_nullable
              as CrewsFilterData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 9, adapterName: 'CrewsStateAdapter')
class _$_CrewsState extends _CrewsState {
  const _$_CrewsState(
      {@HiveField(0) final List<Crew> crews = const [],
      @HiveField(1) this.filterData = const CrewsFilterData()})
      : _crews = crews,
        super._();

  factory _$_CrewsState.fromJson(Map<String, dynamic> json) =>
      _$$_CrewsStateFromJson(json);

  final List<Crew> _crews;
  @override
  @JsonKey()
  @HiveField(0)
  List<Crew> get crews {
    if (_crews is EqualUnmodifiableListView) return _crews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crews);
  }

  @override
  @JsonKey()
  @HiveField(1)
  final CrewsFilterData filterData;

  @override
  String toString() {
    return 'CrewsState(crews: $crews, filterData: $filterData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CrewsState &&
            const DeepCollectionEquality().equals(other._crews, _crews) &&
            (identical(other.filterData, filterData) ||
                other.filterData == filterData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_crews), filterData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CrewsStateCopyWith<_$_CrewsState> get copyWith =>
      __$$_CrewsStateCopyWithImpl<_$_CrewsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CrewsStateToJson(
      this,
    );
  }
}

abstract class _CrewsState extends CrewsState {
  const factory _CrewsState(
      {@HiveField(0) final List<Crew> crews,
      @HiveField(1) final CrewsFilterData filterData}) = _$_CrewsState;
  const _CrewsState._() : super._();

  factory _CrewsState.fromJson(Map<String, dynamic> json) =
      _$_CrewsState.fromJson;

  @override
  @HiveField(0)
  List<Crew> get crews;
  @override
  @HiveField(1)
  CrewsFilterData get filterData;
  @override
  @JsonKey(ignore: true)
  _$$_CrewsStateCopyWith<_$_CrewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
