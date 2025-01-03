import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, this.cardChild,  this.onPress});

  final Color? color;
  final Widget? cardChild;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if(onPress != null){
            onPress!();
          }
        },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      )
    );
  }
}