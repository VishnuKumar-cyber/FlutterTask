import 'package:flutter/material.dart';

class StoreResult extends StatefulWidget {
  final int wings;
  final int legs;
  final int flesh;
  const StoreResult(
      {super.key,
      required this.legs,
      required this.wings,
      required this.flesh});

  @override
  State<StoreResult> createState() => _StoreResultState();
}

class _StoreResultState extends State<StoreResult> {
  bool isLoading = false;
  int chickenLegsPerChicken = 2;
  int chickenWingsPerChicken = 2;
  int noofwings = 0;
  int nooflegs = 0;
  int leftoverLegs = 0;
  int leftoverWings = 0;
  int leftoverChickens = 0;
  int requiredChickens = 0;
  int temp1 = 0;
  int temp2 = 0;
  void count(int wings, int legs, int flesh) {
    setState(() => isLoading = true);
    if (wings <= 0 || legs <= 0 || flesh <= 0) {
      leftoverLegs = 0;
      leftoverWings = 0;
      leftoverChickens = 0;
      requiredChickens = 0;
    } else {
      if (wings % 2 == 0 || legs % 2 == 0) {
        temp1 = wings ~/ chickenWingsPerChicken;
        temp2 = legs ~/ chickenLegsPerChicken;
        print('st1' + temp1.toString());
        print(temp2);
      } else {
        temp1 = wings ~/ chickenWingsPerChicken;
        temp1 = temp1 + 1;
        temp2 = legs ~/ chickenLegsPerChicken;
        temp2 = temp2 + 1;
        print('st2' + temp1.toString());
        print(temp2);
      }
      if (temp2 > temp1 && temp2 > flesh || temp2 == flesh) {
        leftoverWings = temp2 * chickenWingsPerChicken - wings;
        leftoverLegs = temp2 * chickenLegsPerChicken - legs;
        leftoverChickens = temp2 - flesh;
        requiredChickens = temp2;
      } else if (temp1 > flesh || temp1 == flesh) {
        leftoverWings = temp1 * chickenWingsPerChicken - wings;
        leftoverLegs = temp1 * chickenLegsPerChicken - legs;
        leftoverChickens = temp1 - flesh;
        requiredChickens = temp1;
      } else {
        leftoverLegs = flesh * chickenLegsPerChicken - legs;
        leftoverWings = flesh * chickenWingsPerChicken - wings;
        leftoverChickens = flesh - ((temp1 > temp2) ? temp1 : temp2);
        requiredChickens = flesh;
      }
      setState(() => isLoading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    count(widget.wings, widget.legs, widget.flesh);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chickens '),
      ),
      body: isLoading
          ? const CircularProgressIndicator()
          : GridView.count(
              crossAxisCount: 2,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: <Widget>[
                Container(
                  child: Material(
                    child: Center(
                      child: Column(
                        children: [
                          Text('No of Required \n Chickens'),
                          Text(requiredChickens.toString()),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Material(
                    child: Center(
                      child: Column(
                        children: [
                          Text('Leftover \n Legs'),
                          Text(leftoverLegs.toString()),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Material(
                    child: Center(
                      child: Column(
                        children: [
                          Text('Leftover \n   Wings'),
                          Text(leftoverWings.toString()),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Material(
                    child: Center(
                      child: Column(
                        children: [
                          Text('Leftover \n Chicken'),
                          Text(leftoverChickens.toString()),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
