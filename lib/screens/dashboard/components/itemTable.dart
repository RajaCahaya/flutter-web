import 'dart:convert';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../constants.dart';
import '../../../models/item.dart';

// ignore: must_be_immutable
class LazadaItems extends StatefulWidget {
  List<Item> list = [];

  LazadaItems({Key? key, required List<Item> list}) : super(key: key);

  @override
  State<LazadaItems> createState() => _LazadaItemsState();
}

class _LazadaItemsState extends State<LazadaItems> {
  ItemData _itemdata = new ItemData([]);

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Blog Posts",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ],
          ),
          // if list is empty, just create an empty container
          // else, create table & populate into the table

          Theme(
            data: Theme.of(context).copyWith(
              cardColor: secondaryColor,
              dividerColor: Color(0xff333333),
            ),
            // child: fromDate.text.isEmpty ? SingleChildScrollView() : SizedBox(
            child: SizedBox(
              height: 350,
              width: double.infinity,
              child: PaginatedDataTable2(
                source: _itemdata,
                columnSpacing: 5,
                horizontalMargin: 5,
                rowsPerPage: 10,
                columns: <DataColumn>[
                  DataColumn(
                    label: Text("User ID"),
                  ),
                  DataColumn(
                    label: Text("Id"),
                  ),
                  DataColumn(
                    label: Text("Title"),
                  ),
                  DataColumn(
                    label: Text("Body"),
                  ),
                  // DataColumn(
                  //   label: Text("Order Item ID"),
                  // ),
                  // DataColumn(
                  //   label: Text("SKU"),
                  // ),
                  // DataColumn(
                  //   label: Text("Country"),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemData extends DataTableSource {
  List<Item> _data;
  ItemData(this._data);

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      // DataCell(Text(_data[index].userId.toString())),
      // DataCell(Text(_data[index].id.toString())),
      DataCell(Text(_data[index].title.toString())),
      DataCell(Text(_data[index].body.toString())),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}

Future<List<Item>> getData() async {
  List<Item> list = [];

  try {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    var response = await http.get(uri);
    print("response:" + "${response.statusCode}");

    final respBody = json.decode(response.body);

    // parse only for data part
    if (respBody['message'] == 'success') {
      final List<dynamic> data = respBody['data'];
      print("data:" + data.toString().substring(0, 20) + "...");

      // parse json array into an array of 'Item'
      list = List<Item>.from(data.map((x) => Item.fromJson(x)));
    }
  } catch (error) {
    print(error);
  }
  return list;
}
