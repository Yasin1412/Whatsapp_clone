import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/chat_page.dart';
import 'package:whatsapp_ui/pages/status_page.dart';

import 'call_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>with SingleTickerProviderStateMixin {
TabController _tabController;
  final List<Tab> topTabs=<Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
    
  ];
  @override
  void initState() { 
    _tabController=TabController(length: 4,vsync: this)
    ..addListener(() {
      setState(() {});
    });

    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search Button Clicked');
            }),
            IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              print('Three Dot Button Clicked');
            })
        ],
        bottom: TabBar(
          controller:_tabController,
          tabs:topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          Chatpage(),
          StatusPage(),
          CallPage(),

        ],

      ),
      floatingActionButton: _getFAB(),

    );
  }
  _getFAB(){
    if(_tabController.index==1){
      return FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
          ),
        onPressed: ()=>print('open chat')
        );
    }

   else if(_tabController.index==2){
      return FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
          ),
        onPressed: ()=>print('open Camera')
        );
    }

   else if(_tabController.index==3){
      return FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.call,
          color: Colors.white,
          ),
        onPressed: ()=>print('open call')
        );
    }
    else{
      return null;
    }
  }
}
