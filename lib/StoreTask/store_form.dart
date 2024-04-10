import 'package:flutter/material.dart';
import 'package:store_app/StoreTask/store_result.dart';
import 'package:store_app/UItask/store_ui.dart';

class storeForm extends StatefulWidget {
  const storeForm({super.key});

  @override
  State<storeForm> createState() => _storeFormState();
}

class _storeFormState extends State<storeForm> {
  late TextEditingController legs;
  late TextEditingController wings;
  late TextEditingController flesh;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    legs = TextEditingController();
    wings = TextEditingController();
    flesh = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Ensure Scaffold is present
      appBar: AppBar(
        title: const Text('Chicken Counter'),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: ListView(
              children: [
                const Center(
                  child: Text(
                    'Enter Details',
                    style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  'Enter the No of Wings',
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: wings,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a number';
                    }
                    try {
                      int.parse(value);
                      return null; // Valid integer
                    } catch (e) {
                      return 'Please enter a valid number';
                    }
                  },
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  'Enter the No of Legs',
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: legs,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a number';
                    }
                    try {
                      int.parse(value);
                      return null; // Valid integer
                    } catch (e) {
                      return 'Please enter a valid number';
                    }
                  },
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  'Enter the No of Flesh',
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: flesh,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a number';
                    }
                    try {
                      int.parse(value);
                      return null; // Valid integer
                    } catch (e) {
                      return 'Please enter a valid number';
                    }
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 60,
                  width: 50,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        try {
                          int value1 = int.parse(wings.text);
                          int value2 = int.parse(legs.text);
                          int value3 = int.parse(flesh.text);
                          if (value1 <= 0 && value2 <= 0 && value3 <= 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('No Chickens required')));
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StoreResult(
                                  wings: value1,
                                  legs: value2,
                                  flesh: value3,
                                ),
                              ),
                            );
                          }
                        } catch (e) {
                          print(e);
                        }
                      }
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 60,
                  width: 50,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StoreUI(),
                        ),
                      );
                    },
                    child: const Text(
                      'Store UI',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
