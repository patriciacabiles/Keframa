import 'package:flutter/material.dart';
import 'package:keframa/components/app_bar.dart';
import 'package:keframa/components/divider.dart';
import 'package:keframa/components/dummy.dart';
import 'package:keframa/theme/style.dart';
import 'package:keframa/screens/team/profile_list.dart';

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

class TeamProfileGrid extends StatefulWidget {
  @override
  _TeamProfileGridState createState() => _TeamProfileGridState();
}

class _TeamProfileGridState extends State<TeamProfileGrid> {
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
