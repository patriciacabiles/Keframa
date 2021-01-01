import 'package:flutter/material.dart';
import 'package:keframa/components/app_bar.dart';
import 'package:keframa/components/buttons.dart';
import 'package:keframa/components/dummy.dart';
import 'package:keframa/screens/home/assets/assets.dart';
import 'package:keframa/theme/style.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: MainAppBar(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
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
                        child: mainInfo,
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
            SizedBox(
              width: 920,
              height: 40,
            ),
            Row(
              children: [
                // left box
                Container(
                  margin: EdgeInsets.only(left: 120),
                  child: Column(
                    children: [
                      SizedBox(width: 450, child: dummy10Sentences),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                // right box
                Container(
                  margin: EdgeInsets.only(right: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 450,
                        child: Image.asset('assets/groupCycling.jpg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 920,
              height: 40,
            ),
            Row(
              children: [
                // left box
                Container(
                  margin: EdgeInsets.only(left: 120),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 450,
                        child: Image.asset('assets/handlebars.jpg'),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                // right box
                Container(
                  margin: EdgeInsets.only(right: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 450, child: dummySubtitleLargeRightAlign),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 920,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
