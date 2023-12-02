import 'package:flutter/material.dart';

class TextConnection extends StatelessWidget {
  final String title;
  final String text;
  const TextConnection( {
    super.key, required this.title, required this.text
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 14),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //const SizedBox(width: 16, height: 50),
                    Container(
                      padding: const EdgeInsets.only(right: 16.0),
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            //width: 343,
                            child: Text(
                              title,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.70,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 343,
                            child: Text(
                              text,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.550000011920929),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
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
              const SizedBox(height: 12),
            ],
          ),
        ),
      ],
    );
  }
}