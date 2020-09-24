import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imag/layouts/Registre_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body:Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top:120),
                child:
            Center(
              child: Text("Login ", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.indigo),),
            )),
            Padding(
                padding: EdgeInsets.only(top:40, left: 60,right: 60),
                child: ee()),
            Padding(
                padding: EdgeInsets.only(top:40, left: 60,right: 60),
                child: b()),

          ],
        )
    );
  }}

class ee extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return dd();
  }
}

class b extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    RaisedButton btn=RaisedButton(onPressed: (){},
      child: Text("Login" ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
      color: Colors.indigo,

    );
    AssetImage image= new AssetImage('images/gog.png');
    Image myimg=new Image(image:image,width:35,height:35);
    AssetImage image2= new AssetImage('images/facebook.png' );
    Image myimg2=new Image(image:image2,width:40,height:40,  );
    AssetImage image3= new AssetImage('images/twitter.png');
    Image myimg3=new Image(image:image3,width:40,height:40);
    return Container(
        width: double.infinity,
        // height: 40,
        child:Column(
          children: [

        Row(
        children: [
        Padding(padding:EdgeInsets.only(left:75,bottom: 15), child: btn),

           ] ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 75),
                  child: InkWell(child: Text("Create Account ",style: TextStyle(fontSize: 15,color: Colors.indigo),
                  ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return reg();
                      })
                      );
                    },
                  ),
                )

              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:150, left: 20,right: 20),
              child: Row(
                children: [
                 Expanded( child:InkWell(child: myimg, onTap: (){
                   dd d=new dd();
                   d._login();
                 },)  ) ,
                 Expanded( child: myimg2) ,
                  Expanded(child: myimg3,) ,
                ],
              ),
            ),

    ],

    )
    );







  }

}
class dd extends State<ee>{
  GoogleSignIn googleSignIn = GoogleSignIn();

  _login() async{
    try{
      await googleSignIn.signIn();

    }catch(err){
      print(err);
    }
  }
  String s;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return   Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text("User Name : "),
            ),
            Expanded(
              child: TextField(
                onChanged: (String x){
                  setState(() {
                    s=x;
                  });
                },
              ),
            )

          ],

        ),
        Row(
          children: [
            Expanded(
              child: Text("Password : "),
            ),
            Expanded(
              child: TextField(
                onChanged: (String x){
                  setState(() {
                    s=x;
                  });
                },
              ),
            )

          ],

        ),
             ],
    );
  }

}
