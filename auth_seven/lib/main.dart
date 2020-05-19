import 'package:flutter/material.dart';

void main(){
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthSeven(),
    ));
}

class AuthSeven extends StatefulWidget {
  @override
  _AuthSevenState createState() => _AuthSevenState();
}

class _AuthSevenState extends State<AuthSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
           children: <Widget>[
             Column(
               children: <Widget>[
                 Container(
                     height: MediaQuery.of(context).size.height / 2,
                     width: MediaQuery.of(context).size.width,
                     color: Color.fromRGBO(17,45,78,1.0),
                   child: Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                         child: Align(
                           alignment: Alignment.centerLeft,
                             child: Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold,fontSize:30.0 , color: Colors.white),)),
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                         child: TextField(
                           style: TextStyle( color: Colors.white,),
                           decoration: InputDecoration(
                               hintText: "Email",
                               hintStyle: TextStyle( color: Colors.white,),
                               border: InputBorder.none,
                               icon: Icon(Icons.email,   color: Colors.white,)
                           ),
                         ),
                       ),
                       Container(child: Divider(  color: Colors.white,), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 0.0),),
                       Padding(
                           padding:
                           const EdgeInsets.fromLTRB(20,0.0,0, 0.0),
                           child: TextField(
                             style: TextStyle( color: Colors.white,),
                             decoration: InputDecoration(
                                 hintText: "Password",
                                 hintStyle: TextStyle( color: Colors.white,),
                                 border: InputBorder.none,
                                 icon: Icon(Icons.vpn_key,  color: Colors.white,)
                             ),
                           )
                       ),
                       Container(child: Divider( color: Colors.white,), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 0.0),),
                       Padding(
                         padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                         child: Align(
                           alignment: Alignment.centerRight,
                           child: FlatButton(
                             child: Text('Forgot Password', style: TextStyle(color: Colors.white ),),
                             textColor: Colors.white,
                             onPressed: () {},
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   height: MediaQuery.of(context).size.height / 2,
                   width: MediaQuery.of(context).size.width,
                   color: Colors.white,
                   child: Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                         child: Align(
                             alignment: Alignment.centerLeft,
                             child: Text("SIGN UP", style: TextStyle(fontWeight: FontWeight.bold,fontSize:30.0 , color: Color.fromRGBO(17,45,78,1.0)),)),
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                         child: TextField(
                           style: TextStyle( color: Color.fromRGBO(17,45,78,1.0),),
                           decoration: InputDecoration(
                               hintText: "Email",
                               hintStyle: TextStyle( color: Color.fromRGBO(17,45,78,1.0),),
                               border: InputBorder.none,
                               icon: Icon(Icons.email,   color: Color.fromRGBO(17,45,78,1.0),)
                           ),
                         ),
                       ),
                       Container(child: Divider(  color: Color.fromRGBO(17,45,78,1.0),), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 0.0),),
                       Padding(
                           padding:
                           const EdgeInsets.fromLTRB(20,0.0,0, 0.0),
                           child: TextField(
                             style: TextStyle( color: Color.fromRGBO(17,45,78,1.0),),
                             decoration: InputDecoration(
                                 hintText: "Password",
                                 hintStyle: TextStyle( color: Color.fromRGBO(17,45,78,1.0),),
                                 border: InputBorder.none,
                                 icon: Icon(Icons.vpn_key,  color: Color.fromRGBO(17,45,78,1.0),)
                             ),
                           )
                       ),
                       Container(child: Divider( color: Color.fromRGBO(17,45,78,1.0),), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 0.0),),
                       Padding(
                           padding:
                           const EdgeInsets.fromLTRB(20,0.0,0, 0.0),
                           child: TextField(
                             style: TextStyle( color: Color.fromRGBO(17,45,78,1.0),),
                             decoration: InputDecoration(
                                 hintText: "Confirm Password",
                                 hintStyle: TextStyle( color: Color.fromRGBO(17,45,78,1.0),),
                                 border: InputBorder.none,
                                 icon: Icon(Icons.vpn_key,  color: Color.fromRGBO(17,45,78,1.0),)
                             ),
                           )
                       ),
                       Container(child: Divider( color: Color.fromRGBO(17,45,78,1.0),), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 0.0),),

                     ],
                   ),
                 )
               ],
             ),
             Positioned(
               top: 285,
               right: 70,
               child: Container(
                 height: 70,
                 width: 70,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   shape: BoxShape.circle
                 ),
                 child: Icon(
                   Icons.keyboard_arrow_up,
                   size: 60,
                   color: Color.fromRGBO(17,45,78,1.0),
                 ),
               ),
             ),
             Positioned(
               top: 285,
               right: 0.0,
               child: Container(
                 height: 70,
                 width: 70,
                 decoration: BoxDecoration(
                     color: Color.fromRGBO(17,45,78,1.0),
                     shape: BoxShape.circle
                 ),
                 child: Icon(
                   Icons.keyboard_arrow_down,
                   size: 60,
                   color: Colors.white
                   ,
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
