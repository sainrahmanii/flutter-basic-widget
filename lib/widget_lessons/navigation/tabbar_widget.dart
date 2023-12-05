import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({Key? key}) : super(key: key);

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text(
          'Tabbar - Appbar',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
          size: 23,
        ),
        bottom: TabBar(
            controller: _tabController,
            unselectedLabelColor: const Color.fromARGB(255, 255, 255, 255),
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.directions_boat,
                ),
              ),
              Tab(
                icon: Icon(Icons.directions_bus),
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bike_rounded,
                ),
              )
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Tab 1'),
          ),
          Center(
            child: Text('Tab 2'),
          ),
          Center(
            child: Text('Tab 3'),
          )
        ],
      ),
    );
  }
}
