import 'package:flutter/material.dart';
import 'package:nonton_asep/pages/home_page.dart';
import 'package:nonton_asep/theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: ListView(
        children: [
          SizedBox(
            height: 110,
          ),
          Image.asset(
            'assets/image_success.png',
          ),
          Center(
            child: Text(
              'Payment Success',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: black,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Yes! time to relax yourself by\n watching the good movie',
              style: darkGreyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            child: Container(
              width: 220,
              height: 50,
              margin: EdgeInsets.only(top: 41),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  primary: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(37),
                  ),
                ),
                child: Text(
                  'Back to Home',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
