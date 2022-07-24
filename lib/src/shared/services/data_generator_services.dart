import 'dart:async';

class DataGeneratorService {
  Future timerFromCompleter() async {
    final Completer completer = Completer();
    Timer(const Duration(seconds: 1), () {
      String returnValue = DateTime.now().toString();
      completer.complete(returnValue);
    });
    return completer.future;
  }

  Future timerPeriodic(
      int interval,
      Function(
    String,
  )
          callback) async {
    Timer.periodic(
      Duration(seconds: interval),
      (timer) {
        callback('${DateTime.now().second.toString()}');
      },
    );
  }
}
