import 'package:flutter/material.dart';
import 'package:keframa/pages/landing_page.dart';
import 'package:keframa/shared/app_bar.dart';
import 'package:keframa/shared/divider.dart';
import 'package:keframa/shared/dummy.dart';
import 'package:keframa/shared/style.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
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
            Container(
              padding: EdgeInsets.fromLTRB(120, 70, 120, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 120, 0),
                        child: Text('Meet the Team', style: headerStyle),
                      ),
                    ],
                  ),
                  CustomDivider(),
                  SizedBox(height: 20),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 120, 0),
                        child:
                            SizedBox(width: 500, child: dummy5SentencesStart)),
                  ]),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      PersonInfo(
                        name: 'John Smith',
                        picturePath: 'assets/dummyPerson.jpg',
                      ),
                      PersonInfo(
                        name: 'Jane Smith',
                        picturePath: 'assets/dummyPerson.jpg',
                      ),
                      PersonInfo(
                        name: 'Chris Hoy',
                        picturePath: 'assets/dummyPerson.jpg',
                      ),
                    ],
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

class PersonInfo extends StatelessWidget {
  final String name;
  final String picturePath;

  const PersonInfo({Key key, this.name, this.picturePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(picturePath),
        ),
        SizedBox(height: 50),
        Text(
          name,
          style: textBodyStyle,
        ),
        SizedBox(height: 20),
        SizedBox(width: 300, child: dummy3Sentences)
      ],
    );
  }
}
