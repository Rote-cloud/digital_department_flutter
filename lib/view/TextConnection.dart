

import 'package:flutter/material.dart';

class TextConnection extends StatefulWidget {
  const TextConnection( {
    super.key
});

  @override
  State<TextConnection> createState() => _TextConnection();
}

class _TextConnection extends State<TextConnection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 94,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 375, height: 14),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 16, height: 50),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 343,
                        child: Text(
                          'У вас подключено',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w700,
                            //height: 0.06,
                            letterSpacing: -0.70,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 343,
                        child: Text(
                          'Подписки, автоплатежи и сервисы на которые вы подписались',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.550000011920929),
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            //height: 0.09,
                            letterSpacing: -0.42,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 375, height: 12),
        ],
      ),
    );
  }
}