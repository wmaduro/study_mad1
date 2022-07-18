import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_mad1/src/features/two_way_data_binding_riverpod/controller/two_way_databinding_riverpod_controller.dart';
import 'package:study_mad1/src/features/two_way_data_binding_riverpod/controller/two_way_databinding_riverpod_state.dart';

class TwoWayDataBindinRiverpodView2 extends StatelessWidget {
  TwoWayDataBindinRiverpodView2({Key? key}) : super(key: key);

  static const routeName = '/TwoWayDataBindinRiverpod2';

  @override
  Widget build(BuildContext context) {
    log('-------------------------------- build');

    final consumerCampo1 = Consumer(
      builder: ((context, ref, child) {
        log('------------------ consumerCampo1');

        String campo1 = ref.watch(twoWayDataBindingRiverpodProvider).campo1;
        final notifier = ref.read(twoWayDataBindingRiverpodProvider.notifier);

        TextEditingController controllerCampo1 =
            TextEditingController(text: campo1);

        controllerCampo1.addListener(() {
          log('------------------ controllerCampo1.addListener');
        });
        return _buildCampo1(
          controllerCampo1,
          notifier,
        );
      }),
    );

    final consumerCampo2 = Consumer(
      builder: ((context, ref, _) {
        log('------------------ consumerCampo2');
        String campo2 = ref.watch(twoWayDataBindingRiverpodProvider).campo2;
        final notifier = ref.read(twoWayDataBindingRiverpodProvider.notifier);

        TextEditingController controllerCampo2 =
            TextEditingController(text: campo2);

        return _buildCampo2(
          controllerCampo2,
          notifier,
        );
      }),
    );

    final consumerTextCampo1 = Consumer(
      builder: ((context, ref, _) {
        log('------------------ consumerTextCampo1');
        return Text(
            'Campo1: ${ref.watch(twoWayDataBindingRiverpodProvider).campo1}');
      }),
    );

    final consumerTextCampo2 = Consumer(
      builder: ((context, ref, _) {
        log('------------------ consumerTextCampo2');
        return Text(
            'Campo2: ${ref.watch(twoWayDataBindingRiverpodProvider).campo2}');
      }),
    );
    // final state = ref.watch(twoWayDataBindingRiverpodProvider);
    // final notifier = ref.read(twoWayDataBindingRiverpodProvider.notifier);

    // final stateCampo1 = ref.watch(twoWayDataBindingRiverpodProvider).campo1;
    // final stateCampo2 = ref.watch(twoWayDataBindingRiverpodProvider).campo2;

    // ref.listen(twoWayDataBindingRiverpodProvider, (prev, next) {
    //   log('--- listenerCampo1 - prev $prev | next $next');
    // });

    return Scaffold(
      appBar: AppBar(
        title: const Text('TwoWDB2'),
      ),
      body: buildBody(
        consumerCampo1: consumerCampo1,
        consumerCampo2: consumerCampo2,
        consumerTextCampo1: consumerTextCampo1,
        consumerTextCampo2: consumerTextCampo2,
      ),
    );
  }

  buildBody({
    required Widget consumerCampo1,
    required Widget consumerCampo2,
    required Widget consumerTextCampo1,
    required Widget consumerTextCampo2,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: consumerCampo1,
        ),
        // ElevatedButton(
        //     onPressed: () {
        //       notifier.setCampo1(controllerCampo1.text);
        //     },
        //     child: const Text('campo1')),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: consumerCampo2,
        ),
        // ElevatedButton(
        //     onPressed: () {
        //       notifier.setCampo2(controllerCampo2.text);
        //     },
        //     child: const Text('campo2')),
        consumerTextCampo1,
        consumerTextCampo2,
      ],
    );
  }

  Widget _buildCampo1(
    TextEditingController controllerCampo1,
    TwoWayDataBindingRiverpodNotifier notifier,
  ) {
    return Focus(
        onFocusChange: (hasFocus) {
          log('--- >>>>> onFocusChange $hasFocus ');
        },
        child: TextField(
          controller: controllerCampo1,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Campo1',
          ),
          onChanged: (value) {
            log('--- onChanged Campo1 $value ');
            // notifier.setCampo1(value);
          },
        ));
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
