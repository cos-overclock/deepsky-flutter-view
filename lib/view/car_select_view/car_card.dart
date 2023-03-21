import 'package:flutter/material.dart';

import 'package:deepsky_flutter/page/car_detail_page/car_detail_page.dart';
import 'package:deepsky_flutter/model/car.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deepsky_flutter/value/path.dart';

class CarCard extends StatelessWidget {
  const CarCard(this.car, {super.key});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CarDetailPage(car)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        car.type == 'ソニックスタート'
                            ? sonicStartIconPath
                            : smartGuardIconPath,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn,
                        ),
                        width: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(car.name),
                      ),
                    ],
                  ),
                  Text(car.connect),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      defaultCarImagePath,
                      semanticsLabel: 'Default Car',
                      width: 150,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                            onPressed: () => {}, child: const Text('接続')),
                        const VerticalDivider(thickness: 5),
                        OutlinedButton(
                            onPressed: () => {}, child: const Text('切断')),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
