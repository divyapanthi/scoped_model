import 'package:flutter/material.dart';
import 'package:scoped_model_guide/enums/view_states.dart';
import 'package:scoped_model_guide/scoped_models/home_model.dart';
import 'package:scoped_model_guide/ui/views/base_view.dart';
import 'package:scoped_model_guide/ui/views/error_view.dart';
import 'package:scoped_model_guide/ui/views/success_view.dart';
import 'package:scoped_model_guide/ui/widgets/busy_overlay.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        builder: (context, child, model) => BusyOverlay(
          show: model.state == ViewState.busy,
          child: Scaffold(
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
                   return SuccessView(title: "Duplicate this text",);
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
