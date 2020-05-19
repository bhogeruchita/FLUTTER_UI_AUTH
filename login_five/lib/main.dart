import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginFive()
  ));
}
class LoginFive extends StatefulWidget {
  @override
  _LoginFiveState createState() => _LoginFiveState();
}

class _LoginFiveState extends State<LoginFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height / 4) +90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                colors: [Color.fromRGBO(224,62,54,1.0),Color.fromRGBO(236,97,10,1.0) ]
              )
            ),
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                child: Transform.rotate(
                  angle: -30 * math.pi /180,
                  child: Icon(
                    FontAwesomeIcons.bars,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.white,style: BorderStyle.solid),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
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
          SizedBox(height:5),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: FlatButton(
                child: Text('Forgot Password', style: TextStyle(color: Color.fromRGBO(224,62,54,1.0), ),),
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  gradient: LinearGradient(
                      colors: [Color.fromRGBO(236,97,10,1.0),Color.fromRGBO(224,62,54,1.0) ]

                  )
    ),
                child: FlatButton(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  onPressed: () {},
                ),
              )),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Don't have an Account ? ", style: TextStyle(color:Colors.black,fontSize: 12 ,fontWeight: FontWeight.normal),),
              Text("Register ", style: TextStyle(color: Color.fromRGBO(224,62,54,1.0), fontWeight: FontWeight.w500,fontSize: 12, decoration: TextDecoration.underline )),

            ],
          )
        ],
      ),
    );
  }
}
