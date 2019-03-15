import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:wanandroidlearn/model/hirobumiitemmodel.dart';

class HirobumiDetail extends StatefulWidget {
  HiroBumiItemModel bean;

  HirobumiDetail(this.bean);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HirobumiDetailState();
  }

  HiroBumiItemModel getDetailBean() {
    return bean;
  }
}

class _HirobumiDetailState extends State<HirobumiDetail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.getDetailBean().title,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: widget.getDetailBean()?.link,
              appBar: AppBar(
                title: Text(widget.getDetailBean().title),
                leading: IconButton(icon: Icon(Icons.backspace), onPressed: (){
                  Navigator.maybePop(context);
                }),
              ),
            ),
      },
    );
//    return Container(child: Text(widget
//        .getDetailBean()
//        .link),);
  }
}
