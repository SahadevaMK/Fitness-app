import 'package:fitness/utils/grid.dart';
import 'package:flutter/material.dart';
class Trainer extends StatelessWidget {
  const Trainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/ram.jpeg'),
                radius: MediaQuery.of(context).size.height * 0.03,
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
        padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category List',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Text(
              'Find a Trainer',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              child: Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
                child: Row(
                  children: [
                    Icon(Icons.search_rounded,
                    color: Colors.blueAccent,
                      size: 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Text(
                      'Search Your Trainer',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.02),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
           Container(
             height: 375,
             child: ListView(
               scrollDirection: Axis.vertical,
               children: [
                 Column(
                   children: [
                     Row(
                       children: [
                         Nasa(
                           ImageUrl:'images/girl.jpg',
                           title: Text(
                             'Fitness',
                             style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           titlet: Text(
                             '35 Trainer',
                             style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.normal,
                                 fontSize: 10
                             ),
                           ),
                         ),
                         Nasa(
                           ImageUrl:'images/locc.jpg',
                           title: Text(
                             'Arts Dance',
                             style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           titlet: Text(
                             '35 Trainer',
                             style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.normal,
                                 fontSize: 10
                             ),
                           ),
                         ),
                       ],
                     ),
                     Row(
                       children: [
                         Nasa(
                           ImageUrl:'images/loww.jpg',
                           title: Text(
                             'Fit Martial',
                             style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           titlet: Text(
                             '22 Trainer',
                             style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.normal,
                                 fontSize: 10
                             ),
                           ),
                         ),
                         Nasa(
                           ImageUrl:'images/shamm.jpg',
                           title: Text(
                             'yoga',
                             style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           titlet: Text(
                             '40 Trainer',
                             style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.normal,
                                 fontSize: 10
                             ),
                           ),
                         ),
                       ],
                     ),
                     Column(
                       children: [
                         Row(
                           children: [
                             Nasa(
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
                             Nasa(
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
                           ],
                         ),
                         Row(
                           children: [
                             Nasa(
                               ImageUrl:'images/women.jpg',
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
                             Nasa(
                               ImageUrl:'images/men.jpg',
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
                           ],
                         ),

                       ],
                     ),
                   ],
                 ),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
