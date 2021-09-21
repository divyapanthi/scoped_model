import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_guide/enums/view_states.dart';
import 'package:scoped_model_guide/scoped_models/base_model.dart';
import 'package:scoped_model_guide/service_locator.dart';
import 'package:scoped_model_guide/services/storage_services.dart';

class HomeModel extends BaseModel{
  StorageService storageService = locator<StorageService>();

  String title = "HomeModel";

  Future<bool> saveData() async{
    
    setState(ViewState.busy);
    title = "Saving Data";
    await storageService.saveData();
    title = "Data saved";
    setState(ViewState.retrieved);

    return true;
  }


}