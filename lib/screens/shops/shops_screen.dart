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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
