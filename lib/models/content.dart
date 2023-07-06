class Content {
  final String contentID,
      title,
      category,
      cost,
      periodTo,
      periodFrom,
      location,
      address,
      likedCount;

  final String? thumbnail,
      time,
      url,
      contactPoint;

  Content(
      {required this.contentID,
      required this.title,
      required this.category,
      required this.cost,
      required this.periodTo,
      required this.periodFrom,
      required this.location,
      required this.address,
      required this.likedCount,
      this.thumbnail,
      this.time,
      this.url,
      this.contactPoint});
}
