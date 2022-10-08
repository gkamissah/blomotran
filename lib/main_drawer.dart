import 'package:final_project/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.green[500],
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/Money.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text('BLOMOTRAN',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('FLUTTER DEVELOPER',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.teal[100],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      )),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'LOGOUT',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
                print('Signed Out');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.copyright),
            title: Text(
              'Copyright',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.red[500],
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
