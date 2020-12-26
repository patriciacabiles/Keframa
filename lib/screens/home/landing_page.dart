import 'package:flutter/material.dart';
import 'package:keframa/components/app_bar.dart';
import 'package:keframa/components/buttons.dart';
import 'package:keframa/components/dummy.dart';
import 'package:keframa/theme/style.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: MainAppBar(
        appBar: AppBar(),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(120, 70, 100, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 450,
                        child: mainIntro,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "London to Amsterdam 2021",
                        style: subheadingLightBlueStyle,
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 450,
                        child: info,
                      ),
                      SizedBox(height: 20),
                      BoxedButton(
                        label: 'Support',
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 30, 110, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Image.asset('assets/keframa-circle-01.png'),
                      ),
                      SizedBox(height: 40),
                      SizedBox(
                        width: 320,
                        child: dummy5SentencesEnd,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: Expanded(
                    child: dummy10Sentences,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final mainIntro = Text(
  "Today you've supported a child's education",
  style: headerStyle,
);

final info = Text(
  "A dedicated team of 56 cyclists are travelling 325 miles over 5 days in aid of the Keframa School Build. By supporting our cause, you have given a young adult in Northern Uganda a chance to thrive.",
  style: textBodyStyle,
);
