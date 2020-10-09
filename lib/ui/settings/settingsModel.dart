import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsModel extends Model {

  getdata() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
  }


  updateState() {
    notifyListeners();
  }

}

SettingsModel settingsModel = SettingsModel();