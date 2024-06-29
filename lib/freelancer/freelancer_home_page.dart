import 'package:flutter/material.dart';
import 'package:flutter_app/freelancer/view_services_page.dart';
import 'package:flutter_app/freelancer/view_contracts_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Fiverr'),
            bottom: const TabBar(tabs: [
              Tab(text: 'Available services'),
              Tab(text: 'Contracts'),
            ]),
          ),
          body: TabBarView(
            children: [
              //TAB 1
              ViewServicesPage(),
              //TAB 2
              ViewContractsPage(
                // contracts: []
                ),
            ],
          )),
    );
  }
}