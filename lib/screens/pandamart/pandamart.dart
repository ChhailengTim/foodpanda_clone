import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_clone/controller/slidermodel_controller.dart';
import 'package:foodpanda_clone/utils/default_color.dart';
import 'package:get/get.dart';

class PandamartScreen extends StatefulWidget {
  const PandamartScreen({Key? key}) : super(key: key);

  @override
  State<PandamartScreen> createState() => _PandamartScreenState();
}

class _PandamartScreenState extends State<PandamartScreen> {
  @override
  Widget build(BuildContext context) {
    final SliderController sliderController = Get.put(
      SliderController(),
    );
    return Scaffold(
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
          "Pandamart",
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
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.warning_amber_rounded,
                        color: Colors.pink,
                      ),
                      const Text("Shop information"),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View",
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    elevation: 10,
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: sliderController.slide.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Container(
                                width: 250,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black26,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        '${sliderController.slide[index].image}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
