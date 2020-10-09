import 'package:scoped_model/scoped_model.dart';

class DetailModel extends Model {
  var exampleText = "Some Text";

  var count  = 0;
  String get someTexts => exampleText;

  addCount() {
    count++;
    notifyListeners();
  }

}

DetailModel detailModel = DetailModel();