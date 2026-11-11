
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),

      // AppBar
      appBar: AppBar(
        backgroundColor: const Color(0xFF168C4B),
        foregroundColor: Colors.white,
        titleSpacing: 0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage('assets/images/john.jpg'),
            ),
            const SizedBox(width: 8),
            const Text(
              'John Safwat',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.call),
          SizedBox(width: 18),
          Icon(Icons.videocam_outlined),
          SizedBox(width: 18),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),

      // Chat Body
      body: Stack(
        children: [

          // Background
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),

          // Message 1
          Positioned(
            top: 30,
            left: 15,
            child: Container(
              width: 79,
              height: 51,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFF168C4B),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Hello !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          // Message 2
          Positioned(
            top: 91,
            right: 15,
            child: Container(
              width: 79,
              height: 51,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFF232D36),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Hello !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          // Message 3
          Positioned(
            top: 153,
            left: 15,
            child: Container(
              width: 268,
              height: 170,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFF168C4B),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It's like the universe loves to surprise us when we least expect it!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          // Message 4
          Positioned(
            top: 288,
            left: 15,
            child: Container(
              width: 268,
              height: 252,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFF168C4B),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'what a Great Content Tp learn Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/route.jpg',
                      width: 240,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Message 5
          Positioned(
            right: 15,
            bottom: 126,
            child: Container(
              width: 267,
              height: 70,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFF232D36),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'what a Great Content Tp learn Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          // M Circle
          Positioned(
            right: 37,
            bottom: 190,
            child: Container(
              width: 38,
              height: 38,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFF6A4C93),
                shape: BoxShape.circle,
              ),
              child: const Text(
                'M',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Bottom Message Bar
          Positioned(
            left: 15,
            right: 15,
            bottom: 16,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 44,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A1A1A),
                      border: Border.all(
                        color: const Color(0xFF168C4B),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Type a Message ...',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                // Microphone
                Container(
                  width: 48,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFF168C4B),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
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
