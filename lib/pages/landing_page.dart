import 'package:flutter/material.dart';
import 'package:keframa/shared/app_bar.dart';
import 'package:keframa/shared/buttons.dart';
import 'package:keframa/shared/style.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: MainAppBar(
        appBar: AppBar(),
      ),
      body: Center(
        child: Row(
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
                    style: subheadingStyle,
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
                    child: dummy5Sentences,
                  )
                ],
              ),
            )
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

final dummy5Sentences = Text(
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla augue magna consequat mattis netus. Dui mi tortor elementum odio odio congue elementum nunc. Mi, est urna vulputate faucibus eu. Id lectus nisl ultrices purus.",
  textAlign: TextAlign.end,
  style: textBodyStyle2,
);

final dummy10Sentences = Text(
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus id lorem quis nisl et quam. Sollicitudin quisque faucibus aenean magnis massa adipiscing euismod. Dignissim sem nulla vestibulum sed phasellus nec. Tortor egestas in consectetur egestas erat molestie tellus. Sit phasellus vitae sed tempus nulla fermentum senectus. Odio laoreet diam, purus neque enim, elit, faucibus. Tellus id pretium sem netus donec. Risus, egestas odio egestas sit enim diam tristique a tellus. Faucibus venenatis, lectus quisque massa dapibus at rhoncus.",
  style: textBodyStyle,
);
