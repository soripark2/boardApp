import 'package:flutter/material.dart';
import 'package:s3ex/front/forum3.dart';
import 'package:s3ex/constantlist/maincolor.dart';
import 'forum1.dart';
import 'forum2.dart';

class CmntDrawer extends StatefulWidget {
  const CmntDrawer({Key? key}) : super(key: key);

  @override
  State<CmntDrawer> createState() => _CmntDrawerState();
}

class _CmntDrawerState extends State<CmntDrawer> {

  int categori =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drawer'),
          backgroundColor: MainColor.beige,
          foregroundColor: MainColor.black, // 글자색
          surfaceTintColor: MainColor.teal,
        ),
        body:categori==1?Forum1():categori==2?Forum2():Forum3(),//cmnt
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text('Drawer Header'),
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
                    style: TextStyle(fontFamily: 'Pretendard')
                ),
                onTap: () {
                  setState(() {
                    categori = 1;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                    'Forum2',
                    style: TextStyle(fontFamily: 'Pretendard')
                ),
                onTap: () {
                  setState(() {
                    categori = 2;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                    'Forum3',
                    style: TextStyle(fontFamily: 'Pretendard')
                ),
                onTap: () {
                  setState(() {
                    categori = 3;
                  });
                  Navigator.pop(context);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => QnA()),
                  // );
                },
              ),
            ],
          ),
        ),
    );
  }

}