import 'package:flutter/material.dart';

import '../model/person_class.dart';

class CrudScreenNew extends StatefulWidget {
  @override
  _CrudScreenNewState createState() => _CrudScreenNewState();
}

class _CrudScreenNewState extends State<CrudScreenNew> {
  final List<Employee> _employees = [];

  void _addEmployee(String name, String designation) {
    setState(() {
      _employees.add(Employee(name: name, designation: designation));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: ListView.builder(
        itemCount: _employees.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_employees[index].name),
            subtitle: Text(_employees[index].designation),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AddEmployeeDialog(addEmployee: _addEmployee);
            },
          );
        },
      ),
    );
  }
}

class AddEmployeeDialog extends StatefulWidget {
  final Function(String, String) addEmployee;

  AddEmployeeDialog({required this.addEmployee});

  @override
  _AddEmployeeDialogState createState() => _AddEmployeeDialogState();
}

class _AddEmployeeDialogState extends State<AddEmployeeDialog> {
  final _nameController = TextEditingController();
  final _designationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Employee'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: _designationController,
            decoration: InputDecoration(labelText: 'Designation'),
          ),
        ],
      ),
      actions: [
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Add'),
          onPressed: () {
            widget.addEmployee(
              _nameController.text,
              _designationController.text,
            );
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
