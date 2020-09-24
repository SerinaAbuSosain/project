

class slidermodel{
  String path;
  String title;
  String desc;
  slidermodel({this.path,this.title,this.desc});
void setimage(String getimage){
  path=getimage;
}
  void settitle(String gettitle){
    title=gettitle;
  }
  void setdesc(String getdesc){
    desc=getdesc;
  }
  String getassetimage(){
  return path;
  }
  String getastitle(){
  return title;
  }
  String getasdesc(){
  return desc;
  }
}
List<slidermodel> getslider(){
List<slidermodel> slider=new List<slidermodel>();
slidermodel sm=new slidermodel();

sm.setimage('images/skip1.png');
sm.settitle("Transfer Service");
sm.setdesc("A transfer service is a pre booked transport of one or more persons based on pick up and drop off addresses.");
 slider.add(sm);
 sm= new slidermodel();

sm.setimage('images/skip3.png');
sm.settitle("Booking / Lead Time ");
sm.setdesc("The (minimum) time that is allowed between a booking and the time that it takes place.");
slider.add(sm);
sm= new slidermodel();

sm.setimage('images/skip6.png');
sm.settitle(" Pick up time");
sm.setdesc("The confirmed pick up time means the time the driver will meet the passenger at the confirmed pick-up address(es) and/or meeting point.");
slider.add(sm);
sm= new slidermodel();
return slider;
}
