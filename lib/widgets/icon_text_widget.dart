import 'package:booktickets/utilis/app_layout.dart';
import 'package:booktickets/utilis/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return   Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical:AppLayout.getHeight(10)),

            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(AppLayout.getWidth(5))
            ),
            child:Row(
              children: [
               Icon(icon, color: Color(0xFFBFC2DF),),
                  Gap(AppLayout.getWidth(10)),
                Text(text, style: Styles.textStyle),
              ],
            ) ,
          );
  }
}