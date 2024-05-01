import 'package:flutter/material.dart';

class ChatPage2 extends StatelessWidget {
  const ChatPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Image.asset(
                'assets/images/appBar.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.orange),
              ),
              const Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  "Chat",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100]
              ),
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/images/person.png"),
                ),
                title: const Text(
                  "Dianne Russell",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 119, 226, 172),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "Online",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 119, 226, 172),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: const [
                Message(
                  message: "Just to order",
                ),
                Message(
                  message: "Okay, for what level of spiciness?",
                  isSentByMe: true,
                ),
                Message(
                  message: "Okay, wait a minute👍",
                ),
                Message(
                  message: "Okay, I'm waiting👍",
                  isSentByMe: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 3),
                          blurRadius: 7,
                          spreadRadius: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type a message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: () {
                      // Handle send message
                    },
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

class Message extends StatelessWidget {
  final String message;
  final bool isSentByMe;

  const Message({
    required this.message,
    this.isSentByMe = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSentByMe ? const Color.fromARGB(255, 119, 226, 172) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 1,
              spreadRadius: 1,
              color: Colors.black12,
            ),
          ],
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isSentByMe ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
