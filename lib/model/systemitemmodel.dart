import 'package:json_annotation/json_annotation.dart';

part 'systemitemmodel.g.dart';

@JsonSerializable()
class SystemItemModel{
  String name;
  int id;

  SystemItemModel(this.name, this.id);

  factory SystemItemModel.fromJson(Map<String,dynamic> json) {
    return _$SystemItemModelFromJson(json);
  }


//    return SystemItemModel(json['name'] as String, json['id'] as String);


}