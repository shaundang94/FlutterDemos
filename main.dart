// Flutter移动应用（视频） https://www.bilibili.com/video/BV1p441177uV?p=15&spm_id_from=pageDriver
// 作者的项目库 https://github.com/ninghao/ninghao_flutter

import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // StatelessWidget：无变化的静态页面
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp：内置的一套UI体系
      debugShowCheckedModeBanner: false, // 显示右上角debug标识
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.brown,
          highlightColor: Color(0), // 按住时的高亮效果
          splashColor: Color(0)), // 按住后水波纹效果
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        // 标签放tabBar里，标签内容放tabBarView里面，两者放tabController里
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            // leading: IconButton( // 有了drawer后会自动添加左上角菜单按钮
            //   onPressed: () => debugPrint('onPressed: Menu.'),
            //   icon: const Icon(Icons.menu),
            //   tooltip: 'Navigation',
            // ),
            actions: [
              IconButton(
                onPressed: () => debugPrint('onPressed: Search.'),
                icon: Icon(Icons.search),
                tooltip: 'Search',
              ),
              IconButton(
                onPressed: () => debugPrint('onPressed: Add.'),
                icon: Icon(Icons.add),
                tooltip: 'Add',
              ),
            ],
            elevation: 0.0,
            bottom: const TabBar(
                unselectedLabelColor: Colors.black38, // 未选中时的颜色
                indicatorColor: Colors.black54, // 底部滑块
                indicatorSize: TabBarIndicatorSize.label, // 只有图标那么宽
                indicatorWeight: 8.0,
                tabs: [
                  Tab(
                    icon: Icon(Icons.local_florist),
                  ),
                  Tab(
                    icon: Icon(Icons.change_history),
                  ),
                  Tab(
                    icon: Icon(Icons.directions_bike),
                  ),
                ]),
          ),
          // body: ListViewDemo(),
          body: const TabBarView(children: [
            Icon(
              Icons.local_florist,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.change_history,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.directions_bike,
              size: 128.0,
              color: Colors.black12,
            ),
          ]),
          drawer: Drawer(
            // 抽屉/左侧边栏
            child: ListView(
              children: [
                const DrawerHeader(
                  child: Text("header"),
                  decoration: BoxDecoration(color: Colors.black12),
                ),
                ListTile(
                  title: const Text(
                    'Message',
                    textAlign: TextAlign.left,
                  ),
                  trailing: const Icon(
                    Icons.message,
                    color: Colors.black12,
                    size: 22.0,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                const ListTile(
                  title: Text(
                    'Favorite',
                    textAlign: TextAlign.left,
                  ),
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.black12,
                    size: 22.0,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
