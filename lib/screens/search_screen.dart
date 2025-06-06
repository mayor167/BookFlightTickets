import 'package:booktickets/utilis/app_layout.dart';
import 'package:booktickets/utilis/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
       body:ListView(
         padding:EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are \n you looking for?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
            Gap(AppLayout.getHeight(20)),
          /*
          ticket_tab
           */
          AppTicketTab(firstText: "Airline Ticket", secondText: "Hotel"),
           Gap(AppLayout.getHeight(25)),
           AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure",),
            Gap(AppLayout.getHeight(20)),
           AppIconText(icon: Icons.flight_land_rounded, text: "Arrival",),
            Gap(AppLayout.getHeight(23)),
           Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(13), vertical:AppLayout.getHeight(13)),

            decoration: BoxDecoration(
              color:Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(8))
            ),
            child: Center(
              child: Text("find tickets", style: Styles.textStyle.copyWith(color:Colors.white),)),  
          ),
           Gap(AppLayout.getHeight(30)),
          AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10),horizontal: AppLayout.getWidth(10)),
              height: AppLayout.getHeight(400),
              width: size.width*.42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1
                  )
                ]
              ),
                child: Column(
                    children: [
                        Container(
                           height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                                image:const DecorationImage(
                                  image: AssetImage("assets/images/sit.jpg"),
                                   fit:BoxFit.cover,
                                  )
                          ),
                        ),
                        Gap(AppLayout.getHeight(12)),
                        Text("20% discount on the early booking of this flight. Don't miss it.", style: Styles.headLineStyle2,),
                        

                    ],
                ),
              ),
            Column(
               children: [
                Stack(
                  children: [
                      Container(
                    // margin: EdgeInsets.only(left: AppLayout.getWidth(10.4)),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                    width:size.width*0.44,
                    height: AppLayout.getHeight(191),
                    decoration: BoxDecoration(
                      color: Color(0xFF3ABBBB),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\n for Survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        Gap(AppLayout.getHeight(5)),
                        Text("Take the survey about our services and get discount", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 17),),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -45,
                    top:-40,
                    child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      border:Border.all(width:18,color:Color(0xFF189999)),
                      color:Colors.transparent


                    ),
                  ),)
                  ],
                ),
                  Gap(AppLayout.getHeight(15)),
                     Container(
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                    width:size.width*0.44,
                    height: AppLayout.getHeight(191),
                    decoration: BoxDecoration(
                      color: Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.headLineStyle2.copyWith(color:Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5)),
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: "😍",
                              style: TextStyle(fontSize: 30)
                            ),
                             TextSpan(
                              text: "🥰",
                              style: TextStyle(fontSize: 40)
                            ),
                             TextSpan(
                              text: "😘",
                              style: TextStyle(fontSize: 30)
                            )
                          ]
                        ))
                      ],
                    ),
                  )
               ],
            )
            ],
          )
        ],
       )
     
    );
  }
}