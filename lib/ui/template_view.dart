import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_guide/enums/view_states.dart';
import 'package:scoped_model_guide/scoped_models/home_model.dart';
import 'package:scoped_model_guide/service_locator.dart';
import 'package:scoped_model_guide/ui/base_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

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