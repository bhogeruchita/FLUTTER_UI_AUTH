import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'dart:math' as math;

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginEight(),
  ));
}

class LoginEight extends StatefulWidget {
  @override
  _LoginEightState createState() => _LoginEightState();
}

class _LoginEightState extends State<LoginEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white70,
              ),
              Positioned(
                top: -50.0,
                left: -150,
                child: Transform.rotate(
                  angle: -30 *math.pi / 180,
                  child: ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 210,
                      width: MediaQuery.of(context).size.width+200,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(127,0,255,1.0),
                       // shape: BoxShape.circle
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -40.0,
                left: -150,
             // bottom: 0.0,
                child: Transform.rotate(
                  angle: -30 *math.pi / 180,
                  child: ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width+200,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        // shape: BoxShape.circle
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -40.0,
                left: -150,
                // bottom: 0.0,
                child: Transform.rotate(
                  angle: -30 *math.pi / 180,
                  child: ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width+200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        // shape: BoxShape.circle
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -40.0,
                left: -150,
                // bottom: 0.0,
                child: Transform.rotate(
                  angle: -30 *math.pi / 180,
                  child: ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width+200,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        // shape: BoxShape.circle
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -40.0,
                left: -150,
                // bottom: 0.0,
                child: Transform.rotate(
                  angle: -30 *math.pi / 180,
                  child: ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width+200,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        // shape: BoxShape.circle
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -40.0,
                left: -150,
                // bottom: 0.0,
                child: Transform.rotate(
                  angle: -30 *math.pi / 180,
                  child: ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width+200,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        // shape: BoxShape.circle
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -95.0,
                left: -150,
                // bottom: 0.0,
                child: Transform.rotate(
                  angle: -30 *math.pi / 180,
                  child: ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width+200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        // shape: BoxShape.circle
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -50.0,
                right: -50.0,
                child: Container(
                  height: 210,
                  width: 210,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(127,0,255,1.0),
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          shape: BoxShape.circle
                                      ),
                                      child: Center(
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
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
                                  color: Color.fromRGBO(224,62,54,1.0),
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
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: TextField(
                            onChanged: (String value){},
                            cursorColor:  Color.fromRGBO(224,62,54,1.0),
                            decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: Material(
                                  elevation: 0,
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  child: Icon(
                                    Icons.lock,
                                    color:  Color.fromRGBO(224,62,54,1.0),
                                  ),
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: TextField(
                            onChanged: (String value){},
                            cursorColor:  Color.fromRGBO(224,62,54,1.0),
                            decoration: InputDecoration(
                                hintText: "Confirm Password",
                                prefixIcon: Material(
                                  elevation: 0,
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  child: Icon(
                                    Icons.lock,
                                    color:  Color.fromRGBO(224,62,54,1.0),
                                  ),
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),

                            gradient: LinearGradient(
                                colors: [Colors.red, Colors.orange, Colors.yellow,Colors.green,Colors.blue,Colors.indigo,Color.fromRGBO(127,0,255,1.0) ]

                            ),),
                          child: FlatButton(
                            onPressed: (){},
                            child: Text("LOGIN", style: TextStyle(color: Colors.white, fontSize: 20)),

                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
