import 'package:flutter/material.dart';

class Creations extends StatefulWidget {
  @override
  _CreationsState createState() => _CreationsState();
}

class _CreationsState extends State<Creations> with TickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        toolbarHeight: 50,
        bottom: TabBar(
          controller: _tabController,
          tabs: [Text("Drinks"), Text("Themes")],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
