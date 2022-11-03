import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ticketbooking/screens/ticket_view.dart';
import 'package:ticketbooking/utills/app_info_list.dart';
import 'package:ticketbooking/utills/app_layout.dart';
import 'package:ticketbooking/utills/app_styles.dart';
import 'package:ticketbooking/widgets/column_layout.dart';
import 'package:ticketbooking/widgets/layout_builder_widget.dart';
import 'package:ticketbooking/widgets/tickets_tab.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(children: [
          ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle,
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                  firstTab: "Upcoming",
                  secondTab: "Previous",
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TicketView(
                          ticket: ticketList[0],
                          isColor: true,
                        ),
                        const SizedBox(height: 1),
                        Container(
                          width: size.width * 0.81,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(AppLayout.getHeight(21)),
                                  bottomRight: Radius.circular(
                                      AppLayout.getHeight(21)))),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(15),
                              vertical: AppLayout.getHeight(20)),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                AppColumnLayout(
                                  firstText: "Flutter DB",
                                  secondText: "Passenger",
                                  alignment: CrossAxisAlignment.start,
                                  isColor: false,
                                ),
                                AppColumnLayout(
                                  firstText: "5221 478566",
                                  secondText: "Passport",
                                  alignment: CrossAxisAlignment.end,
                                  isColor: false,
                                ),
                              ],
                            ),
                            Gap(AppLayout.getHeight(20)),
                            const AppLayoutBuilderWidget(
                              sections: 15,
                              isColor: false,
                              width: 5,
                            ),
                            Gap(AppLayout.getHeight(20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                AppColumnLayout(
                                  firstText: "364738 28274478",
                                  secondText: "Number of E-Ticket",
                                  alignment: CrossAxisAlignment.start,
                                  isColor: false,
                                ),
                                AppColumnLayout(
                                  firstText: "B2SG28",
                                  secondText: "Booking code",
                                  alignment: CrossAxisAlignment.end,
                                  isColor: false,
                                ),
                              ],
                            ),
                            Gap(AppLayout.getHeight(20)),
                            const AppLayoutBuilderWidget(
                              sections: 15,
                              isColor: false,
                              width: 5,
                            ),
                            Gap(AppLayout.getHeight(20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/visa.png",
                                          scale: 11,
                                        ),
                                        Text(
                                          " *** 2462",
                                          style: Styles.headLineStyle3,
                                        )
                                      ],
                                    ),
                                    const Gap(5),
                                    Text(
                                      "Payment method",
                                      style: Styles.headLineStyle4,
                                    )
                                  ],
                                ),
                                const AppColumnLayout(
                                  firstText: "\$249.99",
                                  secondText: "Price",
                                  alignment: CrossAxisAlignment.end,
                                  isColor: false,
                                ),
                              ],
                            ),
                            Gap(AppLayout.getHeight(20)),
                            Container(
                              width: size.width * 0.81,
                              height: 2,
                              color: Styles.bgColor,
                            ),
                            Gap(AppLayout.getHeight(20)),
                            SizedBox(
                                width: size.width * 0.81,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        AppLayout.getHeight(15)),
                                    child: BarcodeWidget(
                                        barcode: Barcode.code128(),
                                        data: 'https://github.com/martinovovo',
                                        drawText: false,
                                        color: Styles.textColor,
                                        width: double.infinity,
                                        height: AppLayout.getHeight(70))))
                          ]),
                        ),
                        Gap(AppLayout.getHeight(20)),
                        TicketView(
                          ticket: ticketList[0],
                        ),
                      ]),
                )
              ]),
          Positioned(
              left: AppLayout.getHeight(26),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              )),
          Positioned(
              right: AppLayout.getHeight(31),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ))
        ]));
  }
}
