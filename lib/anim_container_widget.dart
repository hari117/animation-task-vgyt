import 'package:animationtask/another%20anim/detail_page.dart';
import 'package:flutter/material.dart';

class AnimContainerWidget extends StatefulWidget {
  int index;
  String imgUrl;
  @override
  _AnimContainerWidgetState createState() => _AnimContainerWidgetState();

  AnimContainerWidget(this.index,this.imgUrl);
}

class _AnimContainerWidgetState extends State<AnimContainerWidget> {
  double w = 330;
  double h = 250;
  int indentityWidgetkey=1;
  bool isPress=false;
  Curve curve=Curves.easeIn;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // isBack?bigScreen():smallScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        width: 330,
        height: 250,
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            isPress=true;
            updatePage();
            setState(() {});
            Future.delayed(Duration(milliseconds: 500), () {
              Navigator.push(
                  context, new MaterialPageRoute(builder: (context) => DetailPage(callBack: checkBoolValue,heroKey: widget.index,imgUrl: widget.imgUrl,)));
            });
          },
          child: AnimatedContainer(
            curve: curve,
            duration: Duration(milliseconds: 500),
//margin:EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            width: w,
            height: h,

            child: Hero(
              tag: widget.index,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(widget.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  checkBoolValue(int keypair)
  {

    if(keypair==indentityWidgetkey)
    print("checkBoolValue funtion callback entered");
    setState(() {
      isPress=false;
      curve=Curves.easeInOut;
    });
    updatePage();
  }

  updatePage(){

    if(isPress==true)
      {
        print("the isPress value is true");
        snmallScreen();
      }
    if(isPress==false)
      {
        print("the isPress value is false");
        reSizeScreen();
      }

  }

   snmallScreen()
   {
     print("small screen method called");
     setState(() {
       w = 300.0;
       h = 230.0;
     });

   }

   reSizeScreen()
   {
     print("reSize Screen method called");
     setState(() {
       w = 330.0;
       h = 250.0;
     });
   }


}
