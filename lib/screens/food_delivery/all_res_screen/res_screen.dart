import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:foodpanda_clone/controller/deals_controller.dart';
import 'package:get/get.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  final DealsController dealsController = Get.put(DealsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.people_alt_outlined,
                      color: Colors.pink,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.ios_share_outlined,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
            floating: false,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(top: 60, left: 10),
              centerTitle: false,
              title: Column(
                children: const [
                  Text(
                    "Delivery",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "15 min",
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              background: Image.network(
                "https://assets.epicurious.com/photos/5953ca064919e41593325d97/1:1/w_3744,h_3744,c_limit/bubble_tea_recipe_062817.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ClipPath(
                  clipper: OvalTopBorderClipper(),
                  child: Container(
                    height: 100,
                    color: Colors.pink,
                    child: const Center(
                        child: Text("MultipleRoundedCurveClipper()")),
                  ),
                ),
                Container(
                  color: Colors.amber,
                  height: 1000,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
