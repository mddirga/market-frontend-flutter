import 'package:flutter/material.dart';
import 'package:market/shared/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;

  const ChatBubble({super.key, this.isSender = false, this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isSender ? 12 : 0),
                    topRight: Radius.circular(isSender ? 0 : 12),
                    bottomLeft: const Radius.circular(12),
                    bottomRight: const Radius.circular(12),
                  ),
                  color: isSender ? backgroundColor5 : backgroundColor2),
              child: Text(
                text,
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
