import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/views/widgets/universal/switch_list_tile_adaptive.dart';
import '../../controllers/settings.dart';

class TransparentStatusBarSwitch extends ConsumerWidget {
  const TransparentStatusBarSwitch({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    return SwitchListTileAdaptive(
      title: const Text('No status bar scrim'),
      subtitle: const Text('Only affects Android top status bar'),
      value: ref.watch(Settings.transparentStatusBarProvider),
      onChanged: ref.read(Settings.transparentStatusBarProvider.notifier).set,
    );
  }
}
