import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'dart:math' as math;

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AuthTwo(),
  ));
}

class AuthTwo extends StatefulWidget {
  @override
  _AuthTwoState createState() => _AuthTwoState();
}

class _AuthTwoState extends State<AuthTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                left: - 100,
                top: -90,
                child: Transform.rotate(
                  angle: -30 * math.pi / 180,
                  child: ClipPath(
                    clipper: WaveClipperOne(),
                    child: Container(
                      width: MediaQuery.of(context).size.width + 200,
                      height: MediaQuery.of(context).size.height / 4 +40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.deepOrange , Colors.orange]
                          )
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -8.0,

                child: Transform.rotate(
                  angle: -30 * math.pi / 180,
                  child: ClipPath(
                    clipper: WaveClipperOne(reverse: true),
                    child: Container(
                      width: MediaQuery.of(context).size.width + 200,
                      height: MediaQuery.of(context).size.height / 4 +40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color.fromRGBO(166,227,233,1.0) , Color.fromRGBO(17,153,158,1.0)]
                          )
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 0.0,
                left: -50.0,
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: -95.0,
                left: 30,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      border: Border.all(width: 8, color: Colors.white,style: BorderStyle.solid)
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 200, 20, 0),
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular((30)),topLeft: Radius.circular((30))),
                        child: TextField(
                          onChanged: (String value) {},
                          cursorColor: Color.fromRGBO(224,62,54,1.0),

                          decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              child: Icon(
                                Icons.email,
                                color: Colors.redAccent,
                              ),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 25,vertical: 13),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular((30)),topLeft: Radius.circular((30))),
                        child: TextField(
                          onChanged: (String value) {},
                          cursorColor: Color.fromRGBO(224,62,54,1.0),

                          decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              child: Icon(
                                Icons.vpn_key,
                                color: Colors.redAccent,
                              ),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 25,vertical: 13),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          child: Text('Forgot Password', style: TextStyle(color: Colors.redAccent, ),),
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),

                        gradient: LinearGradient(
                            colors: [Color.fromRGBO(166,227,233,1.0) , Color.fromRGBO(17,153,158,1.0)]

                        ),),
                      child: FlatButton(
                        onPressed: (){},
                        child: Text("LOGIN", style: TextStyle(color: Colors.white)),

                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),

                          gradient: LinearGradient(
                              colors: [Colors.deepOrange , Colors.orange]

                          ),),
                        child: FlatButton(
                          onPressed: (){},
                          child: Text("CREATE ACCOUNT", style: TextStyle(color: Colors.white)),

                        ),

                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}




