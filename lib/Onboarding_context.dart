class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'online payment',
      image: 'assets/sc.png',
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra quam elementum massa, viverra. Ut turpis consectetur.  "
  ),
  UnbordingContent(
      title: 'online shopping',
      image: 'assets/sc1.png',
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra quam elementum massa, viverra. Ut turpis consectetur.  "

  ),
  UnbordingContent(
      title: 'home deliver service',
      image: 'assets/sc2.png',
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra quam elementum massa, viverra. Ut turpis consectetur.  "

  ),
];