// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hirobumimodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HiroBumiModel _$HiroBumiModelFromJson(Map<String, dynamic> json) {
  return HiroBumiModel(
      json['data'] == null
          ? null
          : HiroBumiInnerModel.fromJson(json['data'] as Map<String, dynamic>),
      json['errorCode'] as int,
      json['errorMsg'] as String);
}

Map<String, dynamic> _$HiroBumiModelToJson(HiroBumiModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg
    };
