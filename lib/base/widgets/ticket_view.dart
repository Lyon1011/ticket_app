import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
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
                              Text(
                                'NYD',
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Expanded(child: Container()),
                              BigDot(),
                              Expanded(
                                  child: Stack(
                                children: [
                                  SizedBox(
                                    height: 24,
                                    child: AppLayoutBuilderWidget(
                                        randomDivider: 6),
                                  ),
                                  Center(
                                    child: Transform.rotate(
                                      angle: 1.57,
                                      child: Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                              BigDot(),
                              Expanded(child: Container()),
                              Text(
                                'NYD',
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Text(
                                'New-York',
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Expanded(child: Container()),
                              Text(
                                "8H 30M",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Expanded(child: Container()),
                              Text(
                                'London',
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,
                child: Expanded(child: Container(color: AppStyles.ticketOrange, child: AppLayoutBuilderWidget(randomDivider: 10),)),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketOrange,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'NYD',
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Expanded(child: Container()),
                              BigDot(),
                              Expanded(
                                  child: Stack(
                                children: [
                                  SizedBox(
                                    height: 24,
                                    child: AppLayoutBuilderWidget(
                                        randomDivider: 6),
                                  ),
                                  Center(
                                    child: Transform.rotate(
                                      angle: 1.57,
                                      child: Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                              BigDot(),
                              Expanded(child: Container()),
                              Text(
                                'NYD',
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Text(
                                'New-York',
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Expanded(child: Container()),
                              Text(
                                "8H 30M",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Expanded(child: Container()),
                              Text(
                                'London',
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
