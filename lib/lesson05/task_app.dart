import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskApp extends StatefulWidget {
  const TaskApp({super.key});

  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  List<String> cars = [
    'BMW',
    'AUDI',
  ];

  // ??
  Set<String> car = {'asd', 'asdas'};

  TextEditingController nameController = TextEditingController();
  TextEditingController updateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cars.isNotEmpty
          ? ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3)),
                    child: Center(
                      child: ListTile(
                        leading: Text(
                          '${index + 1}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        title: Text(cars[index]),
                        subtitle: const Text('Description'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (contex) {
                                        return AlertDialog(
                                          title: const Text('Update data'),
                                          content: Container(
                                            height: 100,
                                            child: Column(
                                              children: [
                                                TextField(
                                                  controller: updateController,
                                                  decoration:  InputDecoration(
                                                      border: const OutlineInputBorder(), labelText: '${cars[index]}'),
                                                )
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Cancel')),
                                            TextButton(
                                                onPressed: () {
                                                  if (updateController.text.isNotEmpty) {
                                                    setState(() {
                                                      cars[index] = updateController.text;
                                                    });
                                                    Navigator.pop(context);
                                                    updateController.clear();
                                                  } else {
                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                            content: Text('Name can not be empty')));
                                                  }
                                                },
                                                child: const Text('Update')),
                                          ],
                                        );
                                      });
                                }, icon: const Icon(Icons.edit)),
                            IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (contex) {
                                        return AlertDialog(
                                          title: const Text(
                                              'Do you really wanna delete data?'),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Cancel')),
                                            TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    cars.removeAt(index);
                                                  });
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Yes')),
                                          ],
                                        );
                                      });
                                },
                                icon: const Icon(Icons.delete)),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              })
          : const Center(
              child: Text('No Data'),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (contex) {
                return AlertDialog(
                  title: const Text('Add data'),
                  content: Container(
                    height: 100,
                    child: Column(
                      children: [
                        TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Name'),
                        )
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel')),
                    TextButton(
                        onPressed: () {
                          if (nameController.text.isNotEmpty) {
                            setState(() {
                              cars.add(nameController.text);
                            });
                            Navigator.pop(context);
                            nameController.clear();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Name can not be empty')));
                          }
                        },
                        child: const Text('Add')),
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
