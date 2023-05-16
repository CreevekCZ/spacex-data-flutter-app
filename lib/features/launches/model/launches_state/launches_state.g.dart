// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LaunchesStateAdapter extends TypeAdapter<_$_LaunchesState> {
  @override
  final int typeId = 6;

  @override
  _$_LaunchesState read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LaunchesState(
      launches: (fields[0] as List).cast<Launch>(),
      filterData: fields[1] as LaunchesFilterData,
      updatedAt: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LaunchesState obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.filterData)
      ..writeByte(2)
      ..write(obj.updatedAt)
      ..writeByte(0)
      ..write(obj.launches);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LaunchesStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
