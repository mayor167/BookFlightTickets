import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const  ProfileScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Column(
               children: [
              Text('Profile details....'),
              Text('Wallet Balance: #10,000'),
               Text('Name: Oyeyemi Mayokun ADENIJI'),
               Text('Gender:Male'),
                Text('Department: RAOLAK SCHOOL'),
                
                        ],
                        
                        
         ),
       ),
    );
  }
}