import 'package:flutter/material.dart';

class OriginalButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color txtColor;
  final Color bgColor;

  const OriginalButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      @required this.txtColor,
      @required this.bgColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        color: bgColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          text,
          style: TextStyle(color: txtColor, fontSize: 24, fontFamily: 'PNU',fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
