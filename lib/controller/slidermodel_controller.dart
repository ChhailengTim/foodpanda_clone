import 'package:foodpanda_clone/model/pandamart_model.dart/slider_model.dart';
import 'package:get/get.dart';

class SliderController extends GetxController {
  final slide = <SliderModel>[
    SliderModel(
      image:
          "https://i0.wp.com/www.kbcambodia.com/wp-content/uploads/2015/10/the-pizza-company-4.jpg?fit=1024%2C384&ssl=1",
    ),
    SliderModel(
      image:
          "https://dap-business.com/wp-content/uploads/2021/08/155-1024x510.png",
    ),
    SliderModel(
      image:
          "https://www.cbcl.com.kh/wp-content/uploads/2020/06/BG-Product.jpg",
    ),
    SliderModel(
      image:
          "https://cdn.sanity.io/images/92ui5egz/production/3802afc076601eb3faa410323c22e88c55e6bc29-1920x1080.jpg?w=1920&h=1080&auto=format",
    ),
    SliderModel(
      image:
          "https://exchangesquare.com.kh/wp-content/uploads/2017/05/cafe-amazon.jpg",
    ),
    SliderModel(
      image:
          "https://i0.wp.com/www.kbcambodia.com/wp-content/uploads/2016/07/Koi-Cafe-2.jpg?fit=960%2C354&ssl=1",
    ),
  ].obs;
}
