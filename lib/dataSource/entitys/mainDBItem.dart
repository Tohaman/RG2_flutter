class MainDBItem {
  String phase;
  int id;
  String title = "";
  String icon = "";
  String description = "";
  String url = "";
  String comment = "";
  bool isFavourite = false;
  String favComment = "";
  int subId = 0;

  MainDBItem(
      this.phase,
      this.id,
      this.title,
      this.icon,
      this.description,
      this.url,
      this.comment,
      this.isFavourite,
      this.favComment,
      this.subId
      );
}
