import 'package:animationtask/animation_state_mangemet.dart';
import 'package:animationtask/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  runApp(animTask());
}

class animTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AnimationStateManagement animationStateManagement =
      AnimationStateManagement.instance;

  double animationWidth = 350.0;
  double animationHeight = 200.0;
  Curve changeCurve = Curves.easeIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: StateBuilder(
            observe: () => animationStateManagement,
            builder: (context, _) {
              return InkWell(
                onTap: () {
                  animationStateManagement.stateAnimationPage(330.0, 180.0);
                  performActions();
                },
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  duration: Duration(milliseconds: 500),
                  width: animationStateManagement.normalWidth,
                  height: animationStateManagement.normalHeight,
                  curve: animationStateManagement.normalCurve,
                  child: Hero(
                    tag: "1",
                    child: Image(
                      image: AssetImage("assets/images/ACV.jpeg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              );
            }),
      ),
      // floatingActionButton: FloatingActionButton(
      // child: Icon(Icons.add),
      // onPressed: () {
      // setState(() {
      // animationWidth = 350.0;
      // animationHeight = 200.0;
      // changeCurve = Curves.easeInOutBack;
      // });
      // },
      // )
    );
  }

  Future performActions() async {
    // await containerAnimationPerform(330.0,180.0);
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => DetailPage()));
    });
  }

// containerAnimationPerform(double w,double h) {
//   setState(() {
//     animationWidth = 330.0;
//     animationHeight = 180.0;
//   });
// }

}
