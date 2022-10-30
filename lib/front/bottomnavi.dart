
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:s3ex/constantlist/maincolor.dart';
import 'package:s3ex/front/mypage.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {

  String _username="";
  int _selectedIndex = 0;
  late final List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: cmnt - forum1)',
    ),
    Text(
      'Index 1: reels',
    ),
    MyPage(),
  ];

  @override
  void initState(){
    super.initState();
    getCurrentUser();
  }
  Future<void> getCurrentUser() async {
    final user = await Amplify.Auth.getCurrentUser();
    print("${user.userId},${user.username}");
    setState(() {
      _username= user.username;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex!=1?AppBar(
        title: Text("DB title"),
        backgroundColor: MainColor.w,//MainColor.beige,
        foregroundColor: MainColor.b, // 글자색
        surfaceTintColor: MainColor.b,
      ):null,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_bank),
            label: 'community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: 'reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_rounded),
            label: 'mypage',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MainColor.y,
        unselectedItemColor: MainColor.b,
        backgroundColor: MainColor.w,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(_username),
              decoration: BoxDecoration(
                color: MainColor.beige,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.10),
                  bottomRight: Radius.circular(20.10),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                  'Forum1',
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                  _widgetOptions[0]=Text('Index 0: cmnt - forum1)');
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                  'Forum2',
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                  _widgetOptions[0]=Text('Index 0: cmnt - forum2)');
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                  'Forum3',
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                  _widgetOptions[0]=Text('Index 0: cmnt - forum3)');
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
