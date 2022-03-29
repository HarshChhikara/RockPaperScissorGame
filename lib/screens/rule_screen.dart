import 'package:flutter/material.dart';
import 'package:rpsgame/screens/main_screen.dart';

class RuleScreen extends StatefulWidget {
  const RuleScreen({Key? key}) : super(key: key);

  @override
  State<RuleScreen> createState() => _RuleScreenState();
}

class _RuleScreenState extends State<RuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060a47),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 34.0, horizontal:20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Text(
                "Rock beats Scissor, "
                    "Paper beats Rock, "
                    "Scissor beats Paper ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: RawMaterialButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> MainScreen(),//work here for rules
                      ));
                },
                padding: EdgeInsets.all(16.0),
                shape: StadiumBorder(
                    side: BorderSide(color: Colors.white, width: 5.0)),
                child: Text(
                  "Main Screen",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
    ),
    ),
    );
  }
}
