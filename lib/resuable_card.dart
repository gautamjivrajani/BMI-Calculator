import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.colour, this.CardChild, this.onpress});

  final Color colour;
  final Widget CardChild;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: CardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadiusDirectional.circular(10.0),
        ),
      ),
    );
  }
}
