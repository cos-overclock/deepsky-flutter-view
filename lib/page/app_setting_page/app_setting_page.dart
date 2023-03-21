import 'package:flutter/material.dart';

import 'package:deepsky_flutter/value/string.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:deepsky_flutter/provider/theme_mode_provider.dart';

class AppSettingPage extends StatelessWidget {
  const AppSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(appSettingTitle)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(themeModeSettingCategory),
            Consumer(
              builder: (context, ref, child) => Column(
                children: [
                  RadioListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(themeModeSettingLight),
                    value: ThemeMode.light,
                    groupValue: ref.watch(themeModeProvider),
                    onChanged: (value) => ref
                        .watch(themeModeProvider.notifier)
                        .state = value as ThemeMode,
                  ),
                  RadioListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(themeModeSettingDark),
                    value: ThemeMode.dark,
                    groupValue: ref.watch(themeModeProvider),
                    onChanged: (value) => ref
                        .watch(themeModeProvider.notifier)
                        .state = value as ThemeMode,
                  ),
                  RadioListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(themeModeSettingSystem),
                    value: ThemeMode.system,
                    groupValue: ref.watch(themeModeProvider),
                    onChanged: (value) => ref
                        .watch(themeModeProvider.notifier)
                        .state = value as ThemeMode,
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
