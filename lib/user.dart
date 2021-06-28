import 'package:assignment4/login.dart';
import 'package:flutter/material.dart';

void main() {}

class Userr extends StatefulWidget {
  const Userr({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<Userr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffe08084), Colors.white, Color(0xffe08084)],
                ),
              ),
            ),
            title: Center(
                child: Text(
              'Ecom App UI',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xffeb3495)),
            )),
          ),
          body: ListView(
            padding: EdgeInsets.only(left: 30),
            children: [
              Container(
                // margin: EdgeInsets.only(left: 60),
                height: 150,
                // width: 150,

                child: Row(
                  children: [
                    Container(
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/us.png"),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'User',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 38,
                          ),
                        ),
                        Text(
                          'abc@gmail.com',
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Padding(padding: const EdgeInsets.only(left: 10))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 23,
                child: Text(
                  'ACCOUNT INFORMATION',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  ListTile(
                    title: Text(
                      'Full Name',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'User',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'user@gmail.com',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Phone',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '+920000000000',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      ' Address',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'New York,Random Street,House No 55',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Gender',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Female',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Date Of Birth',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'August 10, 2001',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    // color: Colors.red[200],
                    child: ListTile(
                        title: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red[200]),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text('LogOut'))),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
