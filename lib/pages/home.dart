import 'package:flutter/material.dart';
import 'package:internapp/components/network_handeler.dart';
import 'package:internapp/service/google_add.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Let's Find Your First Internship",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF7C67A6),
        centerTitle: true,
        actions: [
          
          IconButton(
            icon: Icon(Icons.info_outline, color: Colors.white),
            tooltip: 'App Info',
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
      body: NetworkHandeler(), 
      bottomNavigationBar: GoogleAdd(),
    );
  }
}