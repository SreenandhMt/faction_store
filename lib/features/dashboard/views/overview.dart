import 'package:faction_store/components/dashboard/mobile/overview_mobile_view.dart';
import 'package:flutter/material.dart';

class DashboardOverview extends StatefulWidget {
  const DashboardOverview({super.key});

  @override
  State<DashboardOverview> createState() => _DashboardOverviewState();
}

class _DashboardOverviewState extends State<DashboardOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DashboardOverviewMobile());
  }
}