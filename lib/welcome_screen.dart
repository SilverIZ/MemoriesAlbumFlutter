import 'package:flutter/material.dart';
import 'package:memories_album/home_Screen.dart';

/*Submission Dicoding
Iskandar Zulkarnaen
silverzulkarnaen@gmail.com*/

class WelcomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: Text(
                    "Welcome To...",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontFamily: "Benne",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Image.asset('images/Memories.png'),
                ),
                Container(
                  child: ElevatedButton(
                    child: Text(
                      'Mulai',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(fontSize: 25)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
