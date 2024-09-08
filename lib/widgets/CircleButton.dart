import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final IconData icon;
  final double iconSize;
  final Function onPressed;

  const CircleButton({super.key, required this.icon, required this.iconSize, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(onPressed: (){}, icon: Icon(icon), iconSize: iconSize, color: Colors.black,),
    );
  }
}
