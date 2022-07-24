import 'package:flutter/material.dart';
import 'package:study_mad1/src/features/two_way_data_binding_riverpod/view/two_way_databinding_riverpod_view.dart';

class MainView extends StatelessWidget {
  MainView() : super();

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    void gotoTWDB2() => {
          Navigator.restorablePushNamed(
            context,
            TwoWayDataBindinRiverpodView.routeName,
          )
        };

    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: gotoTWDB2,
            child: const Text('TWDB2'),
          ),
        ],
      ),
    );
  }
}
