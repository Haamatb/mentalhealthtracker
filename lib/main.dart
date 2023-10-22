import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: const Text("Mental Health Tracker"),
            bottom: const TabBar(
              tabs: [Tab(text: "Tasks"), Tab(text: "Dashboard")],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text("Tasks Window"),
              ),
              Center(
                child: Text("DashBoard Window"),
              ),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.grey[900],
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Image.asset("images/side.png"),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Get Professional Help",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Log Out",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.clear_all_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Clear All Accounts",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
