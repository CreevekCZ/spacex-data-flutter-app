import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_failure.freezed.dart';
part 'launch_failure.g.dart';

@freezed
class LaunchFailure with _$LaunchFailure {
  const factory LaunchFailure({
    required int time,
    required int? altitude,
    required String reason,
  }) = _LaunchFailure;

  factory LaunchFailure.fromJson(Map<String, dynamic> json) =>
      _$LaunchFailureFromJson(json);
}
