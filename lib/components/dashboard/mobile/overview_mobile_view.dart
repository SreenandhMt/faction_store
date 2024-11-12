import 'package:faction_store/components/dashboard/product_list.dart';
import 'package:flutter/material.dart';

import 'package:faction_store/core/fonts.dart';

import '../../../core/size.dart';
import '../orders_overview.dart';

class DashboardOverviewMobile extends StatefulWidget {
  const DashboardOverviewMobile({super.key});

  @override
  State<DashboardOverviewMobile> createState() => _DashboardOverviewMobileState();
}

class _DashboardOverviewMobileState extends State<DashboardOverviewMobile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const OrdersOverview(),
        height10,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("All Products",style: titleTextFont()),
        ),
        const ProductListWidget(),
        height20,
      ],
    );
  }
}
