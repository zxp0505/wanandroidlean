// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hirobumiinnermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HiroBumiInnerModel _$HiroBumiInnerModelFromJson(Map<String, dynamic> json) {
  return HiroBumiInnerModel(
      json['type'] as int,
      json['zan'] as int,
      json['size'] as int,
      json['pageCount'] as int,
      (json['datas'] as List)
          ?.map((e) => e == null
              ? null
              : HiroBumiItemModel.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$HiroBumiInnerModelToJson(HiroBumiInnerModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'zan': instance.zan,
      'size': instance.size,
      'pageCount': instance.pageCount,
      'datas': instance.datas
    };
