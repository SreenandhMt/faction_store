import 'package:flutter/material.dart';

import 'package:faction_store/core/colors.dart';

class OrdersCategory extends StatefulWidget {
  const OrdersCategory({super.key});

  @override
  State<OrdersCategory> createState() => _OrdersCategoryState();
}

class _OrdersCategoryState extends State<OrdersCategory> {
  List<String> category = [
    "All orders",
    "New orders",
    "Order placed",
    "Order processing",
    "Shipped",
    "Out of delivery",
    "Delivered",
    "canceled"
  ];
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
            maxHeight: 60,
            maxWidth: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                category.length,
                (index) => OrderCategoryWidget(text: category[index], index: index),
              ),
            ));
  }
}

class OrderCategoryWidget extends StatefulWidget {
  const OrderCategoryWidget({
    Key? key,
    required this.text,
    required this.index,
  }) : super(key: key);
  final String text;
  final int index;

  @override
  State<OrderCategoryWidget> createState() => _OrderCategoryWidgetState();
}

class _OrderCategoryWidgetState extends State<OrderCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(4),
                  child: Badge(
                    label: const Text("1"),
                    backgroundColor: AppColor.useFullColor,
                    isLabelVisible: widget.index==0,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: widget.index==0?AppColor.appColor.withOpacity(0.5):AppColor.secondColor),
                      child: Text(widget.text),
                    ),
                  ),
                );
  }
}