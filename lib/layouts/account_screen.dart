import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class account extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _account();
  }

}
class _account extends State<account> {

  File imagefile;

  _opengallary(BuildContext context) async{
    var picture= await ImagePicker.pickImage(source:ImageSource.gallery);
    this.setState(() {
      imagefile=picture;

    });
    Navigator.of(context).pop();
  }
  _opencamera(BuildContext context) async{
    var picture= await ImagePicker.pickImage(source:ImageSource.camera);
    this.setState(() {
      imagefile=picture;

    });
    Navigator.of(context).pop();
  }

  Future<void> shoedialog(BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Make a Choice"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              GestureDetector(
                child: Text(" Gallary "),
                onTap: (){
                  _opengallary(context);
                },
              ),Padding(padding: EdgeInsets.all(8.0),),
              GestureDetector(
                child: Text(" Camera "),
                onTap: (){
                  _opencamera(context);
                },
              ),
            ],
          ) ,
        ),
      );

    });
  }
Widget _widget(){
    if (imagefile== null){
      Image.asset('images/lo.png', width: 400,height: 400);
    }else

      Image.file(imagefile, width: 400,height: 400,);
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build





    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.indigo,
      ),
      body:Padding(
          padding: EdgeInsets.all(40),
          child: ListView(
        children: [
          Text("المعلومات الاساسية "  , style: TextStyle(color: Colors.black),) ,
           Divider(),
          InkWell(
            child: Text("تغيير الصورة "),
            onTap: (){
              shoedialog(context);
            },
          )
          ,
          if (imagefile== null)
           Image.asset('images/lo.png', width: 400,height: 300)
                   else

             Image.file(imagefile, width: 400,height: 300,),
           Text("الجنس"),
          TextField(

           ) ,

          Text("الاسم الكامل"),

          TextField(

          ),
          Text("البريد الالكتروني"),

          TextField(

          ),

          Text("رقم الموبايل "),

          TextField(

          ),
          Text("تاريخ الميلاد"),

          TextField(

          ),
          FlatButton(
            child: Text("تحديث البيانات" ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
            color: Colors.black,
          ),
          Text("تغيير الرقم السري "),
          Divider(),
          TextField(

          ),

          FlatButton(
            child: Text("حفظ الرقم السري الجديد" ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
            color: Colors.black,
          )



        ],
      ))
      ,
    );
  }

 }
// class im extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     String path="images/lo.png";
//   //  AssetImage image= new AssetImage(path);
//    // Image myimg=new Image(image:image,width:400,height:400);
//
//     _account c=new _account();
//
//     Image.file(c.imagefile, width: 400,height: 400,);
//     return InkWell(
//       child:    Image.file(c.imagefile, width: 400,height: 400,),
//       onTap: (){
//
//         c.shoedialog(context);
//         // FileImage image=FileImage(c.imagefile);
//         // Image myimg=new Image(image:image,width:400,height:400);
//         //
//        // Image.file(c.imagefile, width: 400,height: 400,);
//       },
//     );
//
//   }
//
// }
