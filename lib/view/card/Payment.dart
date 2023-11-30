import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment( {
    super.key
  });

  @override
  State<Payment> createState() => _Payment();
}

class _Payment extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 38,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 16, height: 34),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        height: 18,
                        child: Text(
                          'Платёж 9 июля',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                      const SizedBox(width: 184, height: 2),
                      SizedBox(
                        width: double.infinity,
                        height: 18,
                        child: Text(
                          '199 ₽ в месяц',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.550000011920929),
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 16,
            height: 38,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 16, height: 38),
              ],
            ),
          ),
        ],
      ),
    );
  }
  }