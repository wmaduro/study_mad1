import 'dart:developer';

import 'package:riverpod/riverpod.dart';
import 'package:study_mad1/src/features/two_way_data_binding_riverpod/controller/two_way_databinding_riverpod_state.dart';

import '../services/data_generator_services.dart';

final twoWayDataBindingRiverpodProvider = StateNotifierProvider.autoDispose
    .family<TwoWayDataBindingRiverpodNotifier, TwoWayDataBindingRiverpodState,
        DataGeneratorService?>((ref, dataGeneratorService) {
  return TwoWayDataBindingRiverpodNotifier(dataGeneratorService);
});

class TwoWayDataBindingRiverpodNotifier
    extends StateNotifier<TwoWayDataBindingRiverpodState> {
  final DataGeneratorService? dataGeneratorService;

  TwoWayDataBindingRiverpodNotifier(this.dataGeneratorService)
      : super(const TwoWayDataBindingRiverpodState()) {
    // dataGeneratorService?.timerFromCompleter().then((value) {
    //   state = state.copyWith(timerFromCompleter: value);
    // });

    // dataGeneratorService?.timerFromCompleter().then((value) {
    //   state = state.copyWith(timerFromCompleter: value);
    // });

    _timerPeriodic();
  }

  void _timerPeriodic() {
    dataGeneratorService?.timerPeriodic(
      1,
      (value) {
        log('---> timerPeriodic $value');
        state = state.copyWith(timerFromPeriodc: value);
      },
    );
  }

  // void setCampo1(String value) {
  //   log('---> setCampo1 $value');
  //   state = state.copyWith(campo1: value);
  // }

  // void setCampo2(String value) {
  //   log('---> setCampo2 $value');
  //   state = state.copyWith(campo2: value);
  // }

  @override
  void dispose() {
    log('--->>> dispose');
    super.dispose();
  }
}
