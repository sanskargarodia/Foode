class Rest{
  final String id;
  final String title;
  final String area;
  final String imagePath;
  final String type;

  Rest({this.id,this.title,this.area,this.imagePath,this.type});
}
final rests=[
  Rest(
      id: "2",
      title: "hello",
      area: "The Idly Shop ",
      imagePath: "data/idli.jpg",
      type: "fastfood"
  ),
  Rest(
      id: "1",
      title: "1",
      area: "hello",
      imagePath:"data/burger.jpg",
      type: "fastfood"
  ),
];