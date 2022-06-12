import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_clone/controller/deals_controller.dart';
import 'package:foodpanda_clone/model/shops_items_model.dart';
import 'package:foodpanda_clone/utils/default_color.dart';
import 'package:get/get.dart';

class ShopsScreen extends StatefulWidget {
  const ShopsScreen({Key? key}) : super(key: key);

  @override
  State<ShopsScreen> createState() => _ShopsScreenState();
}

class _ShopsScreenState extends State<ShopsScreen> {
  final DealsController dealsController = Get.put(DealsController());
  @override
  void initState() {
    dealsController.getListPizza();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.pink,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Food Delivery",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.card_travel,
              color: Colors.pink,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(16),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                  bottom: 12.0,
                ),
                child: CupertinoTextField(
                  obscureText: false,
                  placeholder: "Search for restaurants, cuisines, and dishes",
                  prefix: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  decoration: BoxDecoration(
                    color: DefaultColor.backgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.display_settings,
                      color: Colors.pink,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          ShopsItems(
                            img:
                                "https://cdn-icons-png.flaticon.com/512/135/135763.png?w=360",
                            title: "Groceries",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ShopsItems(
                            img:
                                "https://iconarchive.com/download/i103468/paomedia/small-n-flat/shop.ico",
                            title: "Convenience",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ShopsItems(
                            img:
                                "https://www.shareicon.net/data/512x512/2016/09/23/833535_water_512x512.png",
                            title: "Household",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ShopsItems(
                            img:
                                "https://icon-library.com/images/icon-lipstick/icon-lipstick-11.jpg",
                            title: "Beauty",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          ShopsItems(
                            img:
                                "https://cdn-icons-png.flaticon.com/512/683/683974.png",
                            title: "Beverages",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ShopsItems(
                            img:
                                "https://www.shareicon.net/download/2017/04/22/885118_food_512x512.png",
                            title: "Bakery",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ShopsItems(
                            img:
                                "https://cdn-icons-png.flaticon.com/512/1529/1529570.png",
                            title: "Health",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ShopsItems(
                            img:
                                "https://medias.pylones.com/img/p/6/4/6/2/6462-large_default.jpg",
                            title: "Electronics",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 6,
                          ),
                          ShopsItems(
                            img:
                                "https://i.pinimg.com/originals/c3/6e/a4/c36ea4eb6b5af4332c7f1f11eff88015.png",
                            title: "Pets",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dealsController.deals.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Row(
                            children: [
                              Image.asset(
                                '${dealsController.deals[index].img}',
                                height: 200,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Shop by store",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Obx(
                  () => SizedBox(
                    height: 2050,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: dealsController.listPizza.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Image.network(
                                      '${dealsController.listPizza[index].image}',
                                      height: 100,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text(
                                        '${dealsController.listPizza[index].id}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '${dealsController.listPizza[index].name}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      '${dealsController.listPizza[index].price} \$',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
