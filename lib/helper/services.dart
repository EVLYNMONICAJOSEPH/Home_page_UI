import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  final String image;
  final String name1, name2;

  Services({
    required this.name1,
    required this.name2,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          image,
          height: height * 0.05,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          name1,
          style: TextStyle(fontSize: 12),
        ),
        Text(
          name2,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
