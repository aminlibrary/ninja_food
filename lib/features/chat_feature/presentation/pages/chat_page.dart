import 'package:flutter/material.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/chat_feature/presentation/widget/chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //* title
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: txt(
            "Chats",
            size: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: List.generate(3, (index) => const ChatWidget()),
          ),
        )
      ],
    );
  }
}
