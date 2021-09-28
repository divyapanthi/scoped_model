import 'package:flutter/material.dart';
import 'package:scoped_model_guide/scoped_models/error_model.dart';
import 'package:scoped_model_guide/ui/views/base_view.dart';

class ErrorView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BaseView<ErrorModel>(
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
