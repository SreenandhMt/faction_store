import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';

class ProductListWidget extends StatefulWidget {
  const ProductListWidget({super.key});

  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return Theme(
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
                horizontalMargin: 9,
                columns: [
                  DataColumn(label: Text('Poster',style: titleTextFont())),
                  DataColumn(label: Text('Title',style: titleTextFont())),
                  DataColumn(label: Text('Price',style: titleTextFont())),
                  DataColumn(label: Text('Stock',style: titleTextFont())),
                ],
                border: null,
                showBottomBorder: false,
                dividerThickness: 0.0,
                dataRowHeight: 70,
                rows: List.generate(
                  10,
                  (index) => DataRow(onSelectChanged: (value) {
                    context.go("/dashboard/overview/details");
                  },cells: [
                    DataCell(Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5HkIHr1cp_lbi0ysXWLx_bXtRaBQ0aH5ypGLfG1YSBQbskPCcXTcCuQcS0plOAsrL1IQ&usqp=CAU",
                        width: 60,
                        height: 50)),
                    const DataCell(SizedBox(
                        width: 100,
                        child:
                            Text("New Product with 10% offer"))),
                    const DataCell(
                      Text("100"),
                    ),
                    const DataCell(Text("80")),
                  ]),
                ),
              ),
            ),
          );
  }
}