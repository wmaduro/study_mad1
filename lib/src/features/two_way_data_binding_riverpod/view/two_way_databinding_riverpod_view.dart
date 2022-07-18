import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_mad1/src/features/two_way_data_binding_riverpod/controller/two_way_databinding_riverpod_controller.dart';
import 'package:study_mad1/src/features/two_way_data_binding_riverpod/controller/two_way_databinding_riverpod_state.dart';

class TwoWayDataBindinRiverpodView extends ConsumerWidget {
  TwoWayDataBindinRiverpodView({Key? key}) : super(key: key);

  static const routeName = '/TwoWayDataBindinRiverpod';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('----------------------- FULL REFRESH');
    final state = ref.watch(twoWayDataBindingRiverpodProvider);
    final notifier = ref.read(twoWayDataBindingRiverpodProvider.notifier);

    final stateCampo1 = ref.watch(twoWayDataBindingRiverpodProvider).campo1;
    final stateCampo2 = ref.watch(twoWayDataBindingRiverpodProvider).campo2;

    ref.listen(twoWayDataBindingRiverpodProvider, (prev, next) {
      log('--- listenerCampo1 - prev $prev | next $next');
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('TwoWayDataBindinRiverpodView'),
      ),
      body: buildBody(
        stateCampo1: stateCampo1,
        stateCampo2: stateCampo2,
        notifier: notifier,
      ),
    );
  }

  buildBody({
    required String stateCampo1,
    required String stateCampo2,
    required TwoWayDataBindingRiverpodNotifier notifier,
  }) {
    TextEditingController controllerCampo1 =
        TextEditingController(text: stateCampo1);
    TextEditingController controllerCampo2 =
        TextEditingController(text: stateCampo2);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: _buildCampo1(
            controllerCampo1,
            notifier,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              notifier.setCampo1(controllerCampo1.text);
            },
            child: const Text('campo1')),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: _buildCampo2(
            controllerCampo2,
            notifier,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              notifier.setCampo2(controllerCampo2.text);
            },
            child: const Text('campo2')),
        Text('Campo1: $stateCampo1'),
        Text('Campo2: $stateCampo2'),
      ],
    );
  }

  TextField _buildCampo1(TextEditingController controllerCampo1,
      TwoWayDataBindingRiverpodNotifier notifier) {
    return TextField(
      controller: controllerCampo1,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Campo1',
      ),
      onChanged: (value) {
        log('--- onChanged Campo1 $value ');
        notifier.setCampo1(value);
      },
    );
  }

  TextField _buildCampo2(TextEditingController controllerCampo2,
      TwoWayDataBindingRiverpodNotifier notifier) {
    return TextField(
      controller: controllerCampo2,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Campo2',
      ),
      onChanged: (value) {
        log('--- onChanged Campo2 $value ');
      },
    );
  }
}
