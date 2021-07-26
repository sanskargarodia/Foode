class Train{
  int id;
  final String name;
  var childClass = new Map<Stations, String>();
  Train.items({
    this.id,
    this.name,
    this.childClass

  });
}

class Stations {
  final String id;
  final String name;

  Stations(this.id,this.name);
}
