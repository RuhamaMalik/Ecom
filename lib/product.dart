import 'dart:ui';

import 'package:assignment4/history.dart';
import 'package:assignment4/user.dart';
import 'package:assignment4/wishList.dart';
import 'package:flutter/material.dart';

void main() {}

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<dynamic> lst = [
    'ac.jpeg',
    'cc.jpeg',
    'bb.jpeg',
    'dd.jpeg',
    'ff.jpeg',
    'gg.jpeg',
    'hh.jpeg',
    'ii.jpeg'
  ];
  var lst2 = [
    'Framework Laptop',
    'Sony Xperia 1III',
    '9D Glass Protector',
    'OPPO A31',
    'Power Bank',
    'Audionic speaker',
    'Apple watch Series 6',
    'Mobile Protector'
  ];
  var lst3 = [
    '(23 Reviews)',
    '(24 Reviews)',
    '(39 Reviews)',
    '(23 Reviews)',
    '(36 Reviews)',
    '(23 Reviews)',
    '(28 Reviews)',
    '(23 Reviews)',
    '(23 Reviews)'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF67cfac)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff346b54),
          title: Center(
            child: Text(
              'Ecom App UI',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [Icon(Icons.search)],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/vv.png"), fit: BoxFit.cover)),
              )),
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.red[200],
                child: ListTile(
                    title: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => History()));
                        },
                        child: Text('History'))),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.red[200],
                child: ListTile(
                    title: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Userr()));
                        },
                        child: Text('My Profile'))),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.red[200],
                child: ListTile(
                    title: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Wish()));
                        },
                        child: Text('Wish List'))),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink),
                  color: Colors.red[50],
                ),
                height: 200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail, color: Colors.pink),
                        Text('Email')
                      ],
                    ),
                    Text(
                      'abc@gmail.com',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.call, color: Colors.pink),
                        Text('Call')
                      ],
                    ),
                    Text(
                      '+92000000000',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.message, color: Colors.pink),
                        Text('Messages')
                      ],
                    ),
                    Text(
                      '(12 Messages)',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.pink,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_shopping_cart,
              ),
              label: 'Charts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Items',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View more',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff06384a),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 270,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    abc('assets/ac.jpeg', 'Framework Laptop',
                        '5.0(23 Reviews)'),
                    abc('assets/bb.jpeg', '9D Glass Protector',
                        '5.0(24 Reviews)'),
                    abc('assets/cc.jpeg', 'Sony Xperia 1III',
                        '5.0(39 Reviews)'),
                    abc('assets/ff.jpeg', 'Sony 1000mAh PB', '5.0(23 Reviews)'),
                    abc('assets/gg.jpeg', 'Audionic speaker',
                        '5.0(23 Reviews)'),
                    abc('assets/hh.jpeg', 'Apple watch Series 6',
                        '5.0(28 Reviews)'),
                    abc('assets/ii.jpeg', 'Mobile Protector', '5.0(23 Reviews)')
                  ],
                ),
              ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Container(
              //     height: 50,
              //     child: Text(
              //       'More Categories',
              //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              //     ),
              //   ),
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'More Categories',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View more',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff06384a),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
//lisssssssssssst2222222222

              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 50,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    // abc('assets/ac.jpeg', 'Framework Laptop',
                    //     '5.0(23 Reviews)'),
                    // abc('assets/bb.jpeg', '9D Glass Protector',
                    //     '5.0(24 Reviews)'),
                    // abc('assets/cc.jpeg', 'Sony Xperia 1III',
                    //     '5.0(39 Reviews)'),
                    // abc('assets/ff.jpeg', 'Sony 1000mAh PB', '5.0(23 Reviews)'),
                    // abc('assets/gg.jpeg', 'Audionic speaker',
                    //     '5.0(23 Reviews)'),
                    // abc('assets/hh.jpeg', 'Apple watch Series 6',
                    //     '5.0(28 Reviews)'),
                    // abc('assets/ii.jpeg', 'Mobile Protector', '5.0(23 Reviews)')
                    SizedBox(
                      width: 4,
                    ),

                    b(Icons.local_drink, 'Clothes', '51 (items)'),
                    SizedBox(
                      width: 4,
                    ),
                    b(Icons.bolt, 'Electonics', '16 (items)'),
                    SizedBox(
                      width: 4,
                    ),

                    b(Icons.chair_alt, 'Households', '55 (items)'),
                    SizedBox(
                      width: 4,
                    ),

                    b(Icons.bolt, 'Appliances', '23 (items)'),
                    SizedBox(
                      width: 4,
                    ),

                    b(Icons.double_arrow, 'Others', '15 (items)'),
                    SizedBox(
                      width: 4,
                    ),
                  ],
                ),
              ),

              //Grid View
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 40,
                crossAxisSpacing: 20,
                children: List.generate(lst.length, (index) {
                  return Container(
                    color: Colors.black38,
                    height: 400,
                    width: 200,
                    child: ListTile(
                      title: Container(
                        height: 250,
                        width: 200,
                        child: Image.asset(lst[index]),
                      ),
                      subtitle: new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Text(lst2[index],
                                style: new TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            new Text(lst3[index],
                                style: new TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                          ]),
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Card widget
Container abc(String imageVal, String heading, String subtitle) {
  return Container(
    color: Colors.black26,
    width: 210,
    child: Card(
      child: Wrap(
        children: <Widget>[
          Image.network(imageVal),
          ListTile(
              title: Text(
                heading,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(children: [
                SizedBox(
                  height: 10,
                ),
                a(),
                a(),
                a(),
                a(),
                a(),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                )
              ]))
        ],
      ),
    ),
  );
}

//Star Icon
Widget a() {
  return Container(
      height: 10,
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 12,
      ));
}

Widget b(var icoon, var nam, var item) {
  return Container(
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    width: 150,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          icoon,
          color: Colors.purple,
          size: 35,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nam,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              item,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    ),
  );
}
