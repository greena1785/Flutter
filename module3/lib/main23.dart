import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: home());
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCircularButton(
                      icon: Icons.arrow_back,
                      color: Colors.black,
                      onPress: () {
                        print('back button clicked');
                      },
                    ),
                    CustomCircularButton(
                      icon: Icons.search,
                      color: Colors.black,
                      onPress: () {
                        print('search button clicked');
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45))),
                    width: double.infinity,
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: -80,
                          child: CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.purple,
                            backgroundImage:
                            AssetImage("assets/images/cake.jpg"),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              //color: Colors.amber,
                              margin: EdgeInsets.only(top: 100),
                              child: Text('Sei Ua Samun Phrai',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined),
                                    Text('50min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Text('4.8'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.local_fire_department,
                                      color: Colors.red,
                                    ),
                                    Text('325Kcal'),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                                width: double.maxFinite,
                                height: 40,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.3, 0),
                                      child: Container(
                                        height: double.maxFinite,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: Row(children: [
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            '\$',
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.1, 0),
                                      child: Container(
                                        height: double.maxFinite,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              '-',
                                              style:
                                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(12),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle, color: Colors.white),
                                              child: Text(
                                                "10",
                                              ),
                                            ),
                                            Text(
                                              '+',
                                              style:
                                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Ingredienta',
                                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 100,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/cake.jpg",
                                            width: 52),
                                        Text("cake"),
                                      ],
                                    ),
                                  ),
                                  separatorBuilder: (_, index) => SizedBox(
                                    width: 15,
                                  ),
                                  itemCount: 4),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'About',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.'",
                                style: TextStyle(fontSize: 16, wordSpacing: 1.2, height: 1.5),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],

                        ),

                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}

class CustomCircularButton extends StatelessWidget {
  IconData icon;
  Color color;
  VoidCallback onPress;

  CustomCircularButton(
      {super.key,
        required this.icon,
        required this.color,
        required this.onPress});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Icon(
        icon,
        color: color,
      ),
      onPressed: onPress,
    );
  }
}