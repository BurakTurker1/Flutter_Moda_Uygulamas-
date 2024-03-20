import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  var tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Moda Uygulamasi',
          style: TextStyle(fontFamily: 'Genel'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.photo_camera,
              size: 25,
            ),
          )
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: tabController,
        tabs: const [
          Tab(
            icon: Icon(Icons.camera),
            text: "fotograf",
          ),
          Tab(
            icon: Icon(Icons.image),
            text: "Galeri",
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
            text: "Sepetim",
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                followScroll(),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              children: [
                Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/model1.jpeg'),
                          ),
                          const Column(
                            children: [
                              Text('username'),
                              Text('34 mins ago'),
                            ],
                          ),
                          Container(
                            width: 200,
                          ),
                          const PopupMenuItem(
                            child: Icon(Icons.diamond_sharp),
                          ),
                        ],
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(25),
                                      ),
                                    ),
                                    margin: EdgeInsets.all(5),
                                    child: Image.asset(
                                      'assets/images/model2.jpeg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('deneme1'),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(Colors
                                                    .deepOrangeAccent
                                                    .shade200)),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('deneme2'),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(Colors
                                                    .deepOrangeAccent
                                                    .shade200)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Image.asset(
                                      'assets/images/model1.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Image.asset(
                                      'assets/images/model1.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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

  Row followScroll() {
    return Row(
      children: [
        scrollStunOlustur(const AssetImage('assets/images/model1.jpeg')),
        scrollStunOlustur(const AssetImage('assets/images/model2.jpeg')),
        scrollStunOlustur(const AssetImage('assets/images/model3.jpeg')),
        scrollStunOlustur(const AssetImage('assets/images/model2.jpeg')),
        scrollStunOlustur(const AssetImage('assets/images/model3.jpeg')),
        scrollStunOlustur(const AssetImage('assets/images/model1.jpeg')),
      ],
    );
  }

  scrollStunOlustur(AssetImage fotograf) {
    return Column(
      children: [
        CircleAvatar(
          minRadius: 30,
          backgroundImage: fotograf,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Follow',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
