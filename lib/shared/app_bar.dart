import 'package:flutter/material.dart';
import 'package:keframa/shared/buttons.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const MainAppBar({Key key, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextOnlyButton(
            label: 'The Route',
            route: '/route',
          ),
          TextOnlyButton(
            label: 'The Cause',
            route: '/',
          ),
          TextOnlyButton(
            label: 'The Team',
            route: '/team',
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
