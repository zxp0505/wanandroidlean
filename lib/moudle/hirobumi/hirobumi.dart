import 'package:flutter/material.dart';
import 'package:wanandroidlearn/model/hirobumimodel.dart';
import 'package:wanandroidlearn/model/hirobumiitemmodel.dart';
import 'package:wanandroidlearn/network/netreqeuest.dart';
import 'package:wanandroidlearn/weight/loadingtext.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wanandroidlearn/moudle/hirobumi/hirobumidetail.dart';

/**
 * 博文
 */

class HirobumiPage extends StatefulWidget {
  var name;

  //    滚动监听器
  ScrollController scrollController = ScrollController();

  HirobumiPage(this.name) : super();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HirobumiPageState(name);
  }
}

class _HirobumiPageState extends State<HirobumiPage> {
  List<HiroBumiItemModel> _datas = List();
  int currentPageIndex = 0; //当前页面下标
  var name;

  Container loadingMoreView = Container(alignment:Alignment.center,padding: EdgeInsets.all(10),
    child: SizedBox(width:30,height: 30, child: Opacity(opacity: 1.0,child: CircularProgressIndicator(),),),);

  _HirobumiPageState(this.name) : super();

  @override
  void initState() {
    super.initState();
    print('initState');
    widget.scrollController.addListener(_updateScrollPosition);
    getdata(0);
  }

  @override
  void dispose() {
    print('dispose');
    widget.scrollController.removeListener(_updateScrollPosition);
    super.dispose();
  }

  void _updateScrollPosition() {
//    当滚动监听器滚动的像素位置 == 最大的滚动量
  print('滚动的当前位置:${widget.scrollController.position.pixels}--最大位置：${widget.scrollController.position.maxScrollExtent}');
    bool isBouttom = widget.scrollController.position.pixels ==
        widget.scrollController.position.maxScrollExtent;
    if (isBouttom) {
      setState(() {
        getMoreData();
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    if (_datas.length == 0) {
      return Center(
        child: LoadingText("loading"),
      );
    }


    var listView = ListView.builder(
      controller: widget.scrollController,
      itemCount: _datas.length+1,
      itemBuilder: (BuildContext context, int index) {
        if (index == _datas.length) {
          //加载更多 todo
          return loadingMoreView;
        }
        return getItem(_datas[index]);
      }, physics: const AlwaysScrollableScrollPhysics(),);
    Container(child: RefreshIndicator(child: listView, onRefresh: refresh),);
    return Container(
      child: RefreshIndicator(child: listView, onRefresh: refresh),);
  }

  getItem(HiroBumiItemModel item) {
    return GestureDetector(onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (BuildContext context) {
        return HirobumiDetail(item);
      }));
//      Fluttertoast.showToast(msg: item.title,gravity: ToastGravity.CENTER,backgroundColor: Colors.amberAccent);
    }, child: Card(
      color: Colors.blue,
      margin: EdgeInsets.all(10),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
            child: Text(item.title,
              style: TextStyle(fontSize: 18, color: Colors.deepPurple),),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
            child: Row(
              children: <Widget>[
                Text(item.superChapterName,),
                Text(item.author)
              ],
            ),
          ),
        ],
      ),
    ),);
  }

  Future<Null> refresh() async {
    await getdata(0);
    return null;
  }

  void getMoreData() {
    getdata(currentPageIndex + 1);
  }

  void getdata(int page) {
    // ignore: named_function_expression
    new NetRequest().getHirobumi(page, (HiroBumiModel bean) {
      print('getHirobumi:' + bean.toString());
      setState(() {
        currentPageIndex = page;
        if(page == 0){
          _datas.clear();
        }
        _datas.addAll(bean?.data?.datas);
      });
    });
  }
}
