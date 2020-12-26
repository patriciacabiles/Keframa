import 'package:flutter/material.dart';
import 'package:keframa/components/app_bar.dart';
import 'package:keframa/components/divider.dart';
import 'package:keframa/components/dummy.dart';
import 'package:keframa/components/style.dart';

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
        child: Column(children: [
          Container(
            padding: EdgeInsets.fromLTRB(120, 0, 120, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 120, 0),
                    child: Text('Meet the Team', style: headerStyle),
                  ),
                ]),
                CustomDivider(),
                SizedBox(height: 5),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 120, 0),
                    child: SizedBox(width: 500, child: dummy5SentencesStart),
                  ),
                ]),
                TeamProfileGrid()
              ],
            ),
          )
        ]),
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

class TeamProfileGrid extends StatefulWidget {
  @override
  _TeamProfileGridState createState() => _TeamProfileGridState();
}

class _TeamProfileGridState extends State<TeamProfileGrid> {
  List<Profile> profiles = <Profile>[
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 1',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 2',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 3',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 4',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 5',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 6',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 7',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 8',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 9',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 10',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 11',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 12',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 13',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 14',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 15',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 16',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 17',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 18',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 19',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 20',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 21',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 22',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 23',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 24',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 25',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 26',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 27',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 28',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 29',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 30',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 31',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 32',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
    Profile(
      assetPath: 'assets/dummyPerson.jpg',
      name: 'Member 33',
      caption:
          'I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. AND REPEAT! I love cycling, Cycling loves me. I did not choose life on the road, the life on the road chose me. FIN.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      height: 550,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: GridView.count(
              crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
              children: profiles.map<Widget>((Profile profile) {
                return GridProfileItem(
                  profile: profile,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class Profile {
  final String assetPath;
  final String name;
  final String caption;

  Profile({
    this.assetPath,
    this.name,
    this.caption,
  });
}

class GridProfileItem extends StatelessWidget {
  final Profile profile;

  GridProfileItem({
    Key key,
    this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(profile.assetPath),
          ),
          SizedBox(height: 5),
          Text(
            profile.name,
            style: textBodyStyle,
          ),
          SizedBox(height: 2),
          Expanded(child: Text(profile.caption, style: textBodyStyle))
        ],
      ),
    );
  }
}
