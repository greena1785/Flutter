import 'package:flutter/material.dart';

class Screen_2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.asset('assets/ocean.jpg',fit: BoxFit.cover,),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                          children: [
                            Text('Oeschinen Lake Campound', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Text('Kandesteg, Switgerland',),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        )
                    ),
                    Icon(Icons.star, color: Colors.amber,),
                    Text('43',),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        'Call',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.directions,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        'Route',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.all(14),child: Text('The ocean is a huge body of saltwater that covers about 71 percent of Earth\'s surface. The planet has one global ocean, though oceanographers and the countries of the world have traditionally divided it into four distinct regions: the Pacific, Atlantic, Indian, and Arctic oceans.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),)
            ],
          ),
        ],
      ),
    );
  }
}
