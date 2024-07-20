import 'package:app/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String select="all";
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title:const Text("Home Page",
            style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color:Colors.white,
            )
          ),
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed("cart");
              },
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.network("https://ad2cart.com/wp-content/uploads/2021/02/ecommerce-website-banners.jpg",height:200,width:MediaQuery.of(context).size.width),
                const Text(
                  "Hot Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ActionChip(
                        backgroundColor: select == "all"
                            ? Colors.cyan
                            : Colors.white,
                        label: const Text("All",
                          selectionColor: Colors.green,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: (){
                          setState(() {
                            select="all";
                          });
                        },
                      ),

                      const SizedBox(width: 10),
                      ActionChip(
                        backgroundColor: select == "earbuds"
                            ? Colors.cyan
                            : Colors.white,
                        label: const Text("Earbuds",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        avatar: const Icon(Icons.earbuds),
                        onPressed: (){
                          setState(() {
                            select="earbuds";
                          });
                        },
                      ),

                      const SizedBox(width: 10),
                      ActionChip(
                        backgroundColor: select == "smartphone"
                            ? Colors.cyan
                            : Colors.white,
                        label: const Text("Smart Phone",
                          selectionColor: Colors.green,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        avatar: const Icon(Icons.smartphone),
                        onPressed: (){
                          setState(() {
                            select="smartphone";
                          });
                        },
                      ),

                      const SizedBox(width: 10),
                      ActionChip(
                        backgroundColor: select == "laptop"
                            ? Colors.cyan
                            : Colors.white,
                        label: const Text("Laptop",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        avatar: const Icon(Icons.laptop),
                        onPressed: (){
                          setState(() {
                            select="laptop";
                          });
                        },
                      ),

                      const SizedBox(width: 10),
                      ActionChip(
                        backgroundColor: select == "smarttv"
                            ? Colors.cyan
                            : Colors.white,
                        label: const Text("Smart Tv",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        avatar: const Icon(Icons.tv),
                        onPressed: (){
                          setState(() {
                            select="smarttv";
                          });
                        },
                      ),

                      const SizedBox(width: 10),
                      ActionChip(
                        backgroundColor: select == "smartwatch"
                            ? Colors.cyan
                            : Colors.white,
                        label: const Text("Smart Watch",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        avatar: const Icon(Icons.watch),
                        onPressed: (){
                          setState(() {
                            select="smartwatch";
                          });
                        },
                      ),

                      const SizedBox(width: 10),
                      ActionChip(
                        backgroundColor: select == "camera"
                            ? Colors.cyan
                            : Colors.white,
                        label: const Text("Camera",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        avatar: const Icon(Icons.camera),
                        onPressed: (){
                          setState(() {
                            select="camera";
                          });
                        },
                      ),

                      const SizedBox(width: 10),
                      ActionChip(
                        backgroundColor: select == "tablet"
                            ? Colors.cyan
                            : Colors.white,
                        label: const Text("Tablet",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        avatar: const Icon(Icons.tablet),
                        onPressed: (){
                          setState(() {
                            select="tablet";
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Visibility(
                      visible: select=="smartphone" || select=="all",
                      child: const Text("Smart Phone",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: select=="smartphone"||select=="all",
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                            children: smartphone.map((e){
                              return InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed("detail",arguments: e);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 300,
                                    width: 400,
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(left: 10,right:10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.cyan,
                                        width: 3,
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.network(e['thumbail'],height: 180,width: 250,),
                                        Text(e['name'],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text("₹ ${e['price']}",
                                          style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight:FontWeight.bold,
                                          ),
                                        ),
                                        RatingBar.builder(
                                            initialRating: double.parse("${e['rating']}"),
                                            allowHalfRating: true,
                                            direction: Axis.horizontal,
                                            itemSize: 15,
                                            itemPadding: const EdgeInsets.only(left: 10),
                                            itemBuilder:(context,val){
                                              return const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            onRatingUpdate: (val){}
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },).toList()
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Visibility(
                      visible: select=="laptop" || select=="all",
                      child: const Text("Laptop",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: select=="laptop"||select=="all",
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                            children: laptop.map((e){
                              return InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed("detail",arguments: e);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 300,
                                    width: 400,
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(left: 10,right:10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.cyan,
                                        width: 3,
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.network(e['thumbail'],height: 180,width: 250,),
                                        Text(e['name'],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text("₹ ${e['price']}",
                                          style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight:FontWeight.bold,
                                          ),
                                        ),
                                        RatingBar.builder(
                                            initialRating: double.parse("${e['rating']}"),
                                            allowHalfRating: true,
                                            direction: Axis.horizontal,
                                            itemSize: 15,
                                            itemPadding: const EdgeInsets.only(left: 10),
                                            itemBuilder:(context,val){
                                              return const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            onRatingUpdate: (val){}
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },).toList()
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Visibility(
                      visible: select=="camera" || select=="all",
                      child: const Text("Camera",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: select=="camera"||select=="all",
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                            children: camera.map((e){
                              return InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed("detail",arguments: e);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 300,
                                    width: 400,
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(left: 10,right:10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.cyan,
                                        width: 3,
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.network(e['thumbail'],height: 180,width: 250,),
                                        Text(e['name'],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text("₹ ${e['price']}",
                                          style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight:FontWeight.bold,
                                          ),
                                        ),
                                        RatingBar.builder(
                                            initialRating: double.parse("${e['rating']}"),
                                            allowHalfRating: true,
                                            direction: Axis.horizontal,
                                            itemSize: 15,
                                            itemPadding: const EdgeInsets.only(left: 10),
                                            itemBuilder:(context,val){
                                              return const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            onRatingUpdate: (val){}
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },).toList()
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Visibility(
                      visible: select=="smartwatch" || select=="all",
                      child: const Text("Smart Watch",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: select=="smartwatch"||select=="all",
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                            children: smartwatch.map((e){
                              return InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed("detail",arguments: e);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 300,
                                    width: 400,
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(left: 10,right:10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.cyan,
                                        width: 3,
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.network(e['thumbail'],height: 180,width: 250,),
                                        Text(e['name'],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text("₹ ${e['price']}",
                                          style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight:FontWeight.bold,
                                          ),
                                        ),
                                        RatingBar.builder(
                                            initialRating: double.parse("${e['rating']}"),
                                            allowHalfRating: true,
                                            direction: Axis.horizontal,
                                            itemSize: 15,
                                            itemPadding: const EdgeInsets.only(left: 10),
                                            itemBuilder:(context,val){
                                              return const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            onRatingUpdate: (val){}
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },).toList()
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Visibility(
                      visible: select=="earbuds" || select=="all",
                      child: const Text("Earbuds",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: select=="earbuds"||select=="all",
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                            children: earbuds.map((e){
                              return InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed("detail",arguments: e);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 300,
                                    width: 400,
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(left: 10,right:10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.cyan,
                                        width: 3,
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.network(e['thumbail'],height: 180,width: 250,),
                                        Text(e['name'],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text("₹ ${e['price']}",
                                          style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight:FontWeight.bold,
                                          ),
                                        ),
                                        RatingBar.builder(
                                            initialRating: double.parse("${e['rating']}"),
                                            allowHalfRating: true,
                                            direction: Axis.horizontal,
                                            itemSize: 15,
                                            itemPadding: const EdgeInsets.only(left: 10),
                                            itemBuilder:(context,val){
                                              return const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            onRatingUpdate: (val){}
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },).toList()
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Visibility(
                      visible: select=="tablet" || select=="all",
                      child: const Text("Tablet",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: select=="tablet"||select=="all",
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                            children: tablet.map((e){
                              return InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed("detail",arguments: e);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 300,
                                    width: 400,
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(left: 10,right:10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.cyan,
                                        width: 3,
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.network(e['thumbail'],height: 180,width: 250,),
                                        Text(e['name'],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text("₹ ${e['price']}",
                                          style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight:FontWeight.bold,
                                          ),
                                        ),
                                        RatingBar.builder(
                                            initialRating: double.parse("${e['rating']}"),
                                            allowHalfRating: true,
                                            direction: Axis.horizontal,
                                            itemSize: 15,
                                            itemPadding: const EdgeInsets.only(left: 10),
                                            itemBuilder:(context,val){
                                              return const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            onRatingUpdate: (val){}
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },).toList()
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Visibility(
                      visible: select=="samrttv" || select=="all",
                      child: const Text("Smart TV",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: select=="smarttv"||select=="all",
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                            children: smarttv.map((e){
                              return InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed("detail",arguments: e);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 300,
                                    width: 400,
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(left: 10,right:10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.cyan,
                                        width: 3,
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.network(e['thumbail'],height: 180,width: 250,),
                                        Text(e['name'],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text("₹ ${e['price']}",
                                          style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight:FontWeight.bold,
                                          ),
                                        ),
                                        RatingBar.builder(
                                            initialRating: double.parse("${e['rating']}"),
                                            allowHalfRating: true,
                                            direction: Axis.horizontal,
                                            itemSize: 15,
                                            itemPadding: const EdgeInsets.only(left: 10),
                                            itemBuilder:(context,val){
                                              return const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            onRatingUpdate: (val){}
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },).toList()
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}
