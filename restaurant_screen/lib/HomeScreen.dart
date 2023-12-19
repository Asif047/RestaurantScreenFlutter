import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

var coverImage =
    "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
var coverImage2 =
    "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

var foodItemImg =
    "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=1899&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
var foodItemImg2 =
    "https://images.unsplash.com/photo-1600555379765-f82335a7b1b0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        height: 70,
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                Text(
                  "Home",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                Text(
                  "Search",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                Icon(
                  Icons.checklist,
                  color: Colors.grey,
                ),
                Text(
                  "Wishlist",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
                Text(
                  "Cart",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 80,
        child: ClipPolygon(
          sides: 6,
          borderRadius: 6,
          child: Container(
            color: Colors.orangeAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu_book,
                  size: 24,
                ),
                Text(
                  "Menu",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.grid_on),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "LOCATION",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        "West bay, Qatar",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    getCoverImages(MediaQuery.of(context).size.width / 1.2,
                        coverImage, "25% OFF", "ON FIRST 3 ORDERS"),
                    SizedBox(
                      width: 10,
                    ),
                    getCoverImages(MediaQuery.of(context).size.width / 1.2,
                        coverImage2, "25% OFF", "ON FIRST 3 ORDERS"),
                    SizedBox(
                      width: 10,
                    ),
                    getCoverImages(MediaQuery.of(context).size.width / 1.2,
                        coverImage, "25% OFF", "ON FIRST 3 ORDERS"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sports_basketball,
                            color: Colors.green,
                            size: 30,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Sports Store",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sports_volleyball_rounded,
                            color: Colors.pink,
                            size: 30,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Book a table",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.houseboat_sharp,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Caterings",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Popular Dishes",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
          
              
              ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Container(
                       height: 80,
                       width: 80,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         image: DecorationImage(
                           image:  NetworkImage(foodItemImg),
                           fit: BoxFit.fill
                         )
                       ),

                     ),

                      SizedBox(width: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(2)
                            ),
                            height: 20,
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, size: 14,),
                                Text("4.5", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),)
                              ],
                            ),
                          ),

                          SizedBox(height: 10,),

                          Text("Special Chicken Burger", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),),

                          Container(
                              width: 200,
                              child: Text("Chicken, Yogurt, Red chilli, Ginger paste, Garlic paste", style: TextStyle(fontSize: 12, color: Colors.grey),))

                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image:  NetworkImage(foodItemImg2),
                                fit: BoxFit.fill
                            )
                        ),

                      ),

                      SizedBox(width: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(2)
                            ),
                            height: 20,
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, size: 14,),
                                Text("4.2", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),)
                              ],
                            ),
                          ),

                          SizedBox(height: 10,),

                          Text("Special Tandoori Chicken", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),),

                          Container(
                              width: 200,
                              child: Text("Chicken, Yogurt, Red chilli, Ginger paste, Garlic paste", style: TextStyle(fontSize: 12, color: Colors.grey),))

                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image:  NetworkImage(foodItemImg),
                                fit: BoxFit.fill
                            )
                        ),

                      ),

                      SizedBox(width: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(2)
                            ),
                            height: 20,
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, size: 14,),
                                Text("4.5", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),)
                              ],
                            ),
                          ),

                          SizedBox(height: 10,),

                          Text("Special Chicken Burger", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),),

                          Container(
                              width: 200,
                              child: Text("Chicken, Yogurt, Red chilli, Ginger paste, Garlic paste", style: TextStyle(fontSize: 12, color: Colors.grey),))

                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget getCoverImages(
    double width, String imageUrl, String title, String subtitle) {
  return Container(
    width: width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        )),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.4)
          ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
