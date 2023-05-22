import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spacexplorer/core/helpers/interfaces/identifiable.dart';

part 'crew.freezed.dart';
part 'crew.g.dart';

@freezed
class Crew with _$Crew implements Identifiable {
  @HiveType(typeId: 7, adapterName: 'CrewAdapter')
  const factory Crew({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String agency,
    @HiveField(3) required String image,
    @HiveField(4) required String wikipedia,
    @HiveField(5) required List<String> launches,
    @HiveField(6) required String status,
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);

  const Crew._();

  @override
  String get identifier => id;
}
