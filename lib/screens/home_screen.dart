import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

import '../base/res/media.dart';
import '../base/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Good morning',
                                  style: AppStyles.headLineStyle3),
                              const SizedBox(
                                height: 5,
                              ),
                              Text('Book Tickets',
                                  style: AppStyles.headLineStyle1)
                            ],
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage(AppMedia.logo))),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Search',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppDoubleText(
                    bigText: "Upcoming Flights",
                    smallText: "View all",
                    func: () =>
                        Navigator.pushNamed(context, AppRoutes.allTickets),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .map((singleTicket) => TicketView(
                                ticket: singleTicket,
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppDoubleText(
                      bigText: 'Hotels',
                      smallText: 'View all',
                      func: () =>
                          Navigator.pushNamed(context, AppRoutes.hotelDetail))
                ],
              )),
        ]));
  }
}
