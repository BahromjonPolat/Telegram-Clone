import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegramclone/components/size_config.dart';
import 'package:telegramclone/constants/colors.dart';
import 'package:telegramclone/widgets/drawer.dart';
import 'package:telegramclone/widgets/text_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: const CustomDrawer(),
    );
  }

  AppBar _buildAppBar() => AppBar(
    elevation: 1.5,
    title: SetTextWidget("Telegram Clone", textColor: kColorWhite, size: 18.0),
    bottom: TabBar(
      controller: _tabController,
      tabs: [
        _setTab("All"),
        _setTab("Personal"),
        _setTab("Groups"),
        _setTab("Channels"),
      ],
    ),
  );

  TabBarView _buildBody() => TabBarView(
      controller: _tabController,
      children: [
        _center(Icons.home_outlined),
        _center(Icons.person_outline),
        _center(Icons.group_outlined),
        _center(CupertinoIcons.speaker_2),
      ]);

  Center _center(IconData iconData) => Center(child: Icon(iconData, size: 48.0),);

  Tab _setTab(String label) => Tab(
    text: label,
  );
}
