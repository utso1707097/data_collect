import 'package:data_fetch/widgets/custom_search_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../utils/qr_code_scanner.dart';

class MarketScreen extends StatefulWidget {
  MarketScreen({Key? key}) : super(key: key);

  @override
  _MarketScreenState createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
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

  List<Map<String, dynamic>> filteredStores = [];
  TextEditingController searchController = TextEditingController();
  TextEditingController qrController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredStores = stores;
    searchController.addListener(() {
      filterStores();
    });
  }

  void filterStores() {
    setState(() {
      String query = searchController.text.toLowerCase();
      filteredStores = stores.where((store) {
        return store['name'].toLowerCase().contains(query);
      }).toList();
    });
  }

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
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MdiIcons.store,
                    size: 100,
                    color: Colors.white,
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
          SizedBox(height: 10),
          CustomSearchField(
            controller: searchController,
            hintText: "Search Retail",
            icon: Icons.search,
            onPressed: () {
              // Perform search action
            },
          ),
          SizedBox(height: 10),
          CustomSearchField(
            controller: qrController,
            hintText: "Scan QR code",
            icon: Icons.qr_code_sharp,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const QRViewExample(),
              ));
            },
          ),
          Flexible(
            child: ListView.builder(
              itemCount: filteredStores.length,
              itemBuilder: (context, index) {
                final store = filteredStores[index];
                return Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
