import 'package:scoped_model_guide/enums/view_states.dart';
import 'package:scoped_model_guide/scoped_models/base_model.dart';

class SuccessModel extends BaseModel{
  String title = "not text yet";

  Future fetchDuplicatedText(String text) async{
    setState(ViewState.busy);
    await Future.delayed(Duration(seconds: 2));
    title = "$text $text";
    setState(ViewState.retrieved);
  }
}