//ナビゲーションバーのコンポーネントのファイルです
import 'package:flutter/material.dart';

import 'src/screens/serch/SerchPage.dart';
import 'src/screens/macching/MacchingPage.dart';
import 'src/screens/now-on/Now-onPage.dart';
import 'src/screens/talk/TalkPage.dart';
import 'src/screens/maypage/MyPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [
    SerchPage(),
    MacchingPage(),
    NowonPage(),
    TalkPage(),
    MyPage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  final NowOnIcon nowOnIcon = NowOnIcon();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.blue, // バックグラウンドカラーを指定
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: BottomNavigationBar(

                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 13.0),
                      child: Icon(
                        Icons.person_search_outlined,
                        size: 28,
                      ),
                    ),
                    activeIcon: Container(
                      margin: EdgeInsets.only(top: 13.0),
                      child: Icon(
                        Icons.person_search,
                        size: 28,
                      ),
                    ),
                    label: 'さがす',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 13.0),
                      child: Icon(
                        Icons.group_add_outlined,
                        size: 28,
                      ),
                    ),
                    activeIcon: Container(
                      margin: EdgeInsets.only(top: 13.0),
                      child: Icon(
                        Icons.group_add,
                        size: 28,
                      ),
                    ),
                    label: 'マッチング',
                  ),
                  NowOnIcon().build(context),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 13.0),
                      child: FaIcon(
                        FontAwesomeIcons.comment,
                        size: 24,
                      ),
                    ),
                    activeIcon: Container(
                      margin: EdgeInsets.only(top: 13.0),
                      child: FaIcon(
                        FontAwesomeIcons.solidComment,
                        size: 24,
                      ),
                    ),
                    label: 'トーク',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 13.0),
                      child: Icon(
                        Icons.account_circle_outlined,
                        size: 28,
                      ),
                    ),
                    activeIcon: Container(
                      margin: EdgeInsets.only(top: 13.0),
                      child: Icon(
                        Icons.account_circle,
                        size: 28,
                      ),
                    ),
                    label: 'マイページ',
                  ),
                ],
                type: BottomNavigationBarType.fixed,
                unselectedLabelStyle: TextStyle(
                  fontSize: 10.0,
                  height: 1.0,
                  fontWeight: FontWeight.bold,
                ),
                unselectedItemColor: Colors.grey,
                selectedLabelStyle: TextStyle(
                  fontSize: 10.0,
                  height: 1.0,
                  fontWeight: FontWeight.bold,
                ),
                selectedItemColor: Colors.black,
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NowOnIcon extends StatefulWidget{
  NowOnIcon({Key? key}) : super(key: key);
  Image image = Image.network("www.twinkstar.jp/html/SVGICON/Fill_Off/edit.svg");
  Image activeImage = Image.network("www.twinkstar.jp/html/SVGICON/Fill_Off/error.svg");
  @override
  BottomNavigationBarItem build(BuildContext context) {
    return BottomNavigationBarItem(
      icon: Container(
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.orange),
          width: 80,
          height: 80,
          padding: const EdgeInsets.only(left: 4,right: 4),
          // child: image,
        ),
      ),
      activeIcon: Container(
        child: Container(
        decoration:  BoxDecoration(shape: BoxShape.circle,color: Colors.red),
        width: 80,
        height: 80,
        padding: const EdgeInsets.only(left: 4,right: 4),
        // child: image,
       )
      ),
      label: "",
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}