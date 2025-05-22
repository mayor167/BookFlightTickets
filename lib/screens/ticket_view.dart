import 'package:booktickets/utilis/app_layout.dart';
import 'package:booktickets/utilis/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        // color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
              showing the blue part of the card/ticket
              */
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),

                      //  const Spacer(),
                      Expanded(child: Container()),
                      ThickContainer(),
                      //  Text("..."),
                      // const Spacer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (
                                  BuildContext context,
                                  BoxConstraints constraints,
                                ) {
                                  print(
                                    "The width is ${constraints.constrainWidth()}",
                                  );
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(),
                      // const Spacer(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Gap(2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text(
                          "New-York",
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "8H 30M",
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "London",
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
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
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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
                              (index) => const SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
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
             Container(
                padding: EdgeInsets.only(left: 16,top:10,right: 16,bottom: 10),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                   children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                        children: [
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("1 May", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                              const Gap(2),
                               Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                            ],
                          ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                              const Gap(2),
                               Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                            ],
                          ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                              const Gap(2),
                               Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                            ],
                          )
                        ],
                       ) 
                   ],   
              ),
              // child: Column(
              //   children: [
              //     Row(
              //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(
              //           "1 May",
              //           style: Styles.headLineStyle3.copyWith(
              //             color: Colors.white,
              //           ),
              //         ),

              //         //  const Spacer(),
              //         Expanded(child: Container()),
              //         Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
              //         Expanded(child: Container()),
              //         Text(
              //           "23",
              //           style: Styles.headLineStyle3.copyWith(
              //             color: Colors.white,
              //           ),
              //         ),
              //       ],
              //     ),
              //     const Gap(2),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         SizedBox(
              //           child: Text(
              //             "Date",
              //             style: Styles.headLineStyle4.copyWith(
              //               color: Colors.white,
              //             ),
              //           ),
              //         ),
              //         Text(
              //           "Departure time",
              //           style: Styles.headLineStyle4.copyWith(
              //             color: Colors.white,
              //           ),
              //         ),
              //         SizedBox(
              //           child: Text(
              //             "Number",
              //             style: Styles.headLineStyle4.copyWith(
              //               color: Colors.white,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
