import 'package:fitness/utils/spavee.dart';
import 'package:flutter/material.dart';
class Nam extends StatelessWidget {
  const Nam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.015),
                  color: Colors.white,
                ),
              ),
              Icon(Icons.notifications,
              color: Colors.red,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Trainer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Spavee(
                      ImageUrl: ('images/shamm.jpg'),
                      title: Text(
                        'BAattrick Rosea',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      titlet: Text(
                        'Yoga Trainer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 10
                        ),
                      ),
                      titley: Text(
                        '\&25.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      titleu: Text(
                        'Per minutes',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Spavee(
                      ImageUrl: ('images/loww.jpg'),
                      title: Text(
                        'BAattrick Rosea',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      titlet: Text(
                        'Yoga Trainer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 10
                        ),
                      ),
                      titley: Text(
                        '\&25.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      titleu: Text(
                        'Per minutes',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Spavee(
                      ImageUrl: ('images/locc.jpg'),
                      title: Text(
                        'BAattrick Rosea',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      titlet: Text(
                        'Yoga Trainer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 10
                        ),
                      ),
                      titley: Text(
                        '\&25.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      titleu: Text(
                        'Per minutes',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
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
