import 'package:foodpanda_clone/api_basehelper/api_base_helper.dart';
import 'package:foodpanda_clone/model/cuisines_model.dart';
import 'package:foodpanda_clone/model/deals_model.dart';
import 'package:foodpanda_clone/model/pizza_moldel.dart';
import 'package:foodpanda_clone/model/shops_items_model.dart';
import 'package:get/get.dart';

class DealsController extends GetxController {
  final apibasehelper = ApiBaseHelper();
  final pizza = Pizza().obs;
  final listPizza = <Pizza>[].obs;
  final isLoad = false.obs;
  final isMore = false.obs;

  final deals = <DealsModel>[
    DealsModel(img: "image/deals/c1.png"),
    DealsModel(img: "image/deals/c2.png"),
    DealsModel(img: "image/deals/c3.png"),
    DealsModel(img: "image/deals/c4.png"),
    DealsModel(img: "image/deals/c5.png"),
    DealsModel(img: "image/deals/c6.png"),
    DealsModel(img: "image/deals/c7.png"),
    DealsModel(img: "image/deals/c8.png"),
    DealsModel(img: "image/deals/c9.png"),
    DealsModel(img: "image/deals/c10.png"),
    DealsModel(img: "image/deals/c11.png"),
    DealsModel(img: "image/deals/c12.png"),
    DealsModel(img: "image/deals/c13.png"),
    DealsModel(img: "image/deals/c14.png"),
    DealsModel(img: "image/deals/c15.png"),
  ];
  final cuisines = <CuisinesModel>[
    CuisinesModel(
      imgc: "image/cuisines/cs1.png",
      title: "Asian",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs2.png",
      title: "Fast Food",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs3.png",
      title: "Cambodian",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs16.png",
      title: "Desserts",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs9.png",
      title: "Korean",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs10.png",
      title: "Japanese",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs11.png",
      title: "Indian",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs12.png",
      title: "European",
    ),
  ];
  final cuisines2 = <CuisinesModel>[
    CuisinesModel(
      imgc: "image/cuisines/cs5.png",
      title: "Beverage",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs6.png",
      title: "Southeast Asian",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs7.png",
      title: "Cake & Bakery",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs8.png",
      title: "Pizza",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs13.png",
      title: "Chinese",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs14.png",
      title: "Western",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs15.png",
      title: "Thai",
    ),
    CuisinesModel(
      imgc: "image/cuisines/cs16.png",
      title: "Laos",
    ),
  ];

  Future getListPizza() async {
    //isLoad.value = true;
    apibasehelper
        .onNetworkRequesting(
            urlFull: "https://gunter-food-api.herokuapp.com/pizza",
            methode: METHODE.get,
            isAuthorize: false)
        .then((value) => {
              listPizza.clear(),
              value.map((e) {
                pizza.value = Pizza.fromJson(e);
                listPizza.add(pizza.value);
              }).toList(),
              //isLoad.value = false,
            });
  }

  final items = <ShopsItems>[
    const ShopsItems(
      img: "https://cdn-icons-png.flaticon.com/512/135/135763.png?w=360",
      title: "Groceries",
    ),
    const ShopsItems(
      img:
          "https://iconarchive.com/download/i103468/paomedia/small-n-flat/shop.ico",
      title: "Convenience",
    ),
    const ShopsItems(
      img:
          "https://www.shareicon.net/data/512x512/2016/09/23/833535_water_512x512.png",
      title: "Household",
    ),
    const ShopsItems(
      img: "https://icon-library.com/images/icon-lipstick/icon-lipstick-11.jpg",
      title: "Beauty",
    ),
    const ShopsItems(
      img: "https://cdn-icons-png.flaticon.com/512/683/683974.png",
      title: "Beverages",
    ),
    const ShopsItems(
      img:
          "https://www.shareicon.net/download/2017/04/22/885118_food_512x512.png",
      title: "Bakery",
    ),
    const ShopsItems(
      img: "https://cdn-icons-png.flaticon.com/512/1529/1529570.png",
      title: "Health",
    ),
    const ShopsItems(
      img: "https://medias.pylones.com/img/p/6/4/6/2/6462-large_default.jpg",
      title: "Electronics",
    ),
    const ShopsItems(
      img:
          "https://i.pinimg.com/originals/c3/6e/a4/c36ea4eb6b5af4332c7f1f11eff88015.png",
      title: "Pets",
    ),
  ].obs;
}
