import 'package:flutter/material.dart';
import 'package:scoped_model_guide/scoped_models/home_model.dart';
import 'package:scoped_model_guide/ui/views/base_view.dart';

class TemplateView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
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
