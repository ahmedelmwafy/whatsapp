import 'package:flutter/material.dart';

import 'Screens/Camera.dart';
import 'Screens/Chat.dart';
import 'Screens/Status.dart';
import 'Screens/calls.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
void initState() {
    super.initState();
    _tabController = new TabController(vsync: this,initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "Chat",),
            Tab(text: "Status",),
            Tab(text: "Calls",),
          ],
          ),
            actions: <Widget>[
              Icon(Icons.search),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
              Icon(Icons.more_vert),

            ],
      ),
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            
            CameraScreen(),
            ChatScreen(),
            CallsScreen(),
            StatusScreen(),
          ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,color: Colors.white,),
        onPressed: ()=>print("open chat"),
      ),
    );
  }
}