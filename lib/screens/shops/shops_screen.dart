import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_clone/controller/deals_controller.dart';
import 'package:foodpanda_clone/utils/default_color.dart';
import 'package:get/get.dart';

class ShopsScreen extends StatelessWidget {
  const ShopsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DealsController dealsController = Get.put(DealsController());
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
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.black26,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.network(
                                "https://cdn-icons-png.flaticon.com/512/135/135763.png?w=360",
                                height: 40,
                              ),
                            ),
                          ),
                          const Text(
                            "Groceries",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.black26,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.network(
                                "https://iconarchive.com/download/i103468/paomedia/small-n-flat/shop.ico",
                                height: 30,
                              ),
                            ),
                          ),
                          const Text(
                            "Convenience",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.black26,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.network(
                                "https://www.shareicon.net/data/512x512/2016/09/23/833535_water_512x512.png",
                                height: 40,
                              ),
                            ),
                          ),
                          const Text(
                            "Household Living",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.pink,
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          const Text(
                            "Dadana Floral Boutique",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.directions_bike,
                                color: Colors.pink,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$ 0.65",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.pink,
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          const Text(
                            "Master Seafood & Meat",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.directions_bike,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Free delivery",
                                style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
