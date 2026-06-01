import 'dart:io';
import 'Entity/Product.dart';

void main() {
  while (true) {
    print("\n--- PRODUCT MANAGEMENT ---");
    print("1. Display Products");
    print("2. Add Product");
    print("4. Update Product");
    print("5. Delete Product");
    print("6. Sort Price Ascending");
    print("7. Sort Price Descending");
    print("0. Exit");
    stdout.write("Select option: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        Product.displayProduct();
        break;

      case '2':
        stdout.write("Enter ID: ");
        String id = stdin.readLineSync()!;
        stdout.write("Enter Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter Image: ");
        String image = stdin.readLineSync()!;
        stdout.write("Enter Price: ");
        double price = double.parse(stdin.readLineSync()!);

        Product.addProduct(Product(id: id, name: name, image: image, price: price));
        break;

      case '4':
        stdout.write("Enter ID to update: ");
        String id = stdin.readLineSync()!;
        stdout.write("New Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Image URL: ");
        String image = stdin.readLineSync()!;
        stdout.write("Giá mới: ");
        double price = double.parse(stdin.readLineSync()!);

        Product.updateProduct(id, newName: name, newImage: image, newPrice: price);
        break;

      case '5':
        stdout.write("Nhập ID cần xóa: ");
        String id = stdin.readLineSync()!;
        Product.deleteProduct(id);
        break;

      case '6':
        Product.sortByPriceAsc();
        break;

      case '7':
        Product.sortByPriceDesc();
        break;

      case '0':
        print("Thoát chương trình!");
        return;

      default:
        print("Lựa chọn không hợp lệ!");
    }
  }
}