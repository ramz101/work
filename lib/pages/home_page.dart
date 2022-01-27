import 'package:flutter/material.dart';
import 'package:work/navpages/profile_page.dart';
import 'package:work/navpages/stats.dart';
import 'package:work/widgets/app_large_text.dart';
import 'package:work/widgets/app_text.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    StatsPage(),
    StatsPage(),
    StatsPage(),
    ProfilePage(),
    
  ];

  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:pages[currentIndex],
      bottomNavigationBar: Material(
        elevation: 15,
        child: Container(
          child: BottomNavigationBar(
            unselectedFontSize: 0,
            selectedFontSize: 0,
            onTap: onTap,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: 
            [
              BottomNavigationBarItem(title:Text("Home"),icon: Icon(Icons.apps)),
              BottomNavigationBarItem(title:Text("Bar"),icon: Icon(Icons.bar_chart_outlined)),
              BottomNavigationBarItem(title:Text("Search"),icon: Icon(Icons.search)),
              BottomNavigationBarItem(title:Text("My"),icon: Icon(Icons.person_outlined)),
            ],
          ),
        ),
      ),
      );
  }
}

