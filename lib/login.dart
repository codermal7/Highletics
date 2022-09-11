// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.deepOrangeAccent,
//         leading: IconButton(
//           onPressed: (){
//             Navigator.pop(context);
//           },
//           icon: Icon(Icons.arrow_back_ios),
//           iconSize: 20,
//           color: Colors.black,
//         ),
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Expanded(child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Text('LOGIN',
//                       style: TextStyle(
//                           fontSize: 35,
//                           color: Colors.deepOrange,
//                           fontWeight: FontWeight.bold
//                       ),),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text('Login to your account',
//                       style: TextStyle(
//                           fontSize: 15,
//                           color: Colors.grey[700]
//                       ),)
//                   ],
//                 ),
//                 Padding(padding: EdgeInsets.symmetric(horizontal: 40),
//                   child: Container(
//                     padding: EdgeInsets.only(top: 30,left: 3),
//                     decoration:
//                     BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         border: Border(
//                           bottom: BorderSide(color:Colors.black),
//                           top: BorderSide(color:Colors.black),
//                           left: BorderSide(color:Colors.black),
//                           right: BorderSide(color:Colors.black),
//
//                         )
//                     ),
//                     child: MaterialButton(
//                       minWidth: double.infinity,
//                       height: 60,
//                       onPressed: (){ },
//                       color: Colors.deepOrangeAccent,
//                       elevation: 0,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(50),
//
//                       ),
//                       child:Text(
//                         'Login', style: TextStyle(
//                           fontWeight: FontWeight.w900,
//                           fontSize: 18,
//                           color: Colors.white
//                       ),
//                       ) ,
//                     ),
//                   ),),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text("Don't have an account?"),
//                     Text('Sign up',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 18
//                       ),)
//                   ],
//
//                 )
//               ],
//             ),
//
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:xyzzzz/HomePage1.dart';
// import 'package:xyzzzz/HomePage1.dart.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage('assets/images/logo.jpeg'), fit: BoxFit.cover),
      // ),
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: NetworkImage(""),
      //   ),
      // ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          elevation: 0,
          title: Text('LOGIN',
              style: TextStyle(color: Colors.white, fontSize: 25)),
        ),
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 110, top: 75),
              child: Text(
                'HIGHLETICS',
                // textAlign: TextAlign.center,
                style: TextStyle(color: Colors.deepOrange, fontSize: 33),
              ),
            ),
            //     Container(
            //
            //         child: IconButton(
            //           icon: Icon(FontAwesomeIcons),
            //           onPressed: () { },
            //
            //     ),
            //
            // ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.deepOrange,
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  new HomePage1()));
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
