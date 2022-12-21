import 'package:admin/constants.dart';
import 'package:admin/models/getDate.dart';
import 'package:custom_text/custom_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text('Data Table View'),
      ),
      body:
            // when we have the json loaded... let's put the data into a data table widget
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // Data table widget in not scrollable so we have to wrap it in a scroll view when we have a large data set..
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: TextField(
                            // controller: Email,
                            decoration: InputDecoration(
                              hintText: 'Starting Date',
                              labelText: 'Ending Date',
                              suffixIcon: Icon(
                                Icons.mail_outline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    DataTable(
                      columns: [
                        DataColumn(
                            label: Text('Verified'),
                            tooltip: 'represents if user is verified.'),
                        DataColumn(
                            label: Text('First Name'),
                            tooltip: 'represents first name of the user'),
                        DataColumn(
                            label: Text('Last Name'),
                            tooltip: 'represents last name of the user'),
                        DataColumn(
                            label: Text('Email'),
                            tooltip: 'represents email address of the user'),
                        DataColumn(
                            label: Text('Phone'),
                            tooltip: 'represents phone number of the user'),
                      ],
                      rows:  const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Sarah')),
                            DataCell(Text('19')),
                            DataCell(Text('Student')),
                            DataCell(Text('Student')),
                            DataCell(Text('Student')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Janine')),
                            DataCell(Text('43')),
                            DataCell(Text('Professor')),
                            DataCell(Text('Student')),
                            DataCell(Text('Student')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('William')),
                            DataCell(Text('27')),
                            DataCell(Text('Associate Professor')),
                            DataCell(Text('Student')),
                            DataCell(Text('Student')),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

        // ),
      // ),
    );
  }
}


