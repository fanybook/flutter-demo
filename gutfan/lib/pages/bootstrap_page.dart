import 'package:flutter/material.dart';

import 'package:gutfan/pages/drawer/view_history.dart';
import 'package:gutfan/pages/drawer/offline_cache.dart';
import 'package:gutfan/pages/drawer/favorites.dart';
import 'package:gutfan/pages/drawer/followings.dart';
import 'package:gutfan/pages/drawer/contribute.dart';
import 'package:gutfan/pages/drawer/contact_css.dart';
import 'package:gutfan/pages/home/home_fisrt.dart';

// class NavigationIconView {
//   // final String _title;
//   // final Widget _icon;
//   // final Widget _activeIcon;
//   final BottomNavigationBarItem item;

//   NavigationIconView({Key key, String title, Widget icon, Widget activeIcon}) :
//     // _title = title,
//     // _icon = icon,
//     // _activeIcon = activeIcon,
//     item = BottomNavigationBarItem(
//       icon: icon,
//       activeIcon: activeIcon,
//       title: Text(title),
//       backgroundColor: Colors.white,
//     );
// }

class BootstrapPage extends StatefulWidget {
  @override
  _BootstrapPageState createState() => _BootstrapPageState();
}

class _BootstrapPageState extends State<BootstrapPage> {
  int _currentIndex;
  List<BottomNavigationBarItem> _navigationItems;
  PageController _pageController;


  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _navigationItems = [
      BottomNavigationBarItem(
        title: Text('Home', style: TextStyle(fontSize: 10.0)),
        icon: Icon(Icons.home),
        activeIcon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        title: Text('Channel', style: TextStyle(fontSize: 10.0)),
        icon: Icon(Icons.radio),
        activeIcon: Icon(Icons.radio),
      ),
      BottomNavigationBarItem(
        title: Text('Circle', style: TextStyle(fontSize: 10.0)),
        icon: Icon(Icons.camera),
        activeIcon: Icon(Icons.camera),
      ),
      BottomNavigationBarItem(
        title: Text('Cart', style: TextStyle(fontSize: 10.0)),
        icon: Icon(Icons.shopping_cart),
        activeIcon: Icon(Icons.shopping_cart),
      ),
    ];
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar btmNavBar = BottomNavigationBar(
      items: _navigationItems.toList(),
      iconSize: 20.0,
      // fixedColor: Colors.green[300],
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(_currentIndex,
            duration: Duration(microseconds: 200), curve: Curves.easeInOut
          );
        });
      },
    );

    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   title: Text('橡胶.D.霸气'),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.add_alarm),
      //       tooltip: 'Add Alarm',
      //       onPressed: () {
      //         // do nothing
      //       }
      //     ),
      //     PopupMenuButton<String>(
      //       icon: Icon(Icons.add),
      //       offset: Offset(0, 55),
      //       padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      //       itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
      //         PopupMenuItem<String>(
      //           value: "scan",
      //           child: Row(
      //             children: <Widget>[
      //               Icon(Icons.all_out),
      //               Text('    扫一扫'),
      //             ],
      //           ),
      //         ),
      //         PopupMenuItem<String>(
      //           value: "price",
      //           child: Row(
      //             children: <Widget>[
      //               Icon(Icons.mail_outline),
      //               Text('    意见反馈'),
      //             ],
      //           )
      //         ),
      //         PopupMenuItem<String>(
      //           value: "time",
      //           child: Row(
      //             children: <Widget>[
      //               Icon(Icons.chat_bubble_outline),
      //               Text('    投诉'),
      //             ],
      //           ),
      //         ),
      //       ],
      //       onSelected: (String action) {
      //         switch (action) {
      //           case "scan":
      //             // do nothing
      //             break;
      //           case "price":
      //             // do nothing
      //             break;
      //           case "time":
      //             // do nothing
      //             break;
      //         }
      //       })
      //   ],
      // ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('橡胶.D.霸气'),
              accountEmail: Text('金币：10    银币：4396'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg'),
                ),
              ),
            ),
            ListTile(
              title: Text('首页'),
              leading: Icon(Icons.home),
              onTap: () => print('点击首页'),
            ),
            ListTile(
              title: Text('历史记录'),
              leading: Icon(Icons.timelapse),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ViewHistory()
                ));
              },
            ),
            ListTile(
              title: Text('离线缓存'),
              leading: Icon(Icons.cloud_download),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => OfflineCache(),
                ));
                // Navigator.of(context).pushNamed('/a');
              },
            ),
            ListTile(
              title: Text('我的收藏'),
              leading: Icon(Icons.stars),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Favorites(),
                ));
              },
            ),
            ListTile(
              title: Text('我的关注'),
              leading: Icon(Icons.remove_red_eye),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Followings(),
                ));
              },
            ),
            Divider(),
            ListTile(
              title: Text('投稿'),
              leading: Icon(Icons.file_upload),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Contribute(),
                ));
              },
            ),
            Divider(),
            ListTile(
              title: Text('联系客服'),
              leading: Icon(Icons.call),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ContactCss(),
                ));
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        top: true, // 标题栏沉浸式
        // child: CustomScrollView(
        //   slivers: <Widget>[
        //     SliverAppBar(
        //       titleSpacing: 0.0,
        //       automaticallyImplyLeading: false,
        //       title: MaterialButton(
        //         padding: EdgeInsets.all(0.0),
        //         minWidth: 0.0,
        //         child: Stack(
        //           // @see https://stackoverflow.com/questions/48086486/does-flutter-support-negative-margin
        //           // alignment: Alignment.topLeft,
        //           // overflow: Overflow.visible,
        //           children: <Widget>[
        //             Positioned(
        //               top: 16.0,
        //               left: -12.0,
        //               child: Icon(Icons.menu, color: Colors.white),
        //             ),
        //             Positioned(
        //               top: 14.0,
        //               left: 20.0,
        //               child: ClipOval(
        //                 child: Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg', width: 28.0, height: 28.0, fit: BoxFit.cover),
        //               ),
        //             ),
        //           ],
        //         ),
        //         // Row(
        //         //   children: <Widget>[
        //         //     Container(width: 8.0),
        //         //     ClipOval(
        //         //       child: Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg', width: 25.0, height: 25.0, fit: BoxFit.cover),
        //         //     ),
        //         //   ],
        //         // ),
        //         // CircleAvatar(
        //         //   backgroundImage: NetworkImage('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg'),
        //         //   // child: Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg', fit: BoxFit.fitHeight),
        //         // ),
        //         onPressed: () {
        //           Scaffold.of(context).openDrawer();
        //         },
        //         // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //       ),
        //       // centerTitle: true,    //标题居中
        //       floating: false,  //不随着滑动隐藏标题
        //       pinned: false,    //固定在顶部
        //       // expandedHeight: 200.0,  //展开高度200
        //       // flexibleSpace: FlexibleSpaceBar(
        //       //   centerTitle: true,
        //       //   title: Text('我是一个FlexibleSpaceBar'),
        //       //   background: Image.network(
        //       //     "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1531798262708&di=53d278a8427f482c5b836fa0e057f4ea&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F342ac65c103853434cc02dda9f13b07eca80883a.jpg",
        //       //     fit: BoxFit.cover,
        //       //   ),
        //       // ),
        //     ),
        //     SliverList(
        //       delegate: SliverChildBuilderDelegate((context, int) {
        //         return Text('Dummy text');
        //       }),
        //     ),
        //   ],
        // ),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                titleSpacing: 0.0,
                automaticallyImplyLeading: false,
                title: MaterialButton(
                  padding: EdgeInsets.all(0.0),
                  minWidth: 0.0,
                  child: Stack(
                    // @see https://stackoverflow.com/questions/48086486/does-flutter-support-negative-margin
                    // alignment: Alignment.topLeft,
                    // overflow: Overflow.visible,
                    children: <Widget>[
                      Positioned(
                        top: 16.0,
                        left: -12.0,
                        child: Icon(Icons.menu, color: Colors.white),
                      ),
                      Positioned(
                        top: 14.0,
                        left: 20.0,
                        child: ClipOval(
                          child: Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg', width: 28.0, height: 28.0, fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     Container(width: 8.0),
                  //     ClipOval(
                  //       child: Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg', width: 25.0, height: 25.0, fit: BoxFit.cover),
                  //     ),
                  //   ],
                  // ),
                  // CircleAvatar(
                  //   backgroundImage: NetworkImage('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg'),
                  //   // child: Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg', fit: BoxFit.fitHeight),
                  // ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add_alarm),
                    tooltip: 'Add Alarm',
                    onPressed: () {
                      // do nothing
                    }
                  ),
                  PopupMenuButton<String>(
                    icon: Icon(Icons.add),
                    offset: Offset(0, 55),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                      PopupMenuItem<String>(
                        value: "scan",
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.all_out),
                            Text('    扫一扫'),
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: "price",
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.mail_outline),
                            Text('    意见反馈'),
                          ],
                        )
                      ),
                      PopupMenuItem<String>(
                        value: "time",
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.chat_bubble_outline),
                            Text('    投诉'),
                          ],
                        ),
                      ),
                    ],
                    onSelected: (String action) {
                      switch (action) {
                        case "scan":
                          // do nothing
                          break;
                        case "price":
                          // do nothing
                          break;
                        case "time":
                          // do nothing
                          break;
                      }
                    })
                ],
                // centerTitle: true,    //标题居中
                floating: false,  //不随着滑动隐藏标题
                pinned: false,    //固定在顶部
                // expandedHeight: 200.0,  //展开高度200
                // flexibleSpace: FlexibleSpaceBar(
                //   centerTitle: true,
                //   title: Text('我是一个FlexibleSpaceBar'),
                //   background: Image.network(
                //     "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1531798262708&di=53d278a8427f482c5b836fa0e057f4ea&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F342ac65c103853434cc02dda9f13b07eca80883a.jpg",
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
              // SliverAppBar(
              //   titleSpacing: 0.0,
              //   automaticallyImplyLeading: false,
              //   title: Text('ert'),
              //   floating: false,  //不随着滑动隐藏标题
              //   pinned: true,    //固定在顶部
              // ),
            ];
          },
          body:
          // Scrollbar(child: Center(
          //   child: ListView(
          //     children: <Widget>[
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //       Text("Sample text"),
          //     ],
          //   ),
          // )),
          PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(), // 禁用滑动
            children: <Widget>[
              HomeFirst(),
              Container(
                color: Colors.blue[100],
                child: Text('channel'),
              ),
              Container(
                color: Colors.green[100],
                child: Text('circle'),
              ),
              Container(
                color: Colors.pink[100],
                child: Text('cart'),
              ),
            ],
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
      // body: PageView(
      //   controller: _pageController,
      //   physics: NeverScrollableScrollPhysics(),
      //   children: <Widget>[
      //     HomeFirst(),
      //     Container(
      //       color: Colors.blue[100],
      //       child: Text('频道'),
      //     ),
      //     Container(
      //       color: Colors.green[100],
      //       child: Text('购物车'),
      //     ),
      //     Container(
      //       color: Colors.pink[100],
      //       child: Text('我的'),
      //     ),
      //   ],
      //   onPageChanged: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),
      // Scrollbar(child: Container(
      //   padding:const EdgeInsets.all(10.0),
      //   color: Colors.grey[300],
      //   child: ListView(
      //     children: <Widget>[
      //       Text('123'),
      //       Text('haha'),
      //       Text('123'),
      //       Text('haha'),
      //       GridView(
      //         shrinkWrap: true, // 为了解决RenderBox报错
      //         physics:ScrollPhysics(), // 为了解决GridView滚动失效
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 3,
      //           mainAxisSpacing: 5.0,
      //           crossAxisSpacing: 5.0,
      //           childAspectRatio: 0.7
      //         ),
      //         children: <Widget>[
      //           Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
      //           Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
      //         ],
      //       ),
      //     ],
      //   ),
      // )),
      bottomNavigationBar: Container(
        height: 48,
        child: btmNavBar,
      ),
    );
  }
}
