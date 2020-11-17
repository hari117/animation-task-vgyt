import 'package:flutter/cupertino.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class AnimationStateManagement extends StatesRebuilder {
  static AnimationStateManagement instance = AnimationStateManagement();
  double normalWidth=350.0;
  double normalHeight=200.0;

  Curve normalCurve=Curves.easeIn;

  stateAnimationPage(double w, double h) {
    normalWidth = w;
    normalHeight = h;
    normalCurve=Curves.easeInOut;
    rebuildStates();
  }

}
