import 'package:daily_lancers/Chat/UserMessage.dart';
import 'package:daily_lancers/DemoAPIData/UserChatData.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F9F9),
        title: const Text(
          "Messages",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: "RobotoBold",
            height: 1.0,
          ),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.0515,
              child: TextField(
                // onChanged: (value) => filterData(value),
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.search, color: Color(0xFFA0A7B1)),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search message',
                  hintStyle: const TextStyle(
                    color: Color(0xFFA0A7B1),
                    fontSize: 13,
                    fontFamily: "RobotoMedium",
                    height: 1.3,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatData.length,
              itemBuilder: (context, index) {
                return buildChatItem(context, chatData[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChatItem(BuildContext context, Map<String, dynamic> chatItem) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(chatItem: chatItem),
          ),
        );
      },
      child: FutureBuilder(
        future:
            Future.delayed(const Duration(seconds: 1)), // Delay for 2 seconds
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Display shimmer loading animation while waiting
            return buildShimmerChatItem();
          } else {
            // After 2 seconds, display actual chat item
            return buildActualChatItem(chatItem);
          }
        },
      ),
    );
  }

  Widget buildShimmerChatItem() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          // Display shimmer animation for profile picture
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: const CircleAvatar(
              radius: 25,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display shimmer animation for name
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 16,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                // Display shimmer animation for last message
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 14,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8.0),
          // Display shimmer animation for time
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              height: 16,
              width: 40,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildActualChatItem(Map<String, dynamic> chatItem) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(chatItem['profilePic']),
            radius: 27,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  chatItem['name'],
                  style: const TextStyle(
                    color: Color(0xFF150B3D),
                    fontSize: 16,
                    fontFamily: "RobotoBold",
                    height: 1.0,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  chatItem['lastMessage'],
                  style: TextStyle(
                    color: chatItem['isnew'] == true
                        ? Colors.black
                        : const Color(0xFFAAA6B9),
                    fontSize: 13,
                    fontFamily: chatItem['isnew'] == true
                        ? "RobotoBold"
                        : "RobotoRegular",
                    height: 1.0,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              if (chatItem['isnew'] == true)
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFF9228),
                  ),
                ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                chatItem['time'],
                style: const TextStyle(
                  color: Color(0xFFAAA6B9),
                  fontSize: 12,
                  fontFamily: "RobotoMedium",
                  height: 1.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
