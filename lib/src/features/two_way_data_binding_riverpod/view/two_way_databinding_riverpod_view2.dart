import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_mad1/src/features/two_way_data_binding_riverpod/controller/two_way_databinding_riverpod_controller.dart';
import '../../../shared/services/data_generator_services.dart';

class TwoWayDataBindinRiverpodView2 extends StatelessWidget {
  final DataGeneratorService dataGeneratorService;
  TwoWayDataBindinRiverpodView2(
    this.dataGeneratorService,
  ) : super();

  static const routeName = '/TwoWayDataBindinRiverpod2';

  @override
  Widget build(BuildContext context) {
    log('-------------------------------- build');

    final _twoWayDataBindingRiverpodProvider =
        twoWayDataBindingRiverpodProvider(dataGeneratorService);

    final consumerEditCampo1 = Consumer(
      builder: ((context, ref, child) {
        log('------------------ consumerCampo1');

        String campo1 = ref.watch(_twoWayDataBindingRiverpodProvider).campo1;
        final notifier = ref.read(_twoWayDataBindingRiverpodProvider.notifier);

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

    final consumerEditCampo2 = Consumer(
      builder: ((context, ref, _) {
        log('------------------ consumerCampo2');
        String campo2 = ref.watch(_twoWayDataBindingRiverpodProvider).campo2;
        final notifier = ref.read(_twoWayDataBindingRiverpodProvider.notifier);

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
            'Campo1: ${ref.watch(_twoWayDataBindingRiverpodProvider).campo1}');
      }),
    );

    final consumerTextCampo2 = Consumer(
      builder: ((context, ref, _) {
        log('------------------ consumerTextCampo2');
        return Text(
            'Campo2: ${ref.watch(_twoWayDataBindingRiverpodProvider).campo2}');
      }),
    );
    // final state = ref.watch(twoWayDataBindingRiverpodProvider);
    // final notifier = ref.read(twoWayDataBindingRiverpodProvider.notifier);

    // final stateCampo1 = ref.watch(twoWayDataBindingRiverpodProvider).campo1;
    // final stateCampo2 = ref.watch(twoWayDataBindingRiverpodProvider).campo2;

    // ref.listen(twoWayDataBindingRiverpodProvider, (prev, next) {
    //   log('--- listenerCampo1 - prev $prev | next $next');
    // });

    final consumerTimerFromCompleter = Consumer(
      builder: ((context, ref, _) {
        log('------------------ timerFromCompleter');
        return Text(
            'timerFromCompleter: ${ref.watch(_twoWayDataBindingRiverpodProvider).timerFromCompleter}');
      }),
    );

    final consumerTimerFromPeriodic = Consumer(
      builder: ((context, ref, _) {
        log('------------------ consumerTimerFromPeriodic');
        return Text(
            'consumerTimerFromPeriodic: ${ref.watch(_twoWayDataBindingRiverpodProvider).timerFromPeriodc}');
      }),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('TwoWDB2'),
      ),
      body: buildBody(
        consumerEditCampo1: consumerEditCampo1,
        consumerEditCampo2: consumerEditCampo2,
        consumerTextCampo1: consumerTextCampo1,
        consumerTextCampo2: consumerTextCampo2,
        consumerTimerFromCompleter: consumerTimerFromCompleter,
        consumerTimerFromPeriodic: consumerTimerFromPeriodic,
      ),
    );
  }

  buildBody({
    required Widget consumerEditCampo1,
    required Widget consumerEditCampo2,
    required Widget consumerTextCampo1,
    required Widget consumerTextCampo2,
    required Widget consumerTimerFromCompleter,
    required Widget consumerTimerFromPeriodic,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: consumerEditCampo1,
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     notifier.setCampo1(controllerCampo1.text);
        //   },
        //   child: const Text('campo1'),
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: consumerEditCampo2,
        ),
        // ElevatedButton(
        //     onPressed: () {
        //       notifier.setCampo2(controllerCampo2.text);
        //     },
        //     child: const Text('campo2')),
        const Divider(thickness: 2),
        consumerTextCampo1,
        consumerTextCampo2,
        const Divider(thickness: 2),
        consumerTimerFromCompleter,
        consumerTimerFromPeriodic,
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
