import 'package:flutter/material.dart';
import 'package:wanandroidlearn/moudle/hirobumi/hirobumi.dart';
import 'package:wanandroidlearn/moudle/mine/mine.dart';
import 'package:wanandroidlearn/moudle/product/product.dart';
import 'package:wanandroidlearn/moudle/publiccode/publiccode.dart';
import 'package:wanandroidlearn/moudle/system/system.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  static List types = ['博文','项目', '公众号','体系','我'];
  List tabData = [
    {'text': types[0], 'icon': new Icon(Icons.school)},//new Image.asset('assets/hiro.png',width: 16,height: 16,)
    {'text': types[1], 'icon': new Icon(Icons.airplanemode_active)},
    {'text': types[2], 'icon': new Icon(Icons.domain)},
    {'text': types[3], 'icon': new Icon(Icons.airline_seat_legroom_normal)},
    {'text': types[4], 'icon': new Icon(Icons.person)},
  ];
  TabController tabController;
  List<Widget> myTabs = [];

  @override
  void initState() {
    super.initState();
    tabController = new TabController(initialIndex: 0, vsync: this, length: 5);
    for (int i = 0; i < tabData.length; i++) {
      myTabs.add(Tab(
        text: tabData[i]['text'],
        icon: tabData[i]['icon'],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text('appbar')),
      body: new TabBarView(controller: tabController, children: <Widget>[
        new HirobumiPage(types[0]),
        new ProductPage(types[1]),
        PublicCodePage(),
        SystemPage(),
        MinePage()
      ]),
      bottomNavigationBar: Material(
        color: const Color(0xff8A8A8A),
        child: SafeArea(
            child: Container(
          height: 65.0,
          child: TabBar(controller: tabController, tabs: myTabs),
        )),
      ),

//      bottomNavigationBar: Material(child: TabBar(controller:tabController,tabs: myTabs),),
    );
  }

  void test(){
    tabData.forEach((i) => print(""));
  }
}
