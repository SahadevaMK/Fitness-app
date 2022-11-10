import 'package:flutter/material.dart';
class Spavee extends StatelessWidget {
  final Text title;
  final Text titlet;
  final Text titley;
  final Text titleu;
  final String ImageUrl;
  const Spavee({Key? key, required this.title, required this.titlet, required this.titley, required this.titleu, required this.ImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.009),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(ImageUrl),
                radius: 25,
              ),
              title,
              titlet,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.amber,
                    size: 15,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                child: Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                  child: Column(
                    children: [
                      titley,
                      titleu,
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.01),
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.02),
          color: Colors.white,
        ),
      ),
    );
  }
}
