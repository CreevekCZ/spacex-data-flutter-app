import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'crews_filter_data.freezed.dart';
part 'crews_filter_data.g.dart';

@freezed
class CrewsFilterData with _$CrewsFilterData {
  @HiveType(typeId: 8, adapterName: 'CrewsFilterDataAdapter')
  const factory CrewsFilterData({
    @HiveField(0) String? searchTerm,
    @HiveField(1) String? agency,
  }) = _CrewsFilterData;

  factory CrewsFilterData.fromJson(Map<String, dynamic> json) =>
      _$CrewsFilterDataFromJson(json);

      
}
