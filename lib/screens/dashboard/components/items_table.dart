import 'package:admin/models/RecentFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';


import '../../../constants.dart';

class ItemsTable extends StatelessWidget {
  const ItemsTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lazada Items",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: 12,


              columns:<DataColumn> [

                DataColumn(
                  label: Text("order item ID"),
                ),
                DataColumn(
                  label: Text("created at"),
                ),

                DataColumn(
                  label: Text("updated at"),
                ),
                DataColumn(
                  label: Text("reason"),
                ),
                DataColumn(
                  label: Text("cancel initiator"),
                ),

              ],
              rows: List.generate(
                demoRecentFiles.length,
                    (index) => ItemsTableDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow ItemsTableDataRow(RecentFile fileInfo) {
  return DataRow(
    selected: false,
    cells: [
      DataCell(

        Row(
          children: [
            Container(

              child: Text(fileInfo.order!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(fileInfo.size!)),
      DataCell(Text(fileInfo.reason!)),
      DataCell(Text(fileInfo.initiator!),
          showEditIcon: true,onTap: (){}),


    ],

  );
}