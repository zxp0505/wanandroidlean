import 'package:flutter/material.dart';
import 'package:wanandroidlearn/model/hirobumimodel.dart';
import 'package:wanandroidlearn/model/hirobumiitemmodel.dart';
import 'package:wanandroidlearn/network/netreqeuest.dart';
import 'package:wanandroidlearn/weight/loadingtext.dart';

/**
 * 博文
 */

class HirobumiPage extends StatefulWidget {
  var name;

  HirobumiPage(this.name) : super();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HirobumiPageState(name);
  }
}

class _HirobumiPageState extends State<HirobumiPage> {
  List<HiroBumiItemModel> _datas = List();
  var name;

  _HirobumiPageState(this.name) : super();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    if (_datas.length == 0) {
      return Center(
        child: LoadingText("loading"),
      );
    }
    var listView = ListView.builder(
        itemCount: _datas.length,
        itemBuilder: (BuildContext context, int index) {
         return getItem(_datas[index]);
        });
    return new Center(
      child: listView,
//      child: IconButton(
//        icon: Icon(Icons.print),
//        onPressed: () {
//          getdata();
//        },
//      ),
    );
  }

  getItem(HiroBumiItemModel item) {
    return new Column(
      children: <Widget>[
        Text(item.title),
        Row(
          children: <Widget>[Text(item.superChapterName), Text(item.author)],
        )
      ],
    );
  }

  void getdata() {
    // ignore: named_function_expression
    new NetRequest().getHirobumi((HiroBumiModel bean) {
      print('getHirobumi:' + bean.toString());
      setState(() {
        _datas = bean?.data?.datas;
      });
    });
  }
}
