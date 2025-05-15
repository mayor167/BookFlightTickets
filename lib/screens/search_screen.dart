import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Row(
               children: [
                Icon(Icons.search),
               SizedBox(width: 8),
             Text('Searching Mayor....'),
                        ],
         ),
       ),
    );
  }
}