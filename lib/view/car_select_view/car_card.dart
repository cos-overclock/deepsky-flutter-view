import 'package:flutter/material.dart';

import 'package:deepsky_flutter/page/car_detail_page/car_detail_page.dart';
import 'package:deepsky_flutter/model/car.dart';

class CarCard extends StatelessWidget {
  const CarCard(this.car, {super.key});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: car.connect != 'disable'
            ? () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarDetailPage(car)),
                )
            : null,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(car.name),
                  Text(car.connect != 'disable' ? car.connect : ''),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.directions_car, size: 100),
                  Row(
                    children: [
                      OutlinedButton(
                          onPressed: car.connect != 'disable' ? () => {} : null,
                          child: const Text('接続')),
                      const VerticalDivider(thickness: 5),
                      OutlinedButton(
                          onPressed: car.connect != 'disable' ? () => {} : null,
                          child: const Text('切断')),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
