import 'package:faction_store/core/fonts.dart';

import '/components/dashboard/orders_overview.dart';
import 'package:flutter/material.dart';

import '../../../components/dashboard/order_category.dart';
import '../../../components/dashboard/orders_list.dart';

class OrderManagementPage extends StatefulWidget {
  const OrderManagementPage({super.key});

  @override
  State<OrderManagementPage> createState() => _OrderManagementPageState();
}

class _OrderManagementPageState extends State<OrderManagementPage> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);
    return ListView(
      children:[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Orders",style: titleTextFont(size: 20)),
        ),
        const OrdersOverview(),
        const OrdersCategory(),
        const OrderListWidget()
      ],
    );
  }
}
