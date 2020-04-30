import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;

  final Function onPressed;

  const RoundIconButton({@required this.iconData, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      shape: CircleBorder(),
      elevation: 6.00,
      onPressed: onPressed,
      fillColor: Color(0xFF4c4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
