import 'package:flutter/material.dart';

class CrudScreen extends StatefulWidget {
  const CrudScreen({super.key});

  @override
  State<CrudScreen> createState() => _CrudScreenState();
}

class _CrudScreenState extends State<CrudScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  //save button
  void saveButtton() {
    setState(() {});
    nameController.clear();
    ageController.clear();
  }
  //edit function

  //delete function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("CRUD Screen"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: "Name",
                  border: UnderlineInputBorder(),
                ),
                cursorHeight: 20,
              ),
              SizedBox(height: 20),
              TextField(
                controller: ageController,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: "age",
                  border: UnderlineInputBorder(),
                ),
                cursorHeight: 20,
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: saveButtton,
                  child: Text("save",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
              ),
              Divider(
                color: Colors.orangeAccent,
                thickness: 3,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                      title: Text("name"),
                      subtitle: Text("age"),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () => showModalBottomSheet(
                                      enableDrag: true,
                                      showDragHandle: true,
                                      isDismissible: true,
                                      context: context,
                                      builder: (context) => Container(
                                        height: 300,
                                        child: Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: Column(
                                            children: [
                                              TextField(
                                                controller: nameController,
                                                decoration: InputDecoration(
                                                  alignLabelWithHint: true,
                                                  hintText: "name",
                                                  border:
                                                      UnderlineInputBorder(),
                                                ),
                                                cursorHeight: 20,
                                                keyboardType:
                                                    TextInputType.number,
                                              ),
                                              SizedBox(height: 20),
                                              TextField(
                                                controller: ageController,
                                                decoration: InputDecoration(
                                                  alignLabelWithHint: true,
                                                  hintText: "age",
                                                  border:
                                                      UnderlineInputBorder(),
                                                ),
                                                cursorHeight: 20,
                                                keyboardType:
                                                    TextInputType.number,
                                              ),
                                              SizedBox(height: 40),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Confirm",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Colors
                                                                .orangeAccent)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                icon: Icon(Icons.edit)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.delete))
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
