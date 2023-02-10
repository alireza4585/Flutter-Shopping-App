import 'package:ecommerce/data/banner.dart';

List<banner> banners() {
  banner one = banner();
  one.image = '1.webp';
  one.name = 'Nike Lunar';
  one.price = '120';
  banner two = banner();
  two.image = '3.webp';
  two.name = 'Air Jordan';
  two.price = '250';
  banner three = banner();
  three.image = '2.webp';
  three.name = 'Air Jordan';
  three.price = '270';
  banner four = banner();
  four.image = '4.webp';
  four.name = 'Air Jordan';
  four.price = '850';
  return [one, two, three, four];
}
