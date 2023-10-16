class PlantModel {
  final String name;
  final List<String> images;
  final double price;
  final String description;
  final String id;
  final String pot;
  final String height;
  final String temp;

  PlantModel(
      {required this.name,
      required this.description,
      required this.price,
      required this.images,
      required this.temp,
      required this.height,
      required this.id,
      required this.pot});
}

List<PlantModel> dummyPlants = [
  PlantModel(
    name: "Peace Lily",
    description:
        "Peace Lily is a popular choice for indoor gardens due to its elegant appearance and air-purifying qualities.",
    price: 20.99,
    images: [
      "assets/products/plant1.webp",
      "assets/products/plant5.jpeg",
      "assets/products/plant9.jpeg"
    ],
    temp: "18°C to 25°C",
    height: "30cm to 45cm",
    id: "1",
    pot: "Ceramic Pot",
  ),
  PlantModel(
    name: "Snake Plant",
    description:
        "Snake Plant, also known as Mother-in-law's Tongue, is a hardy and low-maintenance plant, perfect for beginners.",
    price: 15.49,
    images: [
      "assets/products/plant2.jpeg",
      "assets/products/plant1.webp",
      "assets/products/plant6.jpeg"
    ],
    temp: "15°C to 30°C",
    height: "25cm to 35cm",
    id: "2",
    pot: "Clay Pot",
  ),
  PlantModel(
    name: "Fiddle Leaf Fig",
    description:
        "Fiddle Leaf Fig is a popular decorative plant with large, glossy leaves, adding a touch of elegance to any space.",
    price: 34.99,
    images: [
      "assets/products/plant3.jpeg",
      "assets/products/plant12.webp",
      "assets/products/plant7.webp"
    ],
    temp: "20°C to 25°C",
    height: "40cm to 60cm",
    id: "3",
    pot: "Terracotta Pot",
  ),
  PlantModel(
    name: "Spider Plant",
    description:
        "Spider Plant, also known as Chlorophytum comosum, is a resilient and adaptable plant, suitable for various environments.",
    price: 18.79,
    images: [
      "assets/products/plant4.webp",
      "assets/products/plant7.webp",
      "assets/products/plant11.jpeg"
    ],
    temp: "18°C to 28°C",
    height: "20cm to 30cm",
    id: "4",
    pot: "Ceramic Pot",
  ),
  PlantModel(
    name: "Aloe Vera",
    description:
        "Aloe Vera is a succulent plant known for its medicinal properties. It's easy to care for and a great addition to any home.",
    price: 12.99,
    images: [
      "assets/products/plant5.jpeg",
      "assets/products/plant3.jpeg",
      "assets/products/plant12.webp"
    ],
    temp: "15°C to 25°C",
    height: "15cm to 25cm",
    id: "5",
    pot: "Clay Pot",
  ),
  PlantModel(
    name: "Monstera Deliciosa",
    description:
        "Monstera Deliciosa, also known as Swiss Cheese Plant, is characterized by its unique split leaves. It thrives in warm, humid environments.",
    price: 27.49,
    images: [
      "assets/products/plant6.jpeg",
      "assets/products/plant8.jpeg",
      "assets/products/plant11.jpeg"
    ],
    temp: "20°C to 30°C",
    height: "50cm to 70cm",
    id: "6",
    pot: "Ceramic Pot",
  ),
  PlantModel(
    name: "Succulent Mix",
    description:
        "Succulent Mix includes a variety of small succulents, perfect for creating charming arrangements. They require minimal watering and sunlight.",
    price: 14.99,
    images: [
      "assets/products/plant7.webp",
      "assets/products/plant3.jpeg",
      "assets/products/plant6.jpeg"
    ],
    temp: "18°C to 25°C",
    height: "5cm to 15cm",
    id: "7",
    pot: "Terracotta Pot",
  ),
  PlantModel(
    name: "Rubber Plant",
    description:
        "Rubber Plant, or Ficus elastica, is a popular indoor plant with dark green leaves. It's easy to care for and adds a touch of nature to any room.",
    price: 22.99,
    images: [
      "assets/products/plant8.jpeg",
      "assets/products/plant2.jpeg",
      "assets/products/plant4.webp"
    ],
    temp: "18°C to 25°C",
    height: "40cm to 60cm",
    id: "8",
    pot: "Ceramic Pot",
  ),
  PlantModel(
    name: "Pothos",
    description:
        "Pothos, also known as Devil's Ivy, is a low-maintenance trailing plant. Its heart-shaped leaves make it a favorite choice for hanging baskets.",
    price: 16.59,
    images: [
      "assets/products/plant9.jpeg",
      "assets/products/plant1.webp",
      "assets/products/plant10.jpeg"
    ],
    temp: "18°C to 30°C",
    height: "20cm to 30cm",
    id: "9",
    pot: "Clay Pot",
  ),
  PlantModel(
    name: "Areca Palm",
    description:
        "Areca Palm, or Dypsis lutescens, is a graceful palm plant with feathery, arching fronds. It thrives in bright, indirect light and adds a tropical vibe to your space.",
    price: 29.99,
    images: [
      "assets/products/plant10.jpeg",
      "assets/products/plant2.jpeg",
      "assets/products/plant7.webp"
    ],
    temp: "20°C to 30°C",
    height: "60cm to 90cm",
    id: "10",
    pot: "Terracotta Pot",
  ),
];
