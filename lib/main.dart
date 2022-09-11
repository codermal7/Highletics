import 'package:flutter/material.dart';
import 'package:xyzzzz/login.dart';
import 'package:xyzzzz/register.dart';
import 'package:xyzzzz/organizerlogin.dart';
import 'package:xyzzzz/HomePage1.dart';
// import 'package:xyzzzz/organizerlogin.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Colors.black
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.only(left: 80, bottom: 55),
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiKGrM6F9L2hTEVFrwNZg_zdw99sJP5-VaRJd9r4MPcTmXyg4OC1u60uAkm3uYJ47XllFmKqC82lUQ-8Jj6z6lzwm1utH6OvDEMKM-wZHjOKXEBvil0u56g2c_LZ11-muyJuafGKCH2RkZeh_ueI2t5_C7XRN70moFv7trz2aC9ZUoBZFSOQm-qzzkuXw/s320/Screenshot%202022-09-11%20192412.jpg",
          //     ),
          //
          //   ),
          // ),
          // padding: EdgeInsets.only(left: 110, top: 75),
          width: double.infinity,
          height: MediaQuery
              .of(context)
              .size
              .height,
           padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'HIGHLETICS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.deepOrange
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('High On Athletics',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white54,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyLogin()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(80)
                    ),
                    child: Text(
                      'USER LOGIN',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.deepOrangeAccent
                      ),
                    ),
                  ),
                  //ORGANIZER LOGIN

                  SizedBox(height: 20,),
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => organizerlogin()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(80)
                    ),
                    child: Text(
                      'ORGANIZER LOGIN',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.deepOrangeAccent
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MyRegister()));
                    },
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 22
                      ),
                    ),
                  )
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}