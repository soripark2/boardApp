import 'package:flutter/material.dart';

class Forum1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text(
              "여기는 포럼1 입니다@@",
              style: TextStyle(
                fontFamily: "IBM Plex Sans KR",
                fontSize: 23,
              ),
            ),
            Image.network(
                "https://media.bunjang.co.kr/product/177600551_1_1643548856_w360.jpg"),
            Padding(padding: EdgeInsets.all(3)), // 효과를 모르겠음
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween)
          ],
        ),
      ),
    );
  }
}