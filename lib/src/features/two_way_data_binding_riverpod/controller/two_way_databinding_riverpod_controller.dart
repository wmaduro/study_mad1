import 'dart:developer';

import 'package:riverpod/riverpod.dart';
import 'package:study_mad1/src/features/two_way_data_binding_riverpod/controller/two_way_databinding_riverpod_state.dart';

final twoWayDataBindingRiverpodProvider = StateNotifierProvider.autoDispose<
    TwoWayDataBindingRiverpodNotifier, TwoWayDataBindingRiverpodState>((ref) {
  return TwoWayDataBindingRiverpodNotifier();
});

class TwoWayDataBindingRiverpodNotifier
    extends StateNotifier<TwoWayDataBindingRiverpodState> {
  TwoWayDataBindingRiverpodNotifier()
      : super(const TwoWayDataBindingRiverpodState());

  void setCampo1(String value) {
    log('---> setCampo1 $value');
    state = state.copyWith(campo1: value);
  }

  void setCampo2(String value) {
    log('---> setCampo2 $value');
    state = state.copyWith(campo2: value);
  }

  @override
  void dispose() {
    log('--->>> dispose');
    super.dispose();
  }
}
