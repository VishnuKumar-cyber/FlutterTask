import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoreUI extends StatefulWidget {
  const StoreUI({super.key});

  @override
  State<StoreUI> createState() => _StoreUIState();
}

class _StoreUIState extends State<StoreUI> {
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [
              0.1,
              0.9
            ],
                colors: [
              Colors.white.withOpacity(0.01),
              Colors.blue.withOpacity(.9)
            ])),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 10, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi Tushkar'),
                      Text('Split with friendds'),
                    ],
                  ),
                  Container(
                    child: const Material(
                      child: Icon(Icons.person),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(),
            Container(
              width: 100,
              child: Material(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text('Split With'),
                        Container(
                          height: 50,
                          width: 100,
                          child: Stack(
                            fit: StackFit.expand,
                            //alignment:new Alignment(x, y)
                            children: <Widget>[
                              Positioned(
                                left: 20.0,
                                child: Material(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50),
                                  child: Icon(Icons.person,
                                      size: 36.0,
                                      color: Color.fromRGBO(218, 165, 32, 1.0)),
                                ),
                              ),
                              Positioned(
                                left: 35.0,
                                child: Material(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50),
                                  child: Icon(Icons.person,
                                      size: 36.0,
                                      color: Color.fromRGBO(218, 165, 32, 1.0)),
                                ),
                              ),
                              Positioned(
                                left: 50.0,
                                child: Material(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(50),
                                  child: Icon(Icons.person,
                                      size: 36.0,
                                      color: Color.fromRGBO(218, 165, 32, 1.0)),
                                ),
                              ),
                              Positioned(
                                left: 65.0,
                                child: Material(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                  child: Icon(Icons.add,
                                      size: 36.0,
                                      color: Color.fromRGBO(218, 165, 32, 1.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: Text('Split Now'))
                      ],
                    ),
                    Column(
                      children: [
                        Text('Total bill'),
                        Text('\$877'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nearby Friends'),
                      DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(
                            () {
                              dropdownvalue = newValue!;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  Row(),
                  Column(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
