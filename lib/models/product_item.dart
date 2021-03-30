class ProductItem {
  final String image, title;
  final int amount, uid;
  ProductItem({
    this.uid,
    this.image,
    this.title,
    this.amount,
  });
}

List<ProductItem> products = [
  ProductItem(
    uid: 1,
    title: "دسته پلی استیشن",
    amount: 900000,
    image: "assets/ps5.png",
  ),
  ProductItem(
    uid: 2,
    title: "پهباد",
    amount: 2000000,
    image: "assets/drone.png",
  ),
  ProductItem(
    uid: 3,
    title: "هدفون",
    amount: 1500000,
    image: "assets/beats.png",
  ),
  ProductItem(
    uid: 4,
    title: "الکسا",
    amount: 6000000,
    image: "assets/alexa.png",
  ),
  ProductItem(
    uid: 5,
    title: "نینتندو سویچ",
    amount: 8000000,
    image: "assets/switch.png",
  ),
  ProductItem(
    uid: 6,
    title: "ساعت اپل",
    amount: 5500000,
    image: "assets/watch.png",
  ),
  ProductItem(
    uid: 7,
    title: "مکبوک",
    amount: 45000000,
    image: "assets/mac.png",
  ),
  ProductItem(
    uid: 8,
    title: "آیفون",
    amount: 15000000,
    image: "assets/iphone.png",
  ),
];