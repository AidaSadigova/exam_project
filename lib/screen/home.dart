import 'package:exam_project/services/user_api.dart';
import 'package:flutter/material.dart';
import 'package:exam_project/model/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Car> users = [];
  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0.0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1280240286/photo/free-girl.jpg?s=612x612&w=0&k=20&c=_JmpkzXy4qW_tH8gPBL_zlDXHfOzF-1jNSYwFIV4b_k='),
              radius: 10.0,
            ),
          ),
          title: const Column(
            children: [
              Row(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                  Icon(
                    Icons.handshake,
                    color: Colors.amber,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Shaila Reymann',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search your car",
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: ClipRRect(
                          borderRadius: BorderRadius.circular(300.0),
                          child: Image.network(
                            "https://w7.pngwing.com/pngs/667/354/png-transparent-black-dream-circle-black-dream-circle.png",
                            width: 15.0,
                            height: 15.0,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        containerMethod(
                            'https://e0.pxfuel.com/wallpapers/145/566/desktop-wallpaper-tesla-logo-on-black-a-tesla-logo-i-madetraced-from-origio-thumbnail.jpg',
                            'Tesla'),
                        containerMethod(
                            'https://1000logos.net/wp-content/uploads/2018/02/BMW-symbol.jpg',
                            'BMW'),
                        containerMethod(
                            'https://img2.cgtrader.com/items/1930157/b9a6640926/large/mercedes-benz-car-logo-3d-model-obj-mtl-fbx-ztl.jpg',
                            'Mercedes'),
                        containerMethod(
                            'https://w0.peakpx.com/wallpaper/1000/517/HD-wallpaper-audi-logo-audi-logo-car-luxary-car.jpg',
                            'Audi'),
                      ]),
                    ),
                  ),
                ),
                Container(
                  height: 800,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.grey,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Row(
                          children: [
                            Text(
                              'Popular Car',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Text('View all',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          gridviewMethod(
                              'https://www.pngmart.com/files/21/Tesla-Car-PNG-Picture.png',
                              'Tesla Model 3',
                              45590,
                              4),
                          gridviewMethod(
                              'https://e7.pngegg.com/pngimages/152/965/png-clipart-bmw-m3-car-bmw-7-series-bmw-m4-bmw-sedan-car.png',
                              'Bmw',
                              65590,
                              4),
                        ],
                      ),
                      Row(
                        children: [
                          gridviewMethod(
                              'https://img.favpng.com/3/20/23/tesla-motors-tesla-model-3-tesla-model-s-tesla-model-x-car-png-favpng-WxsYhZdYCd9zvQusbMBgXDNiG.jpg',
                              'Tesla Model 3',
                              45590,
                              4),
                          gridviewMethod(
                              'https://e7.pngegg.com/pngimages/504/150/png-clipart-2013-tesla-model-s-car-2016-tesla-model-s-tesla-model-x-car-compact-car-sedan.png',
                              'Bmw',
                              65590,
                              4),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}

Padding containerMethod(String url, String userName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: 35.0,
        ),
        Text(
          userName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ],
    ),
  );
}

Padding gridviewMethod(String url, String model, int price, int star) {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: Container(
      width: 150.0,
      height: 210.0,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.heart),
                color: Colors.black,
              ),
            ),
          ),
          Image(image: NetworkImage(url)),
          Text(
            model,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text('\$$price'),
              ),
              SizedBox(
                width: 40.0,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 20.0,
              ),
              Text('$star'),
            ],
          )
        ],
      ),
    ),
  );
}
