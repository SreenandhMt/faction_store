import 'package:faction_store/core/theme.dart';
import 'package:faction_store/features/dashboard/views/dashboard_page.dart';
import 'package:faction_store/utils/data_load_failed.dart';
import 'package:faction_store/utils/go_router.dart';
import 'package:faction_store/utils/info_message.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp.router(
        title: '',
        darkTheme: AppTheme.darkTheme,
        theme: AppTheme.lightTheme,
        routerConfig: GoRouterConfig.router,
      ),
    );
  }
}