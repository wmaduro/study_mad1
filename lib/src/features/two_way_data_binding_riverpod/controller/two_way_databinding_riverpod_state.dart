import 'package:freezed_annotation/freezed_annotation.dart';

part 'two_way_databinding_riverpod_state.freezed.dart';

@freezed
class TwoWayDataBindingRiverpodState with _$TwoWayDataBindingRiverpodState {
  const TwoWayDataBindingRiverpodState._();

  const factory TwoWayDataBindingRiverpodState({
    @Default('1') String campo1,
    @Default('2') String campo2,
  }) = _TwoWayDataBindingRiverpodState;
}
