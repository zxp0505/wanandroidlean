import 'rootmodel.dart';
import 'hirobumiitemmodel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'hirobumiinnermodel.dart';

part 'hirobumimodel.g.dart';

@JsonSerializable()
class HiroBumiModel extends RootModel<HiroBumiInnerModel> {
  HiroBumiModel(HiroBumiInnerModel data, int errorCode, String errorMsg)
      : super(data, errorCode, errorMsg);

  factory HiroBumiModel.fromJson(Map<String,dynamic> json){
    return _$HiroBumiModelFromJson(json);
  }

}

