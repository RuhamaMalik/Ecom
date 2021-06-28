import 'package:flutter/material.dart';

void main() {}

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  HistoryState createState() => HistoryState();
}

class HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  // Navigate back to first route when tapped.
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            ],
            title: Center(
              child: Text(
                'Our Proucts',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff5c0b06),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffe08084), Colors.white, Color(0xffe08084)],
                ),
              ),
            ),
            // bottom: ,
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 50,
                  top: 20,
                ),

                //  searchhhhhhhhhh

                child: Container(
                    child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                  ),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                color: Colors.red[200],
                child: Center(
                    child: Text(
                  '20% Sale',
                  style: TextStyle(
                      // backgroundColor: Colors.red[200],
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
              ),

// listttttttttttttttttttttt

              //  hhhhhhhhhhhhhhh
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Sony 10000 mAh Power Bank', '21 Piece', '\$35.27',
                    'Quantity:1', new AssetImage("assets/ff.jpeg")),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Sony Xperia 1 III', '20 Pieces', '\$1199',
                    'Quantity:1', new AssetImage("assets/cc.jpeg")),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('OPPO A31', '18 Pieces', '\$200', 'Quantity:1',
                    new AssetImage("assets/dd.jpeg")),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Sony 10000 mAh Power Bank', '21 Piece', '\$35.27',
                    'Quantity:1', new AssetImage("assets/ff.jpeg")),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Audionic vision 8.21', '27 Piece', '\$44.26',
                    'Quantity:1', new AssetImage("assets/gg.jpeg")),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Apple Watch Series 6', '31 Piece', '\$1,249',
                    'Quantity:1', new AssetImage("assets/hh.jpeg")),
              ),
              // hxsh
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Sony Xperia 1 III', '20 Pieces', '\$1199',
                    'Quantity:1', new AssetImage("assets/cc.jpeg")),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('OPPO A31', '18 Pieces', '\$200', 'Quantity:1',
                    new AssetImage("assets/dd.jpeg")),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Sony 10000 mAh Power Bank', '21 Piece', '\$35.27',
                    'Quantity:1', new AssetImage("assets/ff.jpeg")),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Audionic vision 8.21', '27 Piece', '\$44.26',
                    'Quantity:1', new AssetImage("assets/gg.jpeg")),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Apple Watch Series 6', '31 Piece', '\$1,249',
                    'Quantity:1', new AssetImage("assets/hh.jpeg")),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: abc('Sony Xperia 1 III', '20 Pieces', '\$1199',
                    'Quantity:1', new AssetImage("assets/cc.jpeg")),
              ),
            ],
          ),
        ));
  }
}

Widget abc(var name, var pees, var price, var quantity, var imageURL) {
  return Container(
    color: Colors.red[50],
    height: 80,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Container(
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: new DecorationImage(
                  image: imageURL,
                )),
            height: 95,
            width: 80,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("5.0 (23 Review)"),
              Row(
                children: [
                  Text(pees),
                  Text(price,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              Text(quantity),
            ],
          ),
        )
      ],
    ),
  );
}
