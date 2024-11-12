import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/size.dart';

class OrdersOverview extends StatefulWidget {
  const OrdersOverview({super.key});

  @override
  State<OrdersOverview> createState() => _OrdersOverviewState();
}

class _OrdersOverviewState extends State<OrdersOverview> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: OverviewCard(text: "All Orders", amount: "10", progress: 1),
            ),
            Expanded(
              child: OverviewCard(text: "Packaging", amount: "3", progress: 0.3)),
            
          ],
        ),
        Row(
          children: [
            Expanded(
              child:OverviewCard(text: "Delivered", amount: "5", progress: 0.5),
            ),
            Expanded(
              child: OverviewCard(text: "Completed", amount: "7", progress: 0.7),
            ),
            
          ],
        )
      ],
    );
  }
}

class OverviewCard extends StatefulWidget {
  const OverviewCard({
    super.key,
    required this.text,
    required this.amount,
    required this.progress,
  });
  final String text;
  final String amount;
  final double progress;

  @override
  State<OverviewCard> createState() => _OverviewCardState();
}

class _OverviewCardState extends State<OverviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: AppColor.backgroundSecondColor(context),borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.text),
                    height5,
                    LinearProgressIndicator(color: AppColor.appColor,value: widget.progress,borderRadius: BorderRadius.circular(2),),
                    height10,
                    Container(padding: const EdgeInsets.all(10),decoration: BoxDecoration(color: AppColor.appColor.withOpacity(0.3),borderRadius: BorderRadius.circular(5)),child: Text(widget.amount))
                  ],
                ),
              );
  }
}