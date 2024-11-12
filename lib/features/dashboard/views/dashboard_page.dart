import 'package:flutter/material.dart';

import 'package:faction_store/components/dashboard/drawer_widget.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    super.key,
    required this.shell,
  });
  final StatefulNavigationShell shell;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      drawer: DrawerWidget(sell: widget.shell),
      appBar: size.width<=1000?AppBar():null,
      body: widget.shell,
    );
  }
}
