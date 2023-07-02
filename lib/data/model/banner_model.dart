import 'package:ecommerce/data/model/banner.dart';

List<banner> banners() {
  banner one = banner();
  one.image = '1.webp';
  one.image1 = '3.1.webp';
  one.image2 = '3.2.webp';
  one.image3 = '3.3.webp';
  one.name = 'Nike Lunar';
  one.price = '150';
  banner two = banner();
  two.image = '2.webp';
  two.image1 = '3.1.webp';
  two.image2 = '3.2.webp';
  two.image3 = '3.3.webp';
  two.name = 'Air Jordan';
  two.price = '170';
  banner three = banner();
  three.image = '3.webp';
  three.image1 = '2.1.webp';
  three.image2 = '2.2.webp';
  three.image3 = '2.3.webp';
  three.name = 'Air Jordan';
  three.price = '110';
  banner four = banner();
  four.image = '4.webp';
  four.image1 = '1.2.webp';
  four.image2 = '1.3.webp';
  four.image3 = '1.4.webp';
  four.name = 'Air Jordan';
  four.price = '250';
  return [one, two, three, four];
}
