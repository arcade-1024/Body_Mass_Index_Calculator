import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {

  IconContent({this.icon,this.label});
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size: 80.0,),
        SizedBox(height: 15.0),
        Text(label,style: TextStyle(fontSize: 18.0,color: Color(0XFF8D8E98)),)
      ],
    );
  }
}