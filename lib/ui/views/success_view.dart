import 'package:flutter/material.dart';
import 'package:scoped_model_guide/enums/view_states.dart';
import 'package:scoped_model_guide/scoped_models/success_model.dart';
import 'package:scoped_model_guide/ui/views/base_view.dart';
import 'package:scoped_model_guide/ui/widgets/busy_overlay.dart';

class SuccessView extends StatelessWidget {
  final String title;

  const SuccessView({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SuccessModel>(
      onModelReady: (model) => model.fetchDuplicatedText(title),
      builder: (context, child, model) => BusyOverlay(
        show: model.state == ViewState.busy,
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(model.title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
