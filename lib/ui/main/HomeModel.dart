import 'package:scoped_model/scoped_model.dart';

class HomeModel extends Model {
  var exampleText = "Some Text";

  var count  = 0;
  String get counts => exampleText + " " + count.toString();

  addCount() {
    count++;
    notifyListeners();
  }

}

HomeModel homeModel = HomeModel();