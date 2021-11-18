import 'package:flutter/material.dart';

class SetIcon extends StatelessWidget {
  final IconData _icon;
  double? size;
  Color? color;

  SetIcon(
    this._icon, {
    Key? key,
    this.size = 24.0,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(_icon, size: size, color: color);
  }
}
