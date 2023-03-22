import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:deepsky_flutter/provider/send_state_provider.dart';

class CarOperateButton extends ConsumerWidget {
  const CarOperateButton(
      {super.key, required this.text, required this.name, required this.path});

  final String text;
  final String name;
  final String path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sendState = ref.watch(sendStateProvider);

    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), //角の丸み
          ),
        ),
        onPressed: sendState != null
            ? null
            : () async {
                ref.watch(sendStateProvider.notifier).state = text;
                await Future.delayed(const Duration(seconds: 2));
                ref.watch(sendStateProvider.notifier).state = null;
                if (!context.mounted) return;
                text != 'アンロック'
                    ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'メッセージを送信しました',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        duration: const Duration(seconds: 1),
                      ))
                    : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'メッセージの送信に失敗しました',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onError),
                        ),
                        backgroundColor: Theme.of(context).colorScheme.error,
                        duration: const Duration(seconds: 1),
                      ));
              },
        child: SizedBox(
          height: 80,
          width: 80,
          child: sendState == text
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      path,
                      semanticsLabel: 'State Icon',
                      width: 30,
                      colorFilter: ColorFilter.mode(
                        sendState == null
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.outline,
                        BlendMode.srcIn,
                      ),
                    ),
                    AutoSizeText(text, maxLines: 1),
                  ],
                ),
        ),
      ),
    );
  }
}
