import 'package:booktickets/utilis/app_layout.dart';
import 'package:booktickets/utilis/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
   final Map<String, dynamic> ticket;
   final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?172:172),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        // color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
              showing the blue part of the card/ticket
              */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:isColor==null? Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ):Styles.headLineStyle3,  
                      ),

                      //  const Spacer(),
                      Expanded(child: Container()),
                      ThickContainer(isColor: true,),
                      //  Text("..."),
                      // const Spacer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child:const AppLayoutBuilderWidget(sections:6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color:isColor==null? Colors.white:Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(isColor: true,),
                      // const Spacer(),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor==null? Styles.headLineStyle3.copyWith(
                          color:Colors.white,
                        ):Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text(
                          ticket['from']['name'],
                          style: isColor== null? Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ):Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying time'],
                        style: isColor== null? Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ):Styles.headLineStyle4,
                      ),
                      SizedBox(
                        child: Text(
                          ticket['to']['name'],
                          style: isColor==null? Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ):Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            showing the orange part of the card/ticket
            */
            Container(
              color: isColor==null ? Styles.orangeColor:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor==null ? Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.all(AppLayout.getHeight(12)),
                      child: LayoutBuilder(
                        builder: (
                          BuildContext context,
                          BoxConstraints constraints,
                        ) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: AppLayout.getHeight(5),
                                height: AppLayout.getHeight(1),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: isColor==null? Colors.white:Colors.grey.shade300),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                     SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor==null ? Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*Bottom part of the orange card/ticket */
            
            
             Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(16),top:AppLayout.getHeight(10),right: AppLayout.getHeight(16),bottom: AppLayout.getHeight(10)),
              decoration: BoxDecoration(
                color: isColor == null ?Styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor ==null?21:0),
                  bottomRight: Radius.circular(isColor==null?21:0),
                ),
              ),
              child: Column(
                   children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                        children: [
                          AppColumnLayout(firstText: ticket['date'], secondText: "Date", alignment: CrossAxisAlignment.start, isColor:isColor ,),

                           AppColumnLayout(firstText: ticket['departure_time'], secondText: "Departure time", alignment: CrossAxisAlignment.center, isColor:isColor ,),

                            AppColumnLayout(firstText: ticket['Number'].toString(), secondText: "Number", alignment: CrossAxisAlignment.end, isColor:isColor ,),
                        ],
                       ) 
                   ],   
              ),
            ),
          ],
        ),
      ),
    );
  }
}
