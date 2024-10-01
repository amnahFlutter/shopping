
class Productjw {
  final String image, title, description;
  final int price, size, id;


  Productjw(
      {required this.image,
        required this.title,
        required this.description,
        required this.price,
        required this.size,
        required this.id,
      });
}

List<Productjw> productjw = [
  Productjw(
    id: 1,
    title: "HARRODS",
    price: 238,
    size: 12,
    description: dummyText,
    image: "https://iraq.zendiamond.com/t2895-077-cttwins-diamond-ring-ar-zen-diamond-10875-28-B.jpg",
  ),
  Productjw(
    id: 2,
    title: "HARRODS",
    price: 234,
    size: 8,
    description: dummyText,
    image: "https://iraq.zendiamond.com/t2624-030-cttwins-solitaire-diamond-ring-ar-zen-diamond-8594-26-B.jpg",
  ),
  Productjw(
    id: 3,
    title: "HARRODS",
    price: 300,
    size: 10,
    description: dummyText,
    image: "https://s.alicdn.com/@sc04/kf/H81e5233ab8184e25b45f967934037db5k.jpg_300x300.jpg",
  ),
  Productjw(
    id: 4,
    title: "GUCCL",
    price: 234,
    size: 11,
    description: dummyText,
    image: "https://m.media-amazon.com/images/I/41Wb4ckMhOL._AC_SY1000_.jpg",
  ),
  Productjw(
    id: 5,
    title: "CHARLES",
    price: 600,
    size: 12,
    description: dummyText,
    image: "https://jamajewels.com/cdn/shop/files/ClassicRound2.17CTLabDiamondRing.jpg?v=1722064259",
  ),
  Productjw(
    id: 6,
    title: "ZENCY",
    price: 350,
    size: 12,
    description: dummyText,
    image: "https://www.diamondsdubai.ae/wp-content/uploads/2018/01/B17842-1.jp",

  ),

];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";