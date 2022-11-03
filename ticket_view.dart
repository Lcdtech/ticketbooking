import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticketbooking/utills/app_layout.dart';
import 'package:ticketbooking/utills/app_styles.dart';
import 'package:ticketbooking/widgets/column_layout.dart';
import 'package:ticketbooking/widgets/layout_builder_widget.dart';
import 'package:ticketbooking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 168 : 166),
      child: Container(
          margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: isColor == null
                        ? const Color(0xFF526799)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21)))),
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      const Spacer(),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: const AppLayoutBuilderWidget(
                            sections: 6,
                          ),
                        ),
                        Center(
                            child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: isColor == null
                                ? Colors.white
                                : const Color(0xFF8ACCF7),
                          ),
                        )),
                      ])),
                      const ThickContainer(
                        isColor: true,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ]),
              ),
              Container(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                child: Row(children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight:
                                    Radius.circular(AppLayout.getHeight(10)),
                                bottomRight:
                                    Radius.circular(AppLayout.getHeight(10))))),
                  ),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(AppLayout.getHeight(12)),
                          child: const AppLayoutBuilderWidget(
                              sections: 15, width: 5))),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ]),
              ),
              Container(
                  decoration: BoxDecoration(
                      color:
                          isColor == null ? Styles.orangeColor : Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                          bottomRight:
                              Radius.circular(isColor == null ? 21 : 0))),
                  padding: EdgeInsets.only(
                      left: AppLayout.getWidth(16),
                      top: AppLayout.getHeight(10),
                      right: AppLayout.getWidth(16),
                      bottom: AppLayout.getHeight(16)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: ticket['date'],
                          secondText: 'DATE',
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: ticket['departure_time'],
                          secondText: 'Departure time',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: ticket["number"].toString(),
                          secondText: 'Number',
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
                      ],
                    )
                  ])),
            ],
          )),
    );
  }
}