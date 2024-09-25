import 'package:flutter/material.dart';
import 'package:sample_flutter/listscreen.dart';

class TabViewScreen extends StatefulWidget {
  const TabViewScreen({super.key});

  @override
  State<TabViewScreen> createState() => _TabViewScreenState();
}

class _TabViewScreenState extends State<TabViewScreen> with TickerProviderStateMixin{

  late TabController _controller;
  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 5, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return MaterialApp(
      home:
      DefaultTabController(
        length: 5,
        child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  new SliverAppBar(
                    title: Text('Tabs Demo'),
                    pinned: true,
                    floating: true,
                    bottom: TabBar(
                      onTap: (int index){
                        print('Tab tapped $index');
                      },

                      isScrollable: true,
                      tabs: [
                        Tab(child: Text('Flight')),
                        Tab(child: Text('Train')),
                        Tab(child: Text('Car')),
                        Tab(child: Text('Cycle')),
                        Tab(child: Text('Boat')),
                      ],
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                children: <Widget>[
                  ListScreen(),
                  Center(
                    child: Text("Chats"),
                  ),
                  Center(
                    child: Text("Calls"),
                  ),
                  Center(
                    child: Text("Settings"),
                  ),
                  ListScreen(),

                ],
              ),
            )),
      )
    );
  }
}
