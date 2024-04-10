import 'package:flutter/material.dart';
import 'package:store_app/StoreTask/store_result.dart';

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
        title: Text('Chicken Counter'),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: ListView(
              children: [
                Center(child: Text('Enter Details')),
                SizedBox(
                  height: 5.0,
                ),
                Text('Enter the No of Wings'),
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
                SizedBox(
                  height: 5.0,
                ),
                Text('Enter the No of Legs'),
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
                SizedBox(
                  height: 5.0,
                ),
                Text('Enter the No of Flesh'),
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
                SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      try {
                        int value1 = int.parse(wings.text);
                        int value2 = int.parse(legs.text);
                        int value3 = int.parse(flesh.text);
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
                      } catch (e) {
                        print(e);
                      }
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
