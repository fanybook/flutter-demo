import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: Colors.pink[300],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin {
  int _currentIndex;
  PageController _pageController;
  List<Widget> _pages;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;

    _tabController = TabController(
      vsync: this,  //动画效果的异步处理，默认格式，背下来即可
      length: 7     //需要控制的Tab页数量
    );

    _pageController = PageController(initialPage: _currentIndex);
    _pages = <Widget>[
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
    ];
  }

  @override
  void dispose() {
    //当整个页面dispose时，记得把控制器也dispose掉，释放内存
    _tabController .dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), // i want to set second AppBar's height
          child: AppBar(
            // titleSpacing: 0.0,
            title: Text('彼得老哥', style: TextStyle(fontSize: 16.0),),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40.0), // i want to set second AppBar's height
              child: Container(
                height: 40.0,
                child: AppBar(
                  backgroundColor: Colors.white,
                  titleSpacing: 0.0,
                  title: TabBar(
                    controller: _tabController,
                    tabs: <Tab>[
                      Tab(text: '首页',),
                      Tab(text: 'Hot！',),
                      Tab(text: '发现精彩',),
                      Tab(text: '美腿写真',),
                      Tab(text: '尤蜜荟',),
                      Tab(text: '蜜桃社',),
                      Tab(text: '美丝',),
                    ],
                    labelColor: Colors.grey[500],
                    indicatorColor: Colors.pink[300],
                    isScrollable: true,
                  ),
                ),
              ),
            ),
          ),
      ),
      body: TabBarView(//TabBarView呈现内容，因此放到Scaffold的body中
        controller: _tabController,      //配置控制器
        children:  [      //注意顺序与TabBar保持一直
          Container(
            color: Colors.red,
          ),
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
      // body: PageView.builder(
      //   itemBuilder: (BuildContext context, int index) {
      //     return _pages[index];
      //   },
      //   controller: _pageController,
      //   itemCount: _pages.length,
      // ),
    );
  }
}
