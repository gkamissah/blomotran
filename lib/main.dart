import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200.0,
              color: Colors.black,
            ),
            CircleAvatar(
              radius: 90.0,
              backgroundImage: AssetImage('assets/Money.jpg'),
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(130, 5, 20, 0),
              child: Text('BLOMOTRAN',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 33.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(145, 5, 20, 0),
              child: Text('Safe and Reliable',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                    color: Colors.green[500],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  )),
            ),
          ],
        )),
        floatingActionButton: new FloatingActionButton.extended(
          label: Text("Let's Go"),
          onPressed: () {
            print('Click');
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new SignInScreen()),
            );
          },
          backgroundColor: Colors.green[500],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ));
  }
}

//Widget builderMessageButton() => FloatingActionButton.extended(
  //    label: Text('Go'),
    //  onPressed: () {
      //  print('Click');
       // Navigator.push(context,new MaterialPageRoute(builder: (context) => new SignInScreen()));
      //},
    //);
