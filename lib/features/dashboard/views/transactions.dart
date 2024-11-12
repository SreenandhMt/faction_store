import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Transactions",style: titleTextFont(size: 20)),
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
            margin: const EdgeInsets.only(left: 8,right: 8,top: 5),
            decoration:BoxDecoration(
              color: AppColor.backgroundSecondColor(context),
              borderRadius: BorderRadius.circular(7)
            ),
              child: DataTable(
                showCheckboxColumn: false,
                horizontalMargin: 10,
                columns: [
                  DataColumn(label: Text('Amount',style: titleTextFont())),
                  DataColumn(label: Text('Product',style: titleTextFont())),
                  DataColumn(label: Text('Customer',style: titleTextFont())),
                  DataColumn(label: Text('Date',style: titleTextFont()))
                ],
                border: null,
                showBottomBorder: false,
                dividerThickness: 0.0,
                dataRowHeight: 70,
                columnSpacing: 10,
                rows: List.generate(
                  10,
                  (index) => DataRow(onSelectChanged: (value) {
                  },cells:const [
                    DataCell(Text("70")),
                    DataCell(Text("T-Shirt")),
                    DataCell(Text("Sreenand104@gmail.com")),
                    DataCell(Text("Nov-22-2:30PM")),
                  ]),
                ),
              ),
            ),
          )
      ],
    );
  }
}