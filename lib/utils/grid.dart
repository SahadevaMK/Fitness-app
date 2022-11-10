import 'package:flutter/material.dart';
class Nasa extends StatelessWidget {
  final Text title;
  final Text titlet;
  final String ImageUrl;
  const Nasa({Key? key, required this.title, required this.titlet, required this.ImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.008),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                ImageUrl,
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                title,
                titlet,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
