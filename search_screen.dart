import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utills/app_layout.dart';
import 'package:ticketbooking/widgets/double_text_widget.dart';
import 'package:ticketbooking/widgets/icon_text_widget.dart';
import 'package:ticketbooking/widgets/tickets_tab.dart';

import '../utills/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              'What are\nyou looking for?',
              style: Styles.headLineStyle
                  .copyWith(fontSize: AppLayout.getHeight(35)),
            ),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(
              firstTab: "Airline Tickets",
              secondTab: 'Hotels',
            ),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(
              icon: Icons.flight_takeoff_rounded,
              text: 'Departure',
            ),
            Gap(AppLayout.getHeight(20)),
            const AppIconText(
              icon: Icons.flight_land_rounded,
              text: 'Arrival',
            ),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getWidth(18),
                  horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  color: const Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
              child: Center(
                  child: Text(
                "find tickets",
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              )),
            ),
            Gap(AppLayout.getHeight(40)),
            const AppDoubleTextWidget(
                bigText: 'Upcoming Flights', smallText: 'View all'),
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(375),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/sit.jpg'))),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Text(
                        "20% discount on the early booking of this flight. Don't miss ",
                        style: Styles.headLineStyle2,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(180),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(18))),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15),
                              horizontal: AppLayout.getWidth(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discount\nfor survey',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                'Take the survey about our services and get discount',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            right: -45,
                            top: -40,
                            child: Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(30)),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 18,
                                      color: const Color(0xFF189999)),
                                  color: Colors.transparent),
                            )),
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(180),
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getHeight(15)),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xFFEC6545),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Take love',
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 28)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 40)),
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 28)),
                          ]))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}