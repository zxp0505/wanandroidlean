import 'package:flutter/material.dart';

/**
 * 项目
 */
class ProductPage extends StatefulWidget {
  var name;
  ProductPage(this.name):super();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductPageState(name);
  }
}

class _ProductPageState extends State<ProductPage> {
  var name;
  _ProductPageState(this.name):super();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('项目'),
    );
  }
}
