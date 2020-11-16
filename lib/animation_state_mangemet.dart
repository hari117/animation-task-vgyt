import 'package:flutter/cupertino.dart';
import 'package:states_rebuilder/states_rebuilder.dart';


class AnimationStateManagement extends StatesRebuilder
{

  static AnimationStateManagement instance=AnimationStateManagement();
  double normalWidth;
  double normalHeight;

  double animationWidth;
  double animationHeight;
  Curve normalCurve;
  Curve animatedCurve;

  stateAnimationPage()
  {
rebuildStates();
  }

  endAnimationPage()
  {
rebuildStates();



  }





}