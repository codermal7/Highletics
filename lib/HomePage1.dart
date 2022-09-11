import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage1 extends StatelessWidget{
  const HomePage1({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepOrange,
          title: Text('Highletics',
          style: TextStyle(color: Colors.white, fontSize: 24)),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 22,
            color: Colors.black,
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              ListTile(leading: Icon(FontAwesomeIcons.basketball),
                title: Text("Basketball"),subtitle: Text("Location-12,Fin Road\nDate-5th May 2022\nAge Group-7-15 years\n"),trailing:Text("Closed"),onTap: (){},),
              ListTile(leading: Icon(FontAwesomeIcons.chess),
                  title: Text("Chess"),subtitle: Text("Location-Gokuldham Road\nDate-10th June 2022\nAge Group-18-30 years\n"),trailing:Text("Open"),onTap: (){}),
              ListTile(leading: Icon(FontAwesomeIcons.football),
                title: Text("Basketball"),subtitle: Text("Location-12,Fin Road\nDate-5th May 2022\nAge Group-7-14  years\n"),trailing:Text("Open"),onTap: (){},),
              ListTile(leading: Icon(FontAwesomeIcons.basketball),
                title: Text("Basketball"),subtitle: Text("Location-12,Fin Road\nDate-5th May 2022\nAge Group-7-15 years\n"),trailing:Text("Closed"),onTap: (){},),
              ListTile(leading: Icon(FontAwesomeIcons.basketball),
                title: Text("Basketball"),subtitle: Text("Location-12,Fin Road\nDate-5th May 2022\nAge Group-7-15 years"),trailing:Text("Closed"),onTap: (){},),
              ListTile(leading: Icon(FontAwesomeIcons.basketball),
                title: Text("Basketball"),subtitle: Text("Location-12,Fin Road\nDate-5th May 2022\nAge Group-7-15 years"),trailing:Text("Closed"),onTap: (){},),
              ListTile(leading: Icon(FontAwesomeIcons.basketball),
                title: Text("Basketball"),subtitle: Text("Location-12,Fin Road\nDate-5th May 2022\nAge Group-7-15 years"),trailing:Text("Closed"),onTap: (){},),
              ListTile(leading: Icon(FontAwesomeIcons.basketball),
                title: Text("Basketball"),subtitle: Text("Location-12,Fin Road\nDate-5th May 2022\nAge Group-7-15 years"),trailing:Text("Closed"),onTap: (){},)
            ],
          ),
          width:500.0,
          height: 700.0,
        )
    );
  }}