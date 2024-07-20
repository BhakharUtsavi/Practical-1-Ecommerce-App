import 'package:app/utils/global.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String,dynamic> args=ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title:const Text("Detail Page",
          style: TextStyle(
            color:Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(args['thumbail'],height: 300,width: 500),
            Text(args['name'],
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              maxLines: 2,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Text(args['description'],
              style: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              maxLines: 3,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text("⭐${args['rating']}",
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )
                ),
                const Spacer(),
                Text(args['category'],
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Row(
              children: [
                const Text("Brand",
                    style:TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )
                ),
                const Spacer(),
                Text(args['brand'],
                    style:TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ],
            ),
            const SizedBox(height: 10),

            Row(
              children: [
                const Text("Category",
                    style:TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )
                ),
                const Spacer(),
                Text(args['category'],
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text("₹ ${args['price']}",
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                const Spacer(),
                FloatingActionButton(child: const Icon(Icons.shopping_cart),
                    onPressed: (){
                  cartItem.add((args));
                  Navigator.pop(context);
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
