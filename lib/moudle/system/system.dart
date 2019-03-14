import 'package:flutter/material.dart';
import 'package:wanandroidlearn/network/netreqeuest.dart';
import 'package:wanandroidlearn/model/systemmodel.dart';
import 'package:wanandroidlearn/model/systemitemmodel.dart';
import 'package:wanandroidlearn/weight/loadingtext.dart';

/// 体系
class SystemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SystemPageState();
  }
}

class _SystemPageState extends State<SystemPage> {
  List<SystemItemModel> _datas = List();

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var listView = ListView.builder(
      itemCount: _datas.length,
      itemBuilder: (BuildContext context, int index) {
        return getItem(_datas[index]);
      },
    );
    if (_datas.length > 0) {
      return Center(
          child: listView);
    } else {
      return Center(child: Text("空空如也"));
    }

//     ,
  }

  Widget getItem(SystemItemModel item) {
    return Container(
      height: 100,
      color: Colors.blue,
      margin: EdgeInsets.all(4.0),
      child: Padding(padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
        child: Row(children: <Widget>[
          Text(item.name),
          Text('id::' + item.id?.toString())
        ]),
      ),
    );
  }

  void getData() {
    NetRequest netRequest = NetRequest();
    netRequest.getSystem((SystemModel bean) {
      print('SystemModel;;;' + bean.toString());
      setState(() {
        _datas = bean.data;
      });

    });
  }
}
