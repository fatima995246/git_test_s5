import 'package:flutter/material.dart';

class sebhaScreen extends StatefulWidget {
  static const String routeName = 'sebha-screen';

  @override
  State<sebhaScreen> createState() => _sebhaScreenState();
}

class _sebhaScreenState extends State<sebhaScreen> {
  double turns = 0.0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: Duration(seconds: 1),
                child: Image.asset('assets/image/body_sebha_logo.png'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  turns += 1 / 33;
                  counter++;
                });
              },
              child: Text('$counter'),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.black),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: const Text(
                ' سبحان الله ',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
