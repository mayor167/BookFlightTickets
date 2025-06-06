import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utilis/app_info_list.dart';
import 'package:booktickets/utilis/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:Column(
              children: [
                const Gap(20),
                Row(  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good morning',style: Styles.headLineStyle3,),
                        const Gap(1),
                        Text('Book Tickets',style: Styles.headLineStyle1,),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                         fit: BoxFit.fitHeight,
                      image: AssetImage(
                              'assets/images/logo.png'
                          )
                          )
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Container(
                  // height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD),
                   ),
                  child: Row(
                    children: [
                         const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                         Text("Search", style: Styles.headLineStyle4,),
                    ],
                  ),
                ),
               const Gap(20),
              AppDoubleTextWidget(bigText: "UpComing Flights", smallText: "View all"),
              ],
            ),
          ),
          const Gap(15),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children:ticketList.map((ticket)=>TicketView(ticket: ticket,isColor: null,)).toList()
            // [
            //    TicketView(),
            //     TicketView(),
            // ],
          ),
         ),
        const Gap(15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotels", style: Styles.headLineStyle2,),
                      InkWell(
                        onTap: (){
                          print('You are tapped');
                        },
                        child: Text("View all", style: Styles.textStyle.copyWith(color:Styles.primaryColor),))
                    ],
                  ),
        ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
            
             children: hotelList.map((hotel)=>HotelScreen(hotel: hotel)).toList()
            //  [
            //     HotelScreen(),
            //      HotelScreen(),
            //       HotelScreen(),
            //      HotelScreen(),
            // ]
 
          )
        )
      
       
        ],
      )
      );
  }
}