import 'package:flutter/material.dart';
import 'inChat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

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
          Positioned(
            top: 50,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.orange),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Chat",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  ChatImage(
                    image: 'person',
                    text: 'Anamwp',
                    text2: 'Your Order Just Arrived!',
                    text3: '20:00',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage2()));
                    },
                  ),
                  SizedBox(height: 20),
                  ChatImage(
                    image: "person2",
                    text: "Guy Hawkins",
                    text2: "Your Order Just Arrived!",
                    text3: "20:00",
                    onTap: () {
                      // onTap function for person2
                    },
                  ),
                  SizedBox(height: 20),
                  ChatImage(
                    image: "person3",
                    text: "Leslie Alexander",
                    text2: "Your Order Just Arrived!",
                    text3: "20:00",
                    onTap: () {
                      // onTap function for person3
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatImage extends StatelessWidget {
  final String image;
  final String text;
  final String text2;
  final String text3;
  final VoidCallback onTap;

  const ChatImage({
    Key? key,
    required this.image,
    required this.text,
    required this.text2,
    required this.text3,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(22),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/$image.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  text2,
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                text3,
                style: const TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
