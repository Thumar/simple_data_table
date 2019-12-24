import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Table',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyDataTable(title: 'Flutter DataTable Page'),
    );
  }
}

class MyDataTable extends StatefulWidget {
  MyDataTable({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyDataTableState createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: DataTable(sortColumnIndex: 2, sortAscending: true, columns: [
              DataColumn(label: Text('Item Code')),
              DataColumn(label: Text('Stock Item')),
              DataColumn(label: Text('Opening Quantity'), numeric: true,),
              DataColumn(label: Text('Quantity In'), numeric: true),
              DataColumn(label: Text('Quantity Out'), numeric: true),
              DataColumn(label: Text('Closing Quantity'), numeric: true)
            ], rows: [
              DataRow(selected: true, cells: [
                DataCell(Text('EL-7861')),
                DataCell(Text('Place holder'), placeholder: true,showEditIcon: true),
                DataCell(Text('87.00')),
                DataCell(Text('14.00')),
                DataCell(Text('5.00')),
                DataCell(Text('96.00'))
              ]),
              DataRow(cells: [
                DataCell(Text('EL-7862')),
                DataCell(Text('Meat grinder')),
                DataCell(Text('538.00'), showEditIcon: true),
                DataCell(Text('133.00')),
                DataCell(Text('0.00')),
                DataCell(Text('96.00'))
              ]),
              DataRow(cells: [
                DataCell(Text('EL-7862')),
                DataCell(Text('Microwave oven')),
                DataCell(Text('116.00')),
                DataCell(Text('28.00')),
                DataCell(Text('5.00')),
                DataCell(Text('139.00'))
              ]),
            ])),
      ),
    );
  }
}
