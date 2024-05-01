import 'package:flutter/material.dart';

class PopularMenu extends StatefulWidget {
  const PopularMenu({super.key});

  @override
  State<PopularMenu> createState() => _PopularMenuState();
}

class _PopularMenuState extends State<PopularMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/appBar.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Find Your\nFavorite Food",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Image.asset(
                      "assets/icons/notifiaction.png",
                      color: Colors.green,
                      height: 25,
                      width: 25,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 267,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          Image.asset(
                            "assets/icons/search.png",
                            color: Color(0xFFDA6317),
                            height: 25,
                            width: 25,
                          ),
                          Text(
                            "What do you want to order?",
                            style: TextStyle(color: Colors.orange[400]),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        "assets/icons/settings.png",
                        color: const Color(0xFFDA6317),
                        height: 10,
                        width: 10,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 44,
                  width: 92,
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Soup  X",
                        style: TextStyle(color: Color(0xFFDA6317), fontSize: 15),
                      ),
                      // Text("X"),
                    ],
                  ),
                ),
                const Text(
                  "Popular Menu",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SingleChildScrollView(
                  child: Column(
                    children: [
                      MenuImage(image: "food", text: 'Herbal Pancake', text2: 'Herbal Pancake', text3: '7',),
                      SizedBox(height: 15),
                      MenuImage(image: "salad", text: 'Fruit Salad', text2: 'Wijie Resto', text3: '5',),
                      SizedBox(height: 15),
                      MenuImage(image: "noddle", text: 'Green Noddle', text2: 'Noodle Home', text3: '15',),
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

class MenuImage extends StatelessWidget {
  final String image;
  final String text;
  final String text2;
  final String text3;
  const MenuImage({super.key, required this.image, required this.text, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 87,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/images/$image.png"))),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  text2,
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            Text(
              "\$$text3",
              style: const TextStyle(color: Colors.orange, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
