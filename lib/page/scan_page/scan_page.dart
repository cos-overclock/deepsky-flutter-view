import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:deepsky_flutter/value/string.dart';
import 'package:deepsky_flutter/value/path.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(scanPageTitle)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('登録する製品を選択'),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: SvgPicture.asset(
                      sonicStartIconPath,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.primary,
                        BlendMode.srcIn,
                      ),
                      width: 30,
                    ),
                    title: const Text('ソニックスタート'),
                    subtitle: Text(
                      'AA:BB:CC:DD:FF',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    trailing: const Text('-30'),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      smartGuardIconPath,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.primary,
                        BlendMode.srcIn,
                      ),
                      width: 30,
                    ),
                    title: const Text('スマートガード'),
                    subtitle: Text(
                      '00:11:22:33:44',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    trailing: const Text('-40'),
                    onTap: () => {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
