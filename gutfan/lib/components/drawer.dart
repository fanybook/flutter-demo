import 'package:flutter/material.dart';

class DrawerView extends StatefulWidget {
  final String current;

  DrawerView({Key key, this.current}) : super(key: key);

  @override
  _DrawerViewState createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          Container(
            color: widget.current == 'home_page' ? Colors.grey[300] : null,
            child: ListTile(
              title: Text('首页'),
              leading: Icon(Icons.home),
              selected: widget.current == 'home_page' ? true : false,
              onTap: () {
                if (widget.current == 'home_page') {
                  Navigator.of(context).pop();
                } else {
                  // TODO:这里如果有启动页的话，可以退到home_page?
                  Navigator.of(context).popUntil(ModalRoute.withName('/'));
                }
              },
            ),
          ),
          Container(
            color: widget.current == 'view_history' ? Colors.grey[300] : null,
            child: ListTile(
              title: Text('历史记录'),
              leading: Icon(Icons.timelapse),
              selected: widget.current == 'view_history' ? true : false,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamedAndRemoveUntil('/drawer_view_history', ModalRoute.withName('/'));
              },
            ),
          ),
          Container(
            color: widget.current == 'offline_cache' ? Colors.grey[300] : null,
            child: ListTile(
              title: Text('离线缓存'),
              leading: Icon(Icons.cloud_download),
              selected: widget.current == 'offline_cache' ? true : false,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamedAndRemoveUntil('/drawer_offline_cache', ModalRoute.withName('/'));
              },
            ),
          ),
          Container(
            color: widget.current == 'favorites' ? Colors.grey[300] : null,
            child: ListTile(
              title: Text('我的收藏'),
              leading: Icon(Icons.stars),
              selected: widget.current == 'favorites' ? true : false,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamedAndRemoveUntil('/drawer_favorites', ModalRoute.withName('/'));
              },
            ),
          ),
          Container(
            color: widget.current == 'followings' ? Colors.grey[300] : null,
            child: ListTile(
              title: Text('我的关注'),
              leading: Icon(Icons.remove_red_eye),
              selected: widget.current == 'followings' ? true : false,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamedAndRemoveUntil('/drawer_followings', ModalRoute.withName('/'));
              },
            ),
          ),
          Divider(),
          Container(
            color: widget.current == 'contribute' ? Colors.grey[300] : null,
            child: ListTile(
              title: Text('投稿'),
              leading: Icon(Icons.file_upload),
              selected: widget.current == 'contribute' ? true : false,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamedAndRemoveUntil('/drawer_contribute', ModalRoute.withName('/'));
              },
            ),
          ),
          Divider(),
          Container(
            color: widget.current == 'contact_css' ? Colors.grey[300] : null,
            child: ListTile(
              title: Text('联系客服'),
              leading: Icon(Icons.call),
              selected: widget.current == 'contact_css' ? true : false,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamedAndRemoveUntil('/drawer_contact_css', ModalRoute.withName('/'));
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class DrawerView {
//   final Drawer item;

//   DrawerView({Key key, BuildContext context}) :
//     item = Drawer(
//       child: ListView(
//         children: <Widget>[
//           UserAccountsDrawerHeader(
//             accountName: Text('橡胶.D.霸气'),
//             accountEmail: Text('金币：10    银币：4396'),
//             currentAccountPicture: GestureDetector(
//               child: CircleAvatar(
//                 backgroundImage: NetworkImage('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg'),
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.grey[300],
//             child: ListTile(
//               title: Text('首页'),
//               leading: Icon(Icons.home),
//               selected: true,
//               onTap: () => print('点击首页'),
//             ),
//           ),
//           ListTile(
//             title: Text('历史记录'),
//             leading: Icon(Icons.timelapse),
//             onTap: () {
//               Navigator.of(context).pop();
//               Navigator.of(context).pushNamedAndRemoveUntil('/drawer_view_history', ModalRoute.withName('/'));
//             },
//           ),
//           ListTile(
//             title: Text('离线缓存'),
//             leading: Icon(Icons.cloud_download),
//             onTap: () {
//               Navigator.of(context).pop();
//               Navigator.of(context).pushNamedAndRemoveUntil('/drawer_offline_cache', ModalRoute.withName('/'));
//             },
//           ),
//           ListTile(
//             title: Text('我的收藏'),
//             leading: Icon(Icons.stars),
//             onTap: () {
//               Navigator.of(context).pop();
//               Navigator.of(context).pushNamedAndRemoveUntil('/drawer_favorites', ModalRoute.withName('/'));
//             },
//           ),
//           ListTile(
//             title: Text('我的关注'),
//             leading: Icon(Icons.remove_red_eye),
//             onTap: () {
//               Navigator.of(context).pop();
//               Navigator.of(context).pushNamedAndRemoveUntil('/drawer_followings', ModalRoute.withName('/'));
//             },
//           ),
//           Divider(),
//           ListTile(
//             title: Text('投稿'),
//             leading: Icon(Icons.file_upload),
//             onTap: () {
//               Navigator.of(context).pop();
//               Navigator.of(context).pushNamedAndRemoveUntil('/drawer_contribute', ModalRoute.withName('/'));
//             },
//           ),
//           Divider(),
//           ListTile(
//             title: Text('联系客服'),
//             leading: Icon(Icons.call),
//             onTap: () {
//               Navigator.of(context).pop();
//               Navigator.of(context).pushNamed('/contact_css');
//             },
//           ),
//         ],
//       ),
//     );
// }