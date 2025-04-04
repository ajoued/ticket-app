import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
        ),
        child: Column(
          children: [
            //Show departure and destination first line with icons
            Row(
              children: [
                Text(
                  "NYC",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                BigDot(),
                Expanded(
                    child: Stack(
                  children: [
                    SizedBox(
                      height: 24,
                      child: Center(
                          child: AppLayoutBuilderWidget(
                        randomdivider: 6,
                      )),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          Icons.local_airport_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )),
                BigDot(),
                Expanded(child: Container()),
                Text(
                  "LDN",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "NYC",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                BigDot(),
                Expanded(
                    child: Stack(
                  children: [
                    SizedBox(
                      height: 24,
                      child: Center(
                          child: AppLayoutBuilderWidget(
                        randomdivider: 6,
                      )),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          Icons.local_airport_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )),
                BigDot(),
                Expanded(child: Container()),
                Text(
                  "LDN",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
