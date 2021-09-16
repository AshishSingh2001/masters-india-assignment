// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key, required this.tabController}) : super(key: key);
  final TabController tabController;

  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: PopupMenuButton<String>(
            offset: Offset(-20, 30),
            padding: const EdgeInsets.only(top: 20),
            iconSize: 24,
            icon: const Icon(
              Icons.more_vert_sharp,
              color: Colors.white,
            ),
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings', 'Profile'}.map((String choice) {
                return PopupMenuItem<String>(
                  height: 40,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select the type for',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
              Text(
                'GST Number Search Tool',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  controller: tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    border: Border.all(
                        width: 4,
                        color: Theme.of(context).secondaryHeaderColor),
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: Colors.white,
                  ),
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.white,
                  tabs: const [
                    Tab(text: 'Search GST Number'),
                    Tab(text: 'GST Return Status'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
