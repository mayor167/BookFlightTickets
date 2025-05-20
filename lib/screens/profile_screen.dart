import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const  ProfileScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       appBar: AppBar(
        title: const Text(
          "setting",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF393E46),
      ),
      body: Column(
            children: [
      // First Row with red background
      Container(
        color: Colors.red,
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              'Row 1',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),

      // Second Row with green background
      Container(
        color: Colors.green,
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              'Row 2',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),

      // Third Row with blue background
      Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              'Row 3',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    ],
    ) 
      // body: Center(
      //    child: Column(
      //          children: [
      //         Text('Profile details....',style: TextStyle(
      //             decoration: TextDecoration.underline)),
      //          SizedBox(height: 8),
      //         Text('Wallet Balance: #10,000'), 
      //          SizedBox(height: 8),
      //          Text('Name: Oyeyemi Mayokun ADENIJI'),
      //           SizedBox(height: 8),
      //          Text('Gender:Male'),
      //           SizedBox(height: 8),
      //           Text('Department: RAOLAK SCHOOL'),
                
      //                   ],
                        
                        
      //    ),
      //  ),
    );
  }
}