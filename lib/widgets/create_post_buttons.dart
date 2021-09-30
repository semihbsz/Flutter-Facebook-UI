import 'package:flutter/material.dart';

class CreatePostFlatButtonIcon extends StatelessWidget {
  final Function onpressed;
  final IconData icon;
  final Color color;
  final String labelTxt;

  const CreatePostFlatButtonIcon(
      {Key key, this.onpressed, this.icon, this.color, this.labelTxt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: onpressed,
      icon: Icon(
        icon,
        color: color,
      ),
      label: Text(labelTxt),
    );
  }
}
