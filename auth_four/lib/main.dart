import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthFour()
  ));
}

class AuthFour extends StatefulWidget {
  @override
  _AuthFourState createState() => _AuthFourState();
}

class _AuthFourState extends State<AuthFour> {
  @override
  Widget build(BuildContext context) {
  var _height = MediaQuery.of(context).size.height;
  var _width = MediaQuery.of(context).size.width;
  return Scaffold(

  body: ListView(
    children: <Widget>[
      Stack(
        children: <Widget>[
    Container(
       width: MediaQuery.of(context).size.width,
       height:  MediaQuery.of(context).size.height,
      decoration: BoxDecoration(   gradient: LinearGradient(
              begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromRGBO(0,87,146,1.0),Color.fromRGBO(164,229,217,1.0)]
           )
       ),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0.0, 32, 0.0),
               child: TextField(
            style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.black),
            border: InputBorder.none,
            icon: Icon(Icons.email, color: Colors.black,)
        ),
      )
            ),
            Container(child: Divider(color: Colors.black,), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 10.0),),
            Padding(
              padding:
              const EdgeInsets.fromLTRB(32,0.0,20, 0.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    icon: Icon(Icons.vpn_key, color:Colors.black,)
                ),
              )
            ),
            Container(child: Divider(color: Colors.black,), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 10.0),),

            Padding(
              padding:
              const EdgeInsets.fromLTRB(32, 0.0, 20, 0.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    icon: Icon(Icons.vpn_key, color: Colors.black,)
                ),
              )
            ),
            Container(child: Divider(color: Colors.black,), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 10.0),),

          ],
        ),

      ),
    ),


          Positioned(
            bottom: 0.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: OvalTopBorderClipper(),
                child: Container(
                  color: Colors.white,
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 100,),
                      Text("or Sign UP with", style: TextStyle(
    fontSize: 15.0 , fontWeight: FontWeight.normal
    ),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          OutlineButton.icon(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 30.0
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            borderSide: BorderSide(color: Colors.red),
                            color: Colors.red,
                            highlightedBorderColor: Colors.red,
                            textColor: Colors.red,
                            icon: Icon(
                              FontAwesomeIcons.googlePlusG,
                              size: 18.0,
                            ),
                            label: Text(""),
                            onPressed: (){},
                          ),
                          const SizedBox(width: 10.0),
                          OutlineButton.icon(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 30.0
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            borderSide: BorderSide(color: Colors.blue[900]),
                            color: Colors.blue[900],
                            highlightedBorderColor: Colors.blue[900],
                            textColor: Colors.blue[900],
                            icon: Icon(
                              FontAwesomeIcons.facebookF,
                              size: 18.0,
                            ),
                            label: Text(""),
                            onPressed: (){},
                          ),
                          const SizedBox(width: 10.0),
                          OutlineButton.icon(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 30.0
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            borderSide: BorderSide(color: Colors.blue),
                            color: Colors.blue,
                            highlightedBorderColor: Colors.blue,
                            textColor: Colors.blue,
                            icon: Icon(
                              FontAwesomeIcons.twitter,
                              size: 18.0,
                            ),
                            label: Text(""),
                            onPressed: (){},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left:  (MediaQuery.of(context).size.width / 2) -30,
              top: (MediaQuery.of(context).size.height - 330) ,
              child:Container(
                //height: 200,
               child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(223,245,242,1.0),
                        shape: BoxShape.circle,

                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                        ),
                        color: Colors.black87,

                      ),
                    )

                ),
              )
          ),

        ],
      ),

    ],
  )
  );
  }
}

