import 'package:flutter/material.dart';

import 'package:deepsky_flutter/view/car_select_view/car_List_view.dart';
import 'package:deepsky_flutter/value/string.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: CarListView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
