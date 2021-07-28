class Restraunt{
  final String id;
  final String name;
  final String imagePath;
  final double ratings;

  Restraunt({this.id,this.name,this.imagePath,this.ratings});
}
final restraunts=[
  Restraunt(
    id: "1",
    name: "The Idly Shop",
    imagePath: "assets/idli.jpg",
    ratings: 4.1
  ),
  Restraunt(
      id: "2",
      name: "Pav bhaji",
      imagePath:"assets/pav bhaji.jpg",
      ratings: 4.1
  ),
];
