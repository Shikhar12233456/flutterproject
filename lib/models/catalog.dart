class CatalogModel {
 static final items = [
    Item(
        id: 1,
        name: "Product_1",
        descr: "This is one of the best Product",
        price: 15000,
        color: "white",
        imageUrl:"assets/images/myImage.png"),        
  ];
}

class Item {
  final num id;
  final String name;
  final String descr;
  final num price;
  final String color;
  final String imageUrl;

  Item(
      {required this.id,
      required this.name,
      required this.descr,
      required this.price,
      required this.color,
      required this.imageUrl});
}

