import 'dart:io';
import 'hirobumiitemmodel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hirobumiinnermodel.g.dart';

@JsonSerializable()
class HiroBumiInnerModel {
int type;
int zan;
int size;
int pageCount ;
List<HiroBumiItemModel>  datas;

HiroBumiInnerModel(this.type, this.zan, this.size, this.pageCount, this.datas);

factory HiroBumiInnerModel.fromJson(Map<String,dynamic> json){

  return _$HiroBumiInnerModelFromJson(json);
}

}