// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Launch _$LaunchFromJson(Map<String, dynamic> json) {
  return _Launch.fromJson(json);
}

/// @nodoc
mixin _$Launch {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get upcoming => throw _privateConstructorUsedError;
  String get rocket => throw _privateConstructorUsedError;
  List<LaunchFailure> get failures => throw _privateConstructorUsedError;
  LaunchLinks get links => throw _privateConstructorUsedError;
  List<String> get crew => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_local')
  DateTime get dateLocal => throw _privateConstructorUsedError;
  @JsonKey(name: 'flight_number')
  int get flightNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchCopyWith<Launch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchCopyWith<$Res> {
  factory $LaunchCopyWith(Launch value, $Res Function(Launch) then) =
      _$LaunchCopyWithImpl<$Res, Launch>;
  @useResult
  $Res call(
      {String id,
      String name,
      bool upcoming,
      String rocket,
      List<LaunchFailure> failures,
      LaunchLinks links,
      List<String> crew,
      String? details,
      bool? success,
      @JsonKey(name: 'date_local') DateTime dateLocal,
      @JsonKey(name: 'flight_number') int flightNumber});

  $LaunchLinksCopyWith<$Res> get links;
}

/// @nodoc
class _$LaunchCopyWithImpl<$Res, $Val extends Launch>
    implements $LaunchCopyWith<$Res> {
  _$LaunchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? upcoming = null,
    Object? rocket = null,
    Object? failures = null,
    Object? links = null,
    Object? crew = null,
    Object? details = freezed,
    Object? success = freezed,
    Object? dateLocal = null,
    Object? flightNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      upcoming: null == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool,
      rocket: null == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String,
      failures: null == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as List<LaunchFailure>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LaunchLinks,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateLocal: null == dateLocal
          ? _value.dateLocal
          : dateLocal // ignore: cast_nullable_to_non_nullable
              as DateTime,
      flightNumber: null == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchLinksCopyWith<$Res> get links {
    return $LaunchLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LaunchCopyWith<$Res> implements $LaunchCopyWith<$Res> {
  factory _$$_LaunchCopyWith(_$_Launch value, $Res Function(_$_Launch) then) =
      __$$_LaunchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool upcoming,
      String rocket,
      List<LaunchFailure> failures,
      LaunchLinks links,
      List<String> crew,
      String? details,
      bool? success,
      @JsonKey(name: 'date_local') DateTime dateLocal,
      @JsonKey(name: 'flight_number') int flightNumber});

  @override
  $LaunchLinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$_LaunchCopyWithImpl<$Res>
    extends _$LaunchCopyWithImpl<$Res, _$_Launch>
    implements _$$_LaunchCopyWith<$Res> {
  __$$_LaunchCopyWithImpl(_$_Launch _value, $Res Function(_$_Launch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? upcoming = null,
    Object? rocket = null,
    Object? failures = null,
    Object? links = null,
    Object? crew = null,
    Object? details = freezed,
    Object? success = freezed,
    Object? dateLocal = null,
    Object? flightNumber = null,
  }) {
    return _then(_$_Launch(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      upcoming: null == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool,
      rocket: null == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String,
      failures: null == failures
          ? _value._failures
          : failures // ignore: cast_nullable_to_non_nullable
              as List<LaunchFailure>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LaunchLinks,
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateLocal: null == dateLocal
          ? _value.dateLocal
          : dateLocal // ignore: cast_nullable_to_non_nullable
              as DateTime,
      flightNumber: null == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Launch extends _Launch {
  const _$_Launch(
      {required this.id,
      required this.name,
      required this.upcoming,
      required this.rocket,
      required final List<LaunchFailure> failures,
      required this.links,
      required final List<String> crew,
      this.details,
      this.success,
      @JsonKey(name: 'date_local') required this.dateLocal,
      @JsonKey(name: 'flight_number') required this.flightNumber})
      : _failures = failures,
        _crew = crew,
        super._();

  factory _$_Launch.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool upcoming;
  @override
  final String rocket;
  final List<LaunchFailure> _failures;
  @override
  List<LaunchFailure> get failures {
    if (_failures is EqualUnmodifiableListView) return _failures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failures);
  }

  @override
  final LaunchLinks links;
  final List<String> _crew;
  @override
  List<String> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  final String? details;
  @override
  final bool? success;
  @override
  @JsonKey(name: 'date_local')
  final DateTime dateLocal;
  @override
  @JsonKey(name: 'flight_number')
  final int flightNumber;

  @override
  String toString() {
    return 'Launch(id: $id, name: $name, upcoming: $upcoming, rocket: $rocket, failures: $failures, links: $links, crew: $crew, details: $details, success: $success, dateLocal: $dateLocal, flightNumber: $flightNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Launch &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.upcoming, upcoming) ||
                other.upcoming == upcoming) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            const DeepCollectionEquality().equals(other._failures, _failures) &&
            (identical(other.links, links) || other.links == links) &&
            const DeepCollectionEquality().equals(other._crew, _crew) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.dateLocal, dateLocal) ||
                other.dateLocal == dateLocal) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      upcoming,
      rocket,
      const DeepCollectionEquality().hash(_failures),
      links,
      const DeepCollectionEquality().hash(_crew),
      details,
      success,
      dateLocal,
      flightNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchCopyWith<_$_Launch> get copyWith =>
      __$$_LaunchCopyWithImpl<_$_Launch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchToJson(
      this,
    );
  }
}

abstract class _Launch extends Launch {
  const factory _Launch(
          {required final String id,
          required final String name,
          required final bool upcoming,
          required final String rocket,
          required final List<LaunchFailure> failures,
          required final LaunchLinks links,
          required final List<String> crew,
          final String? details,
          final bool? success,
          @JsonKey(name: 'date_local') required final DateTime dateLocal,
          @JsonKey(name: 'flight_number') required final int flightNumber}) =
      _$_Launch;
  const _Launch._() : super._();

  factory _Launch.fromJson(Map<String, dynamic> json) = _$_Launch.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get upcoming;
  @override
  String get rocket;
  @override
  List<LaunchFailure> get failures;
  @override
  LaunchLinks get links;
  @override
  List<String> get crew;
  @override
  String? get details;
  @override
  bool? get success;
  @override
  @JsonKey(name: 'date_local')
  DateTime get dateLocal;
  @override
  @JsonKey(name: 'flight_number')
  int get flightNumber;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchCopyWith<_$_Launch> get copyWith =>
      throw _privateConstructorUsedError;
}
