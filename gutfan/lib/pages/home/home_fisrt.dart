import 'package:flutter/material.dart';
import '../../config/theme.dart';

class HomeFirst extends StatefulWidget {
  @override
  _HomeFirstState createState() => _HomeFirstState();
}

class _HomeFirstState extends State<HomeFirst> with SingleTickerProviderStateMixin {
  int _cunrrentIndex;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _cunrrentIndex = 1;
    _tabController = TabController(
      initialIndex: _cunrrentIndex,
      vsync: this,  //动画效果的异步处理，默认格式，背下来即可
      length: 7     //需要控制的Tab页数量
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.0),
        child: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 0.0,
          centerTitle: true,
          title: TabBar(
            controller: _tabController,
            tabs: <Tab>[
              Tab(text: 'tab1',),
              Tab(text: 'tab2',),
              Tab(text: 'tab3',),
              Tab(text: 'tab4',),
              Tab(text: 'tab5',),
              Tab(text: 'tab6',),
              Tab(text: 'tab7',),
            ],
            labelColor: Colors.grey[500],
            indicatorColor: ThemeColors.primaryColor,
            isScrollable: true,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:  [
          Scrollbar(child: Container(
            padding:const EdgeInsets.all(10.0),
            color: Colors.grey[300],
            child: ListView(
              children: <Widget>[
                Text('123'),
                Text('haha'),
                Text('123'),
                Text('haha'),
                GridView(
                  shrinkWrap: true, // 为了解决RenderBox报错
                  physics:ScrollPhysics(), // 为了解决GridView滚动失效
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                    childAspectRatio: 0.7
                  ),
                  children: <Widget>[
                    Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
                    Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
                  ],
                ),
              ],
            ),
          )),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.indigo,
          ),
        ]
      ),
    );
  }
}