import 'dart:ffi';

import 'package:fitness/trainer.dart';
import 'package:fitness/utils/card.dart';
import 'package:fitness/utils/cont.dart';
import 'package:fitness/utils/long.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/ram.jpeg'),
                    radius: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Martin',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height * 0.025,
                          ),
                        ),
                        Text(
                          'Good Morning',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: MediaQuery.of(context).size.height*0.02
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.notifications,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
        child: Column(
          children: [
            Container(
              height: 115,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardUtil(),
                  CardUtil(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
                        child: Text(
                          'All categories',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.01),
                        color: Colors.deepOrange,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.15,
                    ),
                    Text(
                      'Essentially',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.15,
                    ),
                    Text(
                      'Fit martial',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Trainer',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.deepOrange,

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Transform.rotate(
                        angle:380,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.deepOrange,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.25,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Mant(
                    ImageUrl:'images/girl.jpg',
                    title: Text(
                      'Warren Craig',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titlet: Text(
                      'Yoga Trainer',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 10
                      ),
                    ),
                  ),
                  Mant(
                    ImageUrl:'images/men.jpg',
                    title: Text(
                      'Katrina Pilo',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titlet: Text(
                      'Essentially',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 10
                      ),
                    ),
                  ),
                  Mant(
                    ImageUrl:'images/women.jpg',
                    title: Text(
                      'Rihan',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titlet: Text(
                      'ArtsDance',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 10
                      ),
                    ),
                  ),
                ],
              ),
            ),//FIRST LISTVIEW
            Padding(
              padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Trainers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Transform.rotate(
                        angle:380,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.deepOrange,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              child: ListView(
                children: [
                  Util(
                    ImageUrl: ('images/girl.jpg'),
                    title: 'Hano Orego',
                    titley: 'Yoga Trainer',
                    icon: Icons.star,
                    iconw: Icons.star_border,
                    titlet: '\&8.88',
                    titleu: 'Per Minutes',
                  ),
                  Util(
                    ImageUrl: ('images/ram.jpeg'),
                    title: 'Batrick Rosea',
                    titley: 'Yoga Trainer',
                    icon: Icons.star,
                    iconw: Icons.star_border,
                    titlet: '\&25.0',
                    titleu: 'Per Minutes',
                  ),
                ],
              ),
            ),//SECOND LISTVIEW
          ],
        ),
      ),
    );
  }
}
