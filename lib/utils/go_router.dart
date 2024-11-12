import 'package:faction_store/features/dashboard/views/banner_management.dart';
import 'package:faction_store/features/dashboard/views/category.dart';
import 'package:faction_store/features/dashboard/views/dashboard_page.dart';
import 'package:faction_store/features/dashboard/views/notification_management.dart';
import 'package:faction_store/features/dashboard/views/order_details.dart';
import 'package:faction_store/features/dashboard/views/order_management.dart';
import 'package:faction_store/features/dashboard/views/overview.dart';
import 'package:faction_store/features/dashboard/views/product_creating_page.dart';
import 'package:faction_store/features/dashboard/views/product_details.dart';
import 'package:faction_store/features/dashboard/views/role_management.dart';
import 'package:faction_store/features/dashboard/views/transactions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterConfig {
  static GoRouter router = GoRouter(
    initialLocation: "/dashboard/overview",
    routes: <RouteBase>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const SizedBox();
          }),
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return DashboardPage(shell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                    path: '/dashboard/overview',
                    builder: (BuildContext context, GoRouterState state) {
                      return const DashboardOverview();
                    },
                    routes: [
                      GoRoute(
                        path: '/details',
                        builder: (BuildContext context, GoRouterState state) {
                          return const ProductDetailsPage();
                        },
                      )
                    ]),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/dashboard/category-management',
                  builder: (BuildContext context, GoRouterState state) {
                    return const CategoryManagementPage();
                  },
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                    path: '/dashboard/order-management',
                    builder: (BuildContext context, GoRouterState state) {
                      return const OrderManagementPage();
                    },
                    routes: [
                      GoRoute(
                        path: '/details',
                        builder: (BuildContext context, GoRouterState state) {
                          return const DashboardOrderDetailsPage();
                        },
                      )
                    ]),
              ],
            ),
             StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/dashboard/transaction',
                  builder: (BuildContext context, GoRouterState state) {
                    return const TransactionsPage();
                  },
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/dashboard/add-product',
                  builder: (BuildContext context, GoRouterState state) {
                    return const CreateProductPage();
                  },
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/dashboard/role-management',
                  builder: (BuildContext context, GoRouterState state) {
                    return const RoleManagementPage();
                  },
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/dashboard/banner-management',
                  builder: (BuildContext context, GoRouterState state) {
                    return const BannerManagementPage();
                  },
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/dashboard/notification-management',
                  builder: (BuildContext context, GoRouterState state) {
                    return const NotificationManagementPage();
                  },
                )
              ],
            ),
          ]),
    ],
  );
}
