import 'package:flutter/material.dart';

import 'package:deepsky_flutter/view/car_select_view/car_List_view.dart';
import 'package:deepsky_flutter/value/string.dart';

import 'package:deepsky_flutter/page/app_setting_page/app_setting_page.dart';
import 'package:deepsky_flutter/page/scan_page/scan_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AppSettingPage()),
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: CarListView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ScanPage()),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
