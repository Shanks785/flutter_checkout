class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12",
      desc:
          "Apple iPhone 12 smartphone. Announced Oct 2020. Features 6.1″ display, Apple A14 Bionic chipset, 2815 mAh battery, 256 GB storage, 4 GB RAM, Ceramic Shield.",
      price: 999,
      color: "#33505a",
      image:
          "https://cdn.dxomark.com/wp-content/uploads/medias/post-61183/iphone-12-pro-blue-hero.jpg",
    ),
    Item(
      id: 2,
      name: "Macbook Pro",
      desc:
          "Apple MacBook Pro 13-inch with Apple M1 chip (8GB RAM, 256GB SSD Storage) - Space Grey",
      price: 1299,
      color: "#799496",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/71pC69I3lzL._SL1500_.jpg",
    ),
    Item(
      id: 3,
      name: "Macbook Air",
      desc:
          "Apple MacBook Air (13-inch, 8GB RAM, 256GB SSD Storage) - Space Grey",
      price: 1099,
      color: "#33505a",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/71an9eiBxpL._SL1500_.jpg",
    ),
    Item(
      id: 4,
      name: "iPad Pro",
      desc:
          "Apple iPad Pro (12.9-inch, Wi-Fi, 128GB) - Space Grey (4th Generation)",
      price: 799,
      color: "#799496",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/81FH2j7EnJL._SL1500_.jpg",
    ),
    Item(
      id: 5,
      name: "Apple Watch",
      desc:
          "Apple Watch Series 6 (GPS, 44mm) - Space Grey Aluminium Case with Black Sport Band",
      price: 399,
      color: "#33505a",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/71Swqqe7XAL._SL1500_.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
