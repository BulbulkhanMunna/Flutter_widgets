import 'package:flutter/material.dart';
import 'package:navigationrail/alertdialogBottomSheet.dart';
import 'package:navigationrail/all_View.dart';
import 'package:navigationrail/checkSwitchRadio.dart';
import 'package:navigationrail/expansionTile.dart';
import 'package:navigationrail/homeScreen.dart';
import 'package:navigationrail/inkwell_gesture.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Approach',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
      home: Expan(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final _pages =[
    Container(
      color: Colors.amber,
     // child: Text('Home'),
    ),
    Container(
      //decoration: BoxDecoration(color: Colors.black),
      color: Colors.blue,
      
    ),
    Container(
      color: Colors.red,
    
    ),
    Container(
      color: Colors.green,
     
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning'),
      ),
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (int index){
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            elevation: 5,
            leading: Image.asset('assets/im3.png',width: 45,),
            destinations: [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.add),
              label: Text('My Ads'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.search),
              label: Text('Search'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.favorite),
              label: Text('Favourite'),
            ),
          ], selectedIndex: _selectedIndex,
          ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
