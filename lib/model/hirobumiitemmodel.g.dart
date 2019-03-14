// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hirobumiitemmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HiroBumiItemModel _$HiroBumiItemModelFromJson(Map<String, dynamic> json) {
  return HiroBumiItemModel(
      json['apkLink'] as String,
      json['author'] as String,
      json['chapterId'] as int,
      json['chapterName'] as String,
      json['collect'] as bool,
      json['courseId'] as int,
      json['desc'] as String,
      json['envelope'] as String,
      json['link'] as String,
      json['superChapterName'] as String,
      json['title'] as String);
}

Map<String, dynamic> _$HiroBumiItemModelToJson(HiroBumiItemModel instance) =>
    <String, dynamic>{
      'apkLink': instance.apkLink,
      'author': instance.author,
      'chapterId': instance.chapterId,
      'chapterName': instance.chapterName,
      'collect': instance.collect,
      'courseId': instance.courseId,
      'desc': instance.desc,
      'envelope': instance.envelope,
      'link': instance.link,
      'superChapterName': instance.superChapterName,
      'title': instance.title
    };
