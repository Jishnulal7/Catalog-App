import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  
  String days = 'Jishnu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalouge App'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text('Hi $days'),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
