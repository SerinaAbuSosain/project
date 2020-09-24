

import 'package:flutter/material.dart';
import 'package:imag/layouts/account_screen.dart';

class mylist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var list = ListView(

      children: [

        ListTile(
          leading: Icon(Icons.directions_car, size: 40, color: Colors.black,),
          title: Text("شحن السيارات ", style: TextStyle(color: Colors.black),),
          subtitle: Text("لشحن سيارتك من والى جميع دول العالم اضغط هنا ",
            style: TextStyle(color: Colors.black),),
        ),

        Divider(),
        ListTile(
          leading: Icon(Icons.done, size: 40, color: Colors.black,),
          title: Text("تجديد الادخال", style: TextStyle(color: Colors.black),),
          subtitle: Text("او الرخصة الدولية يمكنك طلب الخدمة من هنا KT ",
            style: TextStyle(color: Colors.black),),

        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.live_help, size: 40, color: Colors.black,),
          title: Text("استعلام عن مخالفات وغرامات السيارات الاجنبية",
            style: TextStyle(color: Colors.black),),
          subtitle: Text("للاستعلام عن المخالفات والغرامات اضغط هنا ",
            style: TextStyle(color: Colors.black),),

        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.location_on, size: 40, color: Colors.black,),
          title: Text("فروعنا", style: TextStyle(color: Colors.black),),
          subtitle: Text("اماكن وهواتف الفروع الخاصة بنا",
            style: TextStyle(color: Colors.black),),

        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.info, size: 40, color: Colors.black,),
          title: Text(
            "معلومات الجمارك", style: TextStyle(color: Colors.black),),
          subtitle: Text(
            "لمعرفة اماكن الجمارك وارقام الهواتف وعناوينها اضغط هنا ",
            style: TextStyle(color: Colors.black),),

        ),
        Divider(),
      ],
    );


    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.indigo,
      ),

      drawer: Drawer(

        child: ListView(
          children: [

            ListTile(
              leading: Icon(Icons.home),
              title: Text("الرئيسية"),
              // title: ,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("الملف الشخصي"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return account();
                })
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.headset_mic),
              title: Text("الدعم الفني"),
              // title: ,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("تسجيل الخروج "),
              // title: ,
            ),
            Divider(),
          ],
        ),
      ),
      body: list,
    );
  }
}