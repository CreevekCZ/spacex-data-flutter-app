// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchLinks _$LaunchLinksFromJson(Map<String, dynamic> json) {
  return _LaunchLinks.fromJson(json);
}

/// @nodoc
mixin _$LaunchLinks {
  LaunchPatch? get patch => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get wikipedia => throw _privateConstructorUsedError;
  @JsonKey(name: 'youtube_id')
  String? get youtubeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchLinksCopyWith<LaunchLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchLinksCopyWith<$Res> {
  factory $LaunchLinksCopyWith(
          LaunchLinks value, $Res Function(LaunchLinks) then) =
      _$LaunchLinksCopyWithImpl<$Res, LaunchLinks>;
  @useResult
  $Res call(
      {LaunchPatch? patch,
      String? article,
      String? wikipedia,
      @JsonKey(name: 'youtube_id') String? youtubeId});

  $LaunchPatchCopyWith<$Res>? get patch;
}

/// @nodoc
class _$LaunchLinksCopyWithImpl<$Res, $Val extends LaunchLinks>
    implements $LaunchLinksCopyWith<$Res> {
  _$LaunchLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patch = freezed,
    Object? article = freezed,
    Object? wikipedia = freezed,
    Object? youtubeId = freezed,
  }) {
    return _then(_value.copyWith(
      patch: freezed == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as LaunchPatch?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchPatchCopyWith<$Res>? get patch {
    if (_value.patch == null) {
      return null;
    }

    return $LaunchPatchCopyWith<$Res>(_value.patch!, (value) {
      return _then(_value.copyWith(patch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LaunchLinksCopyWith<$Res>
    implements $LaunchLinksCopyWith<$Res> {
  factory _$$_LaunchLinksCopyWith(
          _$_LaunchLinks value, $Res Function(_$_LaunchLinks) then) =
      __$$_LaunchLinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LaunchPatch? patch,
      String? article,
      String? wikipedia,
      @JsonKey(name: 'youtube_id') String? youtubeId});

  @override
  $LaunchPatchCopyWith<$Res>? get patch;
}

/// @nodoc
class __$$_LaunchLinksCopyWithImpl<$Res>
    extends _$LaunchLinksCopyWithImpl<$Res, _$_LaunchLinks>
    implements _$$_LaunchLinksCopyWith<$Res> {
  __$$_LaunchLinksCopyWithImpl(
      _$_LaunchLinks _value, $Res Function(_$_LaunchLinks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patch = freezed,
    Object? article = freezed,
    Object? wikipedia = freezed,
    Object? youtubeId = freezed,
  }) {
    return _then(_$_LaunchLinks(
      patch: freezed == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as LaunchPatch?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LaunchLinks implements _LaunchLinks {
  const _$_LaunchLinks(
      {this.patch,
      this.article,
      this.wikipedia,
      @JsonKey(name: 'youtube_id') this.youtubeId});

  factory _$_LaunchLinks.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchLinksFromJson(json);

  @override
  final LaunchPatch? patch;
  @override
  final String? article;
  @override
  final String? wikipedia;
  @override
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;

  @override
  String toString() {
    return 'LaunchLinks(patch: $patch, article: $article, wikipedia: $wikipedia, youtubeId: $youtubeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchLinks &&
            (identical(other.patch, patch) || other.patch == patch) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.wikipedia, wikipedia) ||
                other.wikipedia == wikipedia) &&
            (identical(other.youtubeId, youtubeId) ||
                other.youtubeId == youtubeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, patch, article, wikipedia, youtubeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchLinksCopyWith<_$_LaunchLinks> get copyWith =>
      __$$_LaunchLinksCopyWithImpl<_$_LaunchLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchLinksToJson(
      this,
    );
  }
}

abstract class _LaunchLinks implements LaunchLinks {
  const factory _LaunchLinks(
      {final LaunchPatch? patch,
      final String? article,
      final String? wikipedia,
      @JsonKey(name: 'youtube_id') final String? youtubeId}) = _$_LaunchLinks;

  factory _LaunchLinks.fromJson(Map<String, dynamic> json) =
      _$_LaunchLinks.fromJson;

  @override
  LaunchPatch? get patch;
  @override
  String? get article;
  @override
  String? get wikipedia;
  @override
  @JsonKey(name: 'youtube_id')
  String? get youtubeId;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchLinksCopyWith<_$_LaunchLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
