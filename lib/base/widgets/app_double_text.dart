import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.func});

  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: func,
          // () {
          // Navigator.push(
          //    context,
          //    MaterialPageRoute(
          //        builder: (BuildContext context) => const AllTickets()));
          // Navigator.pushNamed(context, AppRoutes.allTickets);
          // },
          child: Text(
            smallText,
            style: AppStyles.headLineStyle3
                .copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}
