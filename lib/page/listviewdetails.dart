import 'package:flutter/material.dart';

import '../modules/dataModule.dart';
class listviewdetails extends StatelessWidget {
  late Item item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Image.network(item.image),));
  }
}
