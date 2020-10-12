class SimpleItem {
  int id;
  String phase, title;

  SimpleItem();

  SimpleItem.map(dynamic obj) {
    this.id = obj['ID'];
    this.phase = obj['PHASE'];
    this.title = obj['TITLE'];
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['ID'] = id;
    map['PHASE'] = phase;
    map['TITLE'] = title;
    return map;
  }

}