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
              padding: const EdgeInsets.only(left: 20, right: 30, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Tushkar',
                        style: TextStyle(
                            fontFamily: 'Arial',
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      Text(
                        'Split with friends',
                        style: TextStyle(
                            fontFamily: 'Arial',
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ],
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10),
                    child: const Icon(
                      Icons.person,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 200,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: const Text(
                            'Split With',
                            style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 150,
                          child: Stack(
                            fit: StackFit.expand,
                            //alignment:new Alignment(x, y)
                            children: <Widget>[
                              Positioned(
                                left: 20.0,
                                child: Material(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50),
                                  child: const Icon(Icons.person,
                                      size: 46.0,
                                      color: Color.fromRGBO(218, 165, 32, 1.0)),
                                ),
                              ),
                              Positioned(
                                left: 35.0,
                                child: Material(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50),
                                  child: const Icon(Icons.person,
                                      size: 46.0,
                                      color: Color.fromRGBO(218, 165, 32, 1.0)),
                                ),
                              ),
                              Positioned(
                                left: 50.0,
                                child: Material(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(50),
                                  child: const Icon(Icons.person,
                                      size: 46.0,
                                      color: Color.fromRGBO(218, 165, 32, 1.0)),
                                ),
                              ),
                              Positioned(
                                left: 65.0,
                                child: Material(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                  child: const Icon(Icons.add,
                                      size: 46.0,
                                      color: Color.fromRGBO(218, 165, 32, 1.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          width: 130,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Split Now',
                                style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 30, top: 12),
                          child: const Text(
                            'Total bill',
                            style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 30, top: 12),
                          child: const Text(
                            '\$877',
                            style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 30, top: 12),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/item.jpg',
                            ), //NetworkImage
                            radius: 40,
                          ), //CircleAvat
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: const Text(
                            'Nearby Friends',
                            style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 15),
                          child: DropdownButton(
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
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  child: const Icon(Icons.person, size: 46),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text('name'),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  child: const Icon(Icons.person, size: 46),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text('name'),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  child: const Icon(Icons.person, size: 46),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text('name'),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  child: const Icon(Icons.person, size: 46),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text('name'),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: const Text(
                        'Recent Split',
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: const Material(
                                  child: Icon(Icons.person),
                                ),
                              ),
                              const Column(
                                children: [Text('data'), Text('data')],
                              ),
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
                                        child: const Icon(Icons.person,
                                            size: 36.0,
                                            color: Color.fromRGBO(
                                                218, 165, 32, 1.0)),
                                      ),
                                    ),
                                    Positioned(
                                      left: 35.0,
                                      child: Material(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(50),
                                        child: const Icon(Icons.person,
                                            size: 36.0,
                                            color: Color.fromRGBO(
                                                218, 165, 32, 1.0)),
                                      ),
                                    ),
                                    Positioned(
                                      left: 50.0,
                                      child: Material(
                                        color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(50),
                                        child: const Icon(Icons.person,
                                            size: 36.0,
                                            color: Color.fromRGBO(
                                                218, 165, 32, 1.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
