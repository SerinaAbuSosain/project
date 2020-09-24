import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imag/layouts/login_screen.dart';
import 'package:imag/layouts/skip_screen.dart';

import 'Registre_screen.dart';


class splashscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _splashscreen();
  }

}
class img extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage image3= new AssetImage('images/carloc.jpg');
    Image myimg4=new Image(image:image3,width:500,height:450);
    return myimg4;
  }


}
class _splashscreen extends State<splashscreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold( body:Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        // image:DecorationImage(
        //     image:AssetImage('images/logo.png'),
        //     fit: BoxFit.cover,
        //
        // )
      ),
      child:
   //   Padding(
       // padding: const EdgeInsets.symmetric(vertical: 30),
       // child:
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: EdgeInsets.only(left:40, right: 40 , top:70),
              child:
              Text("Car Charging " , style: TextStyle(fontSize: 40, color:Colors.indigo , fontWeight: FontWeight.bold, ),)),
              Padding(padding: EdgeInsets.only(right: 40,left: 40),
                  child:img()),
              Padding(
                padding: EdgeInsets.only(left: 40,right: 40,bottom: 50),
                child:RaisedButton(
                    elevation: 10,
                    padding: EdgeInsets.only(left: 50,right: 50,top:20,bottom: 20),

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) {
                        return skip();
                      }
                      )
                      );
                    },
                    color: Colors.indigo,
                    child:Text("Get Start ", style: TextStyle(color: Colors.white,fontSize: 20, ),)
                ),
              )

            ]
        ),






    ));
  }


}