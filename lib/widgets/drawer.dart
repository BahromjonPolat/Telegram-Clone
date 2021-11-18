import 'package:flutter/material.dart';
import 'package:telegramclone/widgets/set_icon.dart';
import 'package:telegramclone/widgets/text_widgets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _setUserAccountDrawer(),
          _setDrawerMenu(Icons.new_label_outlined, "New group")
        ],
      ),
    );
  }

  UserAccountsDrawerHeader _setUserAccountDrawer() => UserAccountsDrawerHeader(
        accountName: SetTextWidget("User name"),
        accountEmail: SetTextWidget("admin@admin.com"),
        currentAccountPicture: CircleAvatar(),
      );

  _setDrawerMenu(IconData iconData, String label) => ListTile(
        leading: SetIcon(iconData),
        title: SetTextWidget(label, weight: FontWeight.bold),
        onTap: () {},
      );
}
