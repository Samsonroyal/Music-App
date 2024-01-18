import 'package:flutter/material.dart';

class MusicHomePage extends StatefulWidget {
  int currentIndex;
  final Function(int) onTap;

  const MusicHomePage({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Payments"),
            BottomNavigationBarItem(icon: Icon(Icons.arrow_upward), label: "Send",),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications",),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings" ),
      ],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blueAccent,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: (index){
        setState((){
          activeIndex = index
        });
      },
      currentIndex: activeIndex,
        ),
    body: Container(

    ),
    );
  }
}
