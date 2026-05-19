class Product {
  String id;
  String name;
  String image;
  double price;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });

  static List<Product> listProduct = [
    Product(id: "1", name: "iPhone 15", image: "iphone.jpg", price: 999.0),
    Product(id: "2", name: "Samsung S24", image: "s24.jpg", price: 899.0),
  ];

  static void displayProduct() {
    if (listProduct.isEmpty) {
      print("List is empty.");
      return;
    }
    for (var p in listProduct) {
      print("ID: ${p.id} | Name: ${p.name} | Image: ${p.image} | Price: \$${p.price}");
    }
  }

  static void addProduct(Product p) {
    if (listProduct.any((item) => item.id == p.id)) {
      print("ID already exists.");
    } else {
      listProduct.add(p);
      print("Product added successfully.");
    }
  }

  static void updateProduct(String id, {String? newName, String? newImage, double? newPrice}) {
    try {
      var p = listProduct.firstWhere((p) => p.id == id);
      if (newName != null && newName.isNotEmpty) p.name = newName;
      if (newImage != null && newImage.isNotEmpty) p.image = newImage;
      if (newPrice != null) p.price = newPrice;
      print("Product updated successfully.");
    } catch (e) {
      print("Product not found.");
    }
  }

  static void deleteProduct(String id) {
    int lengthBefore = listProduct.length;
    listProduct.removeWhere((p) => p.id == id);
    if (listProduct.length < lengthBefore) {
      print("Product deleted successfully.");
    } else {
      print("Product not found.");
    }
  }

  static void sortByPriceAsc() {
    listProduct.sort((a, b) => a.price.compareTo(b.price));
    print("Sorted by price ascending.");
  }

  static void sortByPriceDesc() {
    listProduct.sort((a, b) => b.price.compareTo(a.price));
    print("Sorted by price descending.");
  }
}