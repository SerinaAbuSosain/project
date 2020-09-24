import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imag/layouts/login_screen.dart';
import 'package:imag/layouts/slider_screen.dart';

class skip extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
      return _skip();
  }

}

class _skip extends State<skip>{
  List<slidermodel> slider=new List<slidermodel>();
  int c=0;
  PageController pageController=new PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slider=getslider();
  }
Widget pageindex (bool iscurrent){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.0),
      height: iscurrent ? 10.0 :6.0,
      width:  iscurrent ? 10.0 :6.0,
        decoration: BoxDecoration(
          color: iscurrent ? Colors.grey :Colors.grey[300],
          borderRadius: BorderRadius.circular(12)
        ),
    );
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body:PageView.builder(
        controller: pageController,
          itemCount: slider.length,
          onPageChanged: (val){
            c=val;
          },
          itemBuilder: (context, index){
            return SliderTile(
              path: slider[index].getassetimage(),
              title: slider[index].getastitle(),
            desc: slider[index].getasdesc() ,
            );
          }) ,
        bottomSheet:c != slider.length -1 ?Container(
          height: Platform.isIOS ?70:60,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return login();
                  })
                  );
                },
                child: Text("SKIP"),
              ),
              Row(
                children: [
                  for(int i=0;i<slider.length;i++)c==i ? pageindex(true) : pageindex(false)
                ],
              ),
              GestureDetector(
                onTap: (){
                 pageController.animateToPage(c+1, duration:Duration(milliseconds:400), curve: Curves.linear);
                if (c==2){
                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return login();
                  })
                  );
                }

                  },
                child: Text("NEXT"),
              ),
            ],
          ),

        ) :Navigator.push(context, MaterialPageRoute(builder: (context){

          return login();
        })
        )
        // Container(
        //   height: Platform.isIOS ?70:60,
        //   color: Colors.blue,
        //   child: Text("GET STARTED NOW"),
        // ) ,
    );
  }

}

class SliderTile extends StatelessWidget{
  String path ,title,desc;

  SliderTile({ this.path, this.title , this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(path),
          SizedBox(height: 20,),
          Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          SizedBox(height: 12,),
          Text(desc, textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)


        ],
      ),

    );
  }

}