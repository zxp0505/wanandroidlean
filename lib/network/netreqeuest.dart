import 'dart:io';
import 'package:dio/dio.dart';
import 'package:wanandroidlearn/model/hirobumimodel.dart';
import 'package:wanandroidlearn/model/systemmodel.dart';

/**
 * 网络请求
 */
class NetRequest {
  String hirobumiurl = 'http://www.wanandroid.com/article/list/0/json';
  String systemurl = 'https://www.wanandroid.com/tree/json'; //体系结构

  void getHirobumi(Function callback) async {
    Dio dio = Dio();
    Response response = await dio.get(hirobumiurl) as Response;
    print(response.data.toString());
    callback(HiroBumiModel.fromJson(response.data));
  }

  /**
   * 获取体系结构数据
   */
  void getSystem(Function callback) async {
    Dio dio = Dio();
    Response response = await dio.get(systemurl) as Response;
    print(response.toString());
    callback(SystemModel.fromJson(response.data));
  }
}
