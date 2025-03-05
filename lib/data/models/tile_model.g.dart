// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TileModel _$TileModelFromJson(Map<String, dynamic> json) => TileModel(
  x: (json['x'] as num).toInt(),
  y: (json['y'] as num).toInt(),
  hasMine: json['hasMine'] as bool? ?? false,
  digit: (json['digit'] as num?)?.toInt() ?? 0,
  isOpen: json['isOpen'] as bool? ?? false,
  hasFlag: json['hasFlag'] as bool? ?? false,
  ignore: json['ignore'] as bool? ?? false,
);

Map<String, dynamic> _$TileModelToJson(TileModel instance) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
  'hasMine': instance.hasMine,
  'digit': instance.digit,
  'isOpen': instance.isOpen,
  'hasFlag': instance.hasFlag,
  'ignore': instance.ignore,
};
