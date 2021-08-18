import 'package:flutter/cupertino.dart';

import 'StudentScreen.dart';

class BouncyAnimation extends PageRouteBuilder{
  final Widget widget;

  BouncyAnimation({this.widget}) : super(
          transitionDuration: Duration(seconds: 2),
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation, Widget child){
            animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation){
            return widget;
          }
      );

}