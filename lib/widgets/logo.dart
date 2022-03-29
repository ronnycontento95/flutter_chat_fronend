import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String titulo;
  final String imagen;

  const Logo({Key key, @required this.titulo, @required this.imagen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(this.imagen)),
            SizedBox(height: 20),
            Text(this.titulo, style: TextStyle(fontSize: 13))
          ],
        ),
      ),
    );
  }
}
