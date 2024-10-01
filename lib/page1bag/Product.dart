

class Product {
  final String image, title, description;
  final int price, size, id;


  Product(
      {required this.image,
        required this.title,
        required this.description,
        required this.price,
        required this.size,
        required this.id,
        });
}

List<Product> products = [
  Product(
      id: 1,
      title: "HARRODS",
      price: 238,
      size: 12,
      description: dummyText,
      image: "https://www.yasmina.com/tachyon/sites/5/2022/02/300515d94d1cb71b6d16c86bf2d1ce30351b3a10.jpg?resize=700%2C792&crop_strategy=smart&quality=60",
  ),
  Product(
      id: 2,
      title: "HARRODS",
      price: 234,
      size: 8,
      description: dummyText,
      image: "https://www.yasmina.com/tachyon/sites/5/2022/02/affe4677f7255ea63aa9032d834382416760a55f.jpg?resize=700%2C792&crop_strategy=smart&quality=60",
      ),
  Product(
      id: 3,
      title: "HARRODS",
      price: 300,
      size: 10,
      description: dummyText,
      image: "https://www.yasmina.com/tachyon/sites/5/2022/02/989705feaee782c36339193f123fa522c8fe367b.jpg?resize=700%2C792&crop_strategy=smart&quality=80",
      ),
  Product(
      id: 4,
      title: "GUCCL",
      price: 234,
      size: 11,
      description: dummyText,
      image: "https://www.3roos.com/wp-content/uploads/2019/08/1-42.jpg",
     ),
  Product(
      id: 5,
      title: "CHARLES",
      price: 600,
      size: 12,
      description: dummyText,
      image: "https://www.charleskeith.co.uk/dw/image/v2/BCWJ_PRD/on/demandware.static/-/Sites-ck-products/default/dw5a44ad18/images/hi-res/2021-L3-CK2-30781483-01-1.jpg?sw=756&sh=1008",
     ),
  Product(
    id: 6,
    title: "ZENCY",
    price: 350,
    size: 12,
    description: dummyText,
    image: "https://ae01.alicdn.com/kf/Had522c6c9643417393869ebdc99273afQ.jpg_640x640q90.jpg",

  ),

];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";