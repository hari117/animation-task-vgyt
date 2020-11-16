import 'package:animationtask/animation_state_mangemet.dart';
import 'package:animationtask/main.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  AnimationStateManagement animationStateManagement =
      AnimationStateManagement.instance;
  double opacValue=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    visibleContent();
  }

  visibleContent()
  {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        opacValue=1;

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // /  backgroundColor: Colors.red,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: "1",
                child: Image(
                    width: double.infinity,
                    height: 300,
                    image: AssetImage("assets/images/ACV.jpeg"),
                    fit: BoxFit.cover),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: AnimatedOpacity(
                  opacity: opacValue,
                  duration: Duration(milliseconds: 500),
                  child: Text(
                    "Assassin's Creed Valhalla Gameplay, Story Details Revealed",
                    maxLines: 3,
                    style: TextStyle(
                        height: 1.3,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1.2),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: AnimatedOpacity(
                  opacity: opacValue,
                  duration: Duration(milliseconds: 1000),
                  child: Text(
                    "Revealed alongside a cinematic trailer offering a glimpse of the new setting and characters, Ubisoft confirmed Valhalla will be set in ninth-century Europe, as players take on the role of Eivor, a Viking raider who leads their people out of Norway and into the kingdoms of England. Valhalla is being developed at Ubisoft Montreal, which previously developed Assassin’s Creed IV: Black Flag and Assassin’s Creed Origins, with over a dozen Ubisoft associate studios contributing as well to the new game.",

                    style: TextStyle(
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        letterSpacing: 1.2),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: AnimatedOpacity(
                  opacity: opacValue,
                  duration: Duration(milliseconds: 1500),
                  child: Text(
                    "Gameplay - Settlements, Raids, Customization",
                    maxLines: 3,
                    style: TextStyle(
                        height: 1.3,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1.2),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: AnimatedOpacity(
                  opacity: opacValue,
                  duration: Duration(milliseconds: 2000),
                  child: Text(
                    "While the reveal trailer did not showcase direct gameplay, many of its scenes echo the new additions Valhalla is making to the franchise’s gameplay.The open world setting of England’s Dark Ages andViking culture will also bring with it some key elements toValhalla’s gameplay, perhaps mostnotably the Viking settlement Eivorleading.",

                    style: TextStyle(
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        letterSpacing: 1.2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          animationStateManagement.stateAnimationPage(350,200);
        },
        elevation: 0,
        backgroundColor: Colors.white,
        child: Icon(
          Icons.clear,
          color: Colors.black,
        ),
      ),
    );
  }
}
