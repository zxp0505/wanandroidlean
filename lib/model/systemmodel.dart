import 'rootmodel.dart';
import 'systemitemmodel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'systemmodel.g.dart';


@JsonSerializable()
class SystemModel extends RootModel<List<SystemItemModel>> {
  SystemModel(List<SystemItemModel> data, int errorCode, String errorMsg)
      : super(data, errorCode, errorMsg);

  factory SystemModel.fromJson(Map<String, dynamic> json) {
    return _$SystemModelFromJson(json);
  }
}
