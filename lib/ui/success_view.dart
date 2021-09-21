import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_guide/enums/view_states.dart';
import 'package:scoped_model_guide/scoped_models/home_model.dart';
import 'package:scoped_model_guide/scoped_models/success_model.dart';
import 'package:scoped_model_guide/service_locator.dart';
import 'package:scoped_model_guide/ui/base_view.dart';

class SuccessView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BaseView<SuccessModel>(
      builder: (context, child, model) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(this.runtimeType.toString()),
            ],
          ),
        ),
      ),
    );
  }


}
