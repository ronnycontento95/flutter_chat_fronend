import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final Function onPressed;

  const BotonAzul({Key key, @required this.text, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: HexColor("#FFCA00"),
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(text,
              style: TextStyle(color: HexColor("#0063BD"), fontSize: 17)),
        ),
      ),
    );
  }
}
