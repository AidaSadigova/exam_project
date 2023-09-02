import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 30.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 80.0),
            child: Text(
              'Car Details',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/fc/61/76/fc6176d61f5bcf164663386a36910766.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Tesla Model 3',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 120.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              '(4.5)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ReadMoreText(
                        'Tesla Model 3 is an electro compect sedar produced by\nTesla. It is deegred to an automatic.Tesla Model 3 is an electro compect sedar\nproduced by Tesla. It is deegred to an automati',
                        trimLines: 2,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Features',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const FaIcon(
                                        FontAwesomeIcons.chair,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Text(
                                    'Total\nCapacity',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Text(
                                    '6 seats',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.speed,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Text(
                                    'Highest\nSpeed',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Text(
                                    '200 KM/H',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const FaIcon(
                                        FontAwesomeIcons.motorcycle,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Text(
                                    'Engine\nOutput',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Text(
                                    '500 HP',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Text(
                              '\$45,590',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            SizedBox(
                              width: 230.0,
                              height: 50.0,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(181, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.00),
                                  ),
                                ),
                                child: const Text(
                                  'BUY NOW',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
