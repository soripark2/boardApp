
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:s3ex/constantlist/maincolor.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      body:
      //Stack(
      //   children: <Widget>[
          Container(
            color: Colors.blue[600],
            height: 150,
            child: Padding(
              padding:  EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 66,
                        width: 66,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/test.png")
                            ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Neil Sullivan Paul",),
                          SizedBox(height: 3,),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // Image.asset(
                                  //   "assets/test.png",
                                  //   height: 3 * SizeConfig.heightMultiplier,
                                  //   width: 3 * SizeConfig.widthMultiplier,
                                  // ),
                                  SizedBox(width: 6,),
                                  Text("Protorix"),
                                ],
                              ),
                              SizedBox(width: 21,),
                              Row(
                                children: <Widget>[
                                  // Image.asset(
                                  //   "assets/test.png",
                                  //   height: 3 * SizeConfig.heightMultiplier,
                                  //   width: 3 * SizeConfig.widthMultiplier,
                                  // ),
                                  SizedBox(width: 5,),
                                  Text("Protorix"),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("10.2K"),
                          Text("Protorix"),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("543"),
                          Text("Following"),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("EDIT PROFILE", style: TextStyle(
                              color: Colors.white60,
                              fontSize: 5
                          ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

        //   Padding(
        //     padding:  EdgeInsets.only(top: 35 * SizeConfig.heightMultiplier),
        //     child: Container(
        //       width: MediaQuery.of(context).size.width,
        //       decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.only(
        //             topRight: Radius.circular(30.0),
        //             topLeft: Radius.circular(30.0),
        //           )
        //       ),
        //     ),
        //   )
        //
        // ],
      //),

    );
  }

}