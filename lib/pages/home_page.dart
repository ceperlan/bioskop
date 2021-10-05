import 'package:flutter/material.dart';
import 'package:nonton_asep/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home',
                  style: blackTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: black,
                  ),
                ),
                Text(
                  'Watch much easier',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/icon_search.png',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
