import 'package:flutter/material.dart';
class Util extends StatelessWidget {
  final String title;
  final String titlet;
  final String titley;
  final String ImageUrl;
  final String titleu;
  final IconData icon;
  final IconData iconw;

  const Util({Key? key, required this.title, required this.titlet, required this.titley, required this.ImageUrl, required this.titleu, required this.icon, required this.iconw}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImageUrl),
                  radius: MediaQuery.of(context).size.height * 0.05,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      titley,
                      style: TextStyle(

                        color: Colors.grey[600],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(icon,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(icon,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(icon,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(icon,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(iconw,
                          color: Colors.amber,
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  titlet,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                Text(
                  titleu,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.02),
      ),
    );
  }
}
