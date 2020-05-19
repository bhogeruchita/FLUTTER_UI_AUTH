import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginThree()
  ));
}

class LoginThree extends StatefulWidget {
  @override
  _LoginThreeState createState() => _LoginThreeState();
}

class _LoginThreeState extends State<LoginThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(199,246,245,1.0),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: (MediaQuery.of(context).size.height /2)-200
            ),
            Container(
              padding: EdgeInsets.all(20.0),

              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: RoundedDiagonalPathClipper(),
                    child: Container(
                      height: 400,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        color: Colors.white,
                      ),
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 90.0,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            cursorColor: Color.fromRGBO(10,145,171,1.0),
                            style: TextStyle( color: Color.fromRGBO(10,145,171,1.0)),
                            decoration: InputDecoration(
                                hintText: "Email address",
                                hintStyle: TextStyle(color: Color.fromRGBO(10,145,171,1.0)),
                                border: InputBorder.none,
                                icon: Icon(Icons.email, color: Color.fromRGBO(10,145,171,1.0),)
                            ),
                          ),
                        ),
                        Container(child: Divider(color: Color.fromRGBO(10,145,171,1.0),), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 10.0),),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextField(
                              cursorColor: Color.fromRGBO(10,145,171,1.0),
                              style: TextStyle(color: Color.fromRGBO(10,145,171,1.0)),
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Color.fromRGBO(10,145,171,1.0)),
                                  border: InputBorder.none,
                                  icon: Icon(Icons.lock, color: Color.fromRGBO(10,145,171,1.0),)
                              ),
                            )
                        ),
                        Container(child: Divider(color: Color.fromRGBO(10,145,171,1.0),), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 10.0),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              child: FlatButton(
                                child: Text('Forgot Password', style: TextStyle(color: Color.fromRGBO(10,145,171,1.0), ),),
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Color.fromRGBO(10,145,171,1.0),
                        child: Icon(Icons.shopping_cart),
                      ),
                    ],
                  ),
                  Container(
                    height: 420,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: RaisedButton(
                        onPressed: (){},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                        child: Text("Login", style: TextStyle(color: Colors.white)),
                        color: Color.fromRGBO(10,145,171,1.0),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}



