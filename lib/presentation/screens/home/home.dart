import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:masters/widgets/app_header.dart';

import 'return_gst.dart';
import 'search_gst.dart';
import 'widgets/home_header.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

// mixin for smoother animations
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _gstController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _gstController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _gstController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            AppHeader(
              child: HomeHeader(
                tabController: _tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  SearchGst(),
                  ReturnGst(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
