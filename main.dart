// Flutter移动应用（视频） https://www.bilibili.com/video/BV1p441177uV?p=15&spm_id_from=pageDriver
// 作者的项目库 https://github.com/ninghao/ninghao_flutter

import 'package:flutter/material.dart';
import 'demo/listview-demo.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // 显示右上角debug标识
    home: Home(),
    theme: ThemeData(primarySwatch: Colors.brown),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text("first flutter app"), elevation: 0.0),
      body: ListViewDemo(),
    );
  }
}

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//         child: Text('hello2',
//             textDirection: TextDirection.ltr,
//             style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)));
//   }
// }
