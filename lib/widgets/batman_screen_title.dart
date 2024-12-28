import 'package:flutter/material.dart';

class BatmanScreenTitle extends AnimatedWidget {

  BatmanScreenTitle(Animation animation) : super(listenable: animation);

  Animation get _animationLogoMoveUp => listenable as Animation;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _animationLogoMoveUp.value,
      child: Column(
        children: [
          Text('WELCOME TO', style: TextStyle(
            color: Colors.white,
            fontSize: 22
          )),
          Text('GOTHAM CITY', style: TextStyle(
            color: Colors.white,
            fontSize: 35
          ))
        ],
      ),
    );
  }
}