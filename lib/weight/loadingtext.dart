import 'dart:io';
import 'package:flutter/material.dart';

class LoadingText extends StatelessWidget{
  var msg;
  LoadingText(this.msg);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(msg == null ?"疯狂loading......":msg);
  }

}