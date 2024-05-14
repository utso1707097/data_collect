import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MarketScreen extends StatelessWidget {
  MarketScreen({Key? key}) : super(key: key);

  // Dummy data for stores
  final List<Map<String, dynamic>> stores = [
    {
      'name': 'Dhaka Store',
      'code': '1221',
      'address': '123 Main Street, Dhaka',
    },
    {
      'name': 'Chittagong Store',
      'code': '3456',
      'address': '456 Beach Road, Chittagong',
    },
    {
      'name': 'Khulna Store',
      'code': '7890',
      'address': '789 Park Avenue, Khulna',
    },
    // Add more stores as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F8FA),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff2517FF),
                    Color(0xff5298F0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MdiIcons.store,
                    size: 100,
                    color: Color(0xff64FFDA),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Retail: ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "1134",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: stores.length,
              itemBuilder: (context, index) {
                final store = stores[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    title: Text(
                      store['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Code: ${store['code']}'),
                        Text('Address: ${store['address']}'),
                      ],
                    ),
                    onTap: () {
                      // Handle tap on the store tile
                      // You can navigate to a detailed screen or perform any action
                      // Here, I'm just printing the name of the tapped store
                      print('Tapped store: ${store['name']}');
                    },
                    contentPadding: EdgeInsets.all(10),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
