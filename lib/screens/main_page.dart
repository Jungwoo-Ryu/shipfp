import 'package:flutter/material.dart';
import 'package:shipfp/widgets/QuestionWidget.dart';
import '../models/question.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int xp = 0;
  int _selectedIndex = 0;
  String selectedMood = '🙂'; // Default mood
  Question dailyQuestion = Question(
    text: "What is one thing you are grateful for today?",
  );

  void _incrementXP() {
    setState(() {
      xp += 10; // Increment XP by 10 for each interaction
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _selectMood(String mood) {
    setState(() {
      selectedMood = mood;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ShipFP',
          style: TextStyle(
            fontFamily: 'Cursive', // Use a custom font
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple[200], // Soft purple color
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Handle menu action
          },
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Text(
              selectedMood,
              style: TextStyle(fontSize: 24),
            ),
            onSelected: _selectMood,
            itemBuilder: (BuildContext context) {
              return {'😢', '😍', '😟', '😊'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice, style: TextStyle(fontSize: 24)),
                );
              }).toList();
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: const Color.fromARGB(255, 210, 90, 90)),
            onPressed: () {
              // Handle notifications action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'XP: $xp',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset('assets/babySheep.png'), // Add your image here
            SizedBox(height: 20),
            QuestionWidget(
              question: dailyQuestion,
              onAnswered: _incrementXP,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Main',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Colors.black),
            label: 'Diary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: Colors.black),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}