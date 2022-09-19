import 'package:flutter/material.dart';
import 'package:helpdesk/profile.dart';
import 'package:helpdesk/discovery.dart';
import 'package:helpdesk/helpdesk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController? tabController;

  @override
  void initState(){
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: BottomAppBar(
          child: TabBar(
            indicatorWeight: 5,
            labelColor: Colors.black,
            indicatorColor: Colors.pink,
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            tabs: const [
              Tab(
                text: "PROFILE",
                icon: Icon(Icons.dashboard,
                    color:Colors.red,),
              ),
              Tab(text: "HELPDESK",
                icon: Icon(Icons.support_agent,
                  color: Colors.blue,),
              ),
              Tab(text: "DISCOVERY",
                icon: Icon(Icons.place,
                  color: Colors.green,),
              ),
            ],),
        ),
      ),
      body: TabBarView(
          controller: tabController,
          children: const [ProfilePage(),HelpdeskPage(),DiscoveryPage()]),
    );
  }
}
