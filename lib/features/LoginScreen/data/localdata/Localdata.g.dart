// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Localdata.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class localtokenAdapter extends TypeAdapter<localtoken> {
  @override
  final int typeId = 1;

  @override
  localtoken read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return localtoken(
      fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, localtoken obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is localtokenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
