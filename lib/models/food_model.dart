import 'package:flutter/foundation.dart';

class RestaurantDetail {
  const RestaurantDetail({
    @required this.title,
    @required this.price,
    this.image = '',
    this.desc = '',
  });

  final String title;
  final String price;
  final String image;
  final String desc;

  static List<RestaurantDetail> getBreakfast() {
    return const [
      RestaurantDetail(
        title: 'Idly(2Pcs) (Breakfast)',
        price: 'Rs48',
        desc: 'A healthy breakfast item and an authentic south indian delicacy! Steamed and fluffy rice cake..more',
      ),
      RestaurantDetail(
        title: 'Sambar Idly (2Pcs)',
        price: 'Rs70',
      ),
      RestaurantDetail(
        title: 'Ghee Pongal',
        price: 'Rs85',
        desc: 'Cute, button idlis with authentic. South Indian sambar and coconut chutney gives the per..more',
      ),
      RestaurantDetail(
        title: 'Boori (1Set)',
        price: 'Rs85',
      ),
      RestaurantDetail(
        title: 'Podi Idly(2Pcs)',
        price: 'Rs110',
      ),
      RestaurantDetail(
        title: 'Mini Idly with Sambar',
        image: 'assets/images/food6.jpg',
        price: 'Rs85',
        desc: 'Cute, button idlis with authentic. South Indian sambar and coconut chutney gives the per..more',
      ),
    ];
  }

  static List<RestaurantDetail> getAllTimeFavFoods() {
    return [
      RestaurantDetail(
        title: 'Plain Dosa',
        price: 'Rs30',
        desc: 'A healthy breakfast item and an authentic south indian delicacy!',
      ),
      RestaurantDetail(
        title: 'Rava Dosa',
        price: 'Rs70',
      ),
      RestaurantDetail(
        title: 'Onion Dosa',
        price: 'Rs85',
        desc: 'Cute, button dosas with authentic. South Indian sambar and coconut chutney gives the per..more',
      ),
      RestaurantDetail(
        title: 'Onion Uttapam',
        price: 'Rs85',
      ),
      RestaurantDetail(
        title: 'Tomato Uttapam',
        price: 'Rs110',
      ),
      RestaurantDetail(
        title: 'Onion Dosa & Sambar Vadai',
        price: 'Rs85',
      ),
    ];
  }

  static List<RestaurantDetail> getOtherDishes() {
    return [
      RestaurantDetail(
        title: 'Kuzhi Paniyaram Karam (4Pcs)',
        price: 'Rs70',
      ),
      RestaurantDetail(
        title: 'Kuzhi Paniyaram Sweet (4Pcs)',
        price: 'Rs70',
      ),
      RestaurantDetail(
        title: 'Kuzhi Paniyaram Sweet & Karam (4Pcs)',
        price: 'Rs110',
      ),
      RestaurantDetail(
        title: 'Ghee Kuzhi Paniyaram',
        price: 'Rs85',
      ),
    ];
  }
}