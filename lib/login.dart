import 'package:assignment4/product.dart';
import 'package:flutter/material.dart';

void main() {}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bc.jpeg"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/lo.jpeg'),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'User name',
                      fillColor: Colors.white24,
                      filled: true),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.white24,
                      filled: true),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                child: Text(
                  'Login',
                  style: TextStyle(color: Color(0xff0b0942)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product()),
                  );
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
