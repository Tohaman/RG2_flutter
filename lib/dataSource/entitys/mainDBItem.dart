class MainDBItem {
  String phase;
  int id;
  String title;
  String icon;
  String description;
  String url;
  String comment;
  bool isFavourite;
  String favComment;
  int subId;

  MainDBItem({
    this.phase,
    this.id,
    this.title = "",
    this.icon = "",
    this.description = "",
    this.url = "",
    this.comment = "",
    this.isFavourite = false,
    this.favComment = "",
    this.subId = 0
  });

  @override
  String toString() {
    return "Phase = $phase, ID = $id";
  }
}
