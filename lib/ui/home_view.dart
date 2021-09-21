import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_guide/enums/view_states.dart';
import 'package:scoped_model_guide/scoped_models/home_model.dart';
import 'package:scoped_model_guide/service_locator.dart';
import 'package:scoped_model_guide/ui/base_view.dart';
import 'package:scoped_model_guide/ui/error_view.dart';
import 'package:scoped_model_guide/ui/success_view.dart';

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
                _getBodyUi(model.state),
                Text(model.title),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () async {
             var result = await model.saveData();
             if(result){
               Navigator.push(context, MaterialPageRoute(builder: (context){
                 return SuccessView();
               }));
             }
             else{
               Navigator.push(context, MaterialPageRoute(builder: (context){
                 return ErrorView();
               }));
             }
            }
          ),
        ),
      );
  }

  Widget _getBodyUi(ViewState state){
    switch(state){
      case ViewState.busy:
        return CircularProgressIndicator();
      case ViewState.retrieved:
      default:
        return Text('Done');

    }
  }

}
