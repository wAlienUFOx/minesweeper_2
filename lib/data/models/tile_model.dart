import 'package:json_annotation/json_annotation.dart';

part 'tile_model.g.dart';

@JsonSerializable()
class TileModel {
  @JsonKey(name: "x")
  final int x;
  @JsonKey(name: "y")
  final int y;
  @JsonKey(name: "hasMine")
  bool hasMine;
  @JsonKey(name: "digit")
  int digit;
  @JsonKey(name: "isOpen")
  bool isOpen;
  @JsonKey(name: "hasFlag")
  bool hasFlag;
  @JsonKey(name: "ignore")
  bool ignore;

  TileModel({
    required this.x,
    required this.y,
    this.hasMine = false,
    this.digit = 0,
    this.isOpen = false,
    this.hasFlag = false,
    this.ignore = false,
  });

  factory TileModel.fromJson(Map<String, dynamic> json) => _$TileModelFromJson(json);
  Map<String, dynamic> toJson() => _$TileModelToJson(this);
}
