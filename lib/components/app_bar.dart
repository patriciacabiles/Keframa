import 'package:flutter/material.dart';
import 'package:keframa/components/buttons.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const MainAppBar({Key key, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white, size: 2),
      backgroundColor: Colors.white,
      elevation: 1.0,
      title: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: TitleButton(label: 'London2Amsterdam', route: '/')),
      actions: <Widget>[
        TextOnlyButton(
          label: 'The Route',
          route: '/route',
        ),
        TextOnlyButton(
          label: 'The Cause',
          route: '/cause',
        ),
        TextOnlyButton(
          label: 'The Team',
          route: '/team',
        ),
        SimpleTextOnlyButton(label: 'Sign In', route: '/login'),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
