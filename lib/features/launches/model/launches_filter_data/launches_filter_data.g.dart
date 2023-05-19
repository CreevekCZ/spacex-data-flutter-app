// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_filter_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LaunchesFilterDataAdapter extends TypeAdapter<_$_LaunchesFilterData> {
  @override
  final int typeId = 1;

  @override
  _$_LaunchesFilterData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LaunchesFilterData(
      searchTerm: fields[1] as String?,
      year: fields[2] as String?,
      success: fields[3] as bool?,
      onlyWithImages: fields[4] as bool?,
      hasCrew: fields[5] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LaunchesFilterData obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.searchTerm)
      ..writeByte(2)
      ..write(obj.year)
      ..writeByte(3)
      ..write(obj.success)
      ..writeByte(4)
      ..write(obj.onlyWithImages)
      ..writeByte(5)
      ..write(obj.hasCrew);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LaunchesFilterDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
