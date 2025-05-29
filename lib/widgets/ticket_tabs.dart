import 'package:booktickets/utilis/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  final String firstText;
  final String secondText;
  const AppTicketTab({super.key, required  this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
  final size = AppLayout.getSize(context);
    return  FittedBox(
            child: Container(
               padding:EdgeInsets.all(3.5),
              child: Row(
                children: [
                  /*
                  Airline ticket container
                   */
                  Container(
                    width:size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular((AppLayout.getHeight(50)))),
                      color: Colors.white,
                    ),
                    child: Center(child: Text(firstText)),
                  ),
                 /*
                 Hotel  
                  */
                   Container(
                    width:size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular((AppLayout.getHeight(50)))),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text(secondText)),
                  ),
                  
                 
                ],
              ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color:const Color(0xFFF4F6FD),
                ),
            ),  
           );
  }
}