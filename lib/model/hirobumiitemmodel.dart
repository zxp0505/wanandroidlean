import 'dart:io';
import 'package:json_annotation/json_annotation.dart';

part 'hirobumiitemmodel.g.dart';

@JsonSerializable()
class HiroBumiItemModel{
  HiroBumiItemModel(this.apkLink,this.author,this.chapterId,this.chapterName,this.collect,this.courseId,this.desc,this.envelope,this.link,this.superChapterName,this.title);
  String apkLink;
  String author;
  int  chapterId;
  String chapterName;
  bool collect;
  int courseId;
  String desc;
  String envelope;
  String link;
  String superChapterName;
  String title;

//  工厂方法
  factory  HiroBumiItemModel.fromJson(Map<String,dynamic> json){
    return _$HiroBumiItemModelFromJson(json);
//    return HiroBumiItemModel(json['apkLink'] as String,
//        json['author'] as String,
//        json['chapterId'] as String,
//        json['chapterName'] as String,
//        json['collect'] as bool,
//        json['courseId'] as String,
//        json['desc'] as String,
//        json['envelope'] as String,
//        json['link'] as String,
//        json['superChapterName'] as String,
//        json['title'] as String);

  }
}