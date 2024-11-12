import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';

class RoleManagementPage extends StatefulWidget {
  const RoleManagementPage({super.key});

  @override
  State<RoleManagementPage> createState() => _RoleManagementPageState();
}

class _RoleManagementPageState extends State<RoleManagementPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Role Management",style: titleTextFont(size: 20)),
        ),
        Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              dividerTheme: const DividerThemeData(
                color: Colors.transparent,
                space: 0,
                thickness: 0,
                indent: 0,
                endIndent: 0,
              ),
            ),
            child: Container(
            margin: const EdgeInsets.only(left: 8,right: 5,top: 5),
            decoration:BoxDecoration(
              color: AppColor.backgroundSecondColor(context),
              borderRadius: BorderRadius.circular(7)
            ),
              child: DataTable(
                showCheckboxColumn: false,
                horizontalMargin: 10,
                columns: [
                  DataColumn(label: Text('Name',style: titleTextFont())),
                  DataColumn(label: Text('Email',style: titleTextFont())),
                  DataColumn(label: Text('Number',style: titleTextFont())),
                  DataColumn(label: Text('Role',style: titleTextFont())),
                ],
                border: null,
                showBottomBorder: false,
                dividerThickness: 0.0,
                dataRowHeight: 70,
                columnSpacing: 10,
                rows: List.generate(
                  10,
                  (index) => DataRow(onSelectChanged: (value) {
                  },cells: [
                    const DataCell(Text("Sreenandh Mt")),
                    const DataCell(Text("sreenand104@gmail.com")),
                    const DataCell(Text("7012123028")),
                    const DataCell(Text("Delivery assisant")),
                  ]),
                ),
              ),
            ),
          )
      ],
    );
  }
}