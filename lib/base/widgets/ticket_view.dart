import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        child: Container(
          margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
          child: Column(
            children: [
              // ticket's blue part
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              TextStyleThird(text: ticket['from']['code']),
                              Expanded(child: Container()),
                              const BigDot(),
                              Expanded(
                                  child: Stack(
                                children: [
                                  const SizedBox(
                                    height: 24,
                                    child: AppLayoutBuilderWidget(
                                        randomDivider: 6),
                                  ),
                                  Center(
                                    child: Transform.rotate(
                                      angle: 1.57,
                                      child: const Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                              const BigDot(),
                              Expanded(child: Container()),
                              TextStyleThird(text: ticket['to']['code']),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  child: TextStyleFourth(
                                      text: ticket['from']['name'])),
                              Expanded(child: Container()),
                              TextStyleFourth(text: ticket['flying_time']),
                              Expanded(child: Container()),
                              SizedBox(
                                width: 100,
                                child: TextStyleFourth(
                                  text: ticket['to']['name'],
                                  align: TextAlign.end,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // middle of the ticket
              Container(
                height: 20,
                color: AppStyles.ticketOrange,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigCircle(isRight: false),
                    Expanded(
                        child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                    )),
                    BigCircle(isRight: true)
                  ],
                ),
              ),
              // ticket's orange part
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppStyles.ticketOrange,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: ticket['date'],
                          bottomText: 'Date',
                          alignment: CrossAxisAlignment.start),
                      AppColumnTextLayout(
                          topText: ticket['departure_time'],
                          bottomText: 'Departure Time',
                          alignment: CrossAxisAlignment.center),
                      AppColumnTextLayout(
                          topText: ticket['number'].toString(),
                          bottomText: 'Number',
                          alignment: CrossAxisAlignment.end),
                    ],
                  )),
            ],
          ),
        ));
  }
}
