import 'package:cookies_app/colors.dart';
import 'package:cookies_app/models/cookies.dart';
import 'package:cookies_app/pages/home/widgets/avatar.dart';
import 'package:cookies_app/pages/home/widgets/bottom_nav_bar.dart';
import 'package:cookies_app/pages/home/widgets/cart.dart';
import 'package:cookies_app/pages/home/widgets/cookie_card.dart';
import 'package:cookies_app/pages/home/widgets/cookies_bar.dart';
import 'package:cookies_app/pages/home/widgets/horizontal_cookie_card.dart';
import 'package:cookies_app/pages/home/widgets/offers_bar.dart';
import 'package:cookies_app/pages/home/widgets/personal_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: Body(size: size),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    // Applying padding at the sides of everything (kind of like bezel)
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Contains the avatar, then some spacing, name and then at the end cart
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Avatar(),
              SizedBox(width: 16),
              PersonalInfo(),
              Spacer(),
              Cart(),
            ],
          ),
          // The heading and more button
          const CookiesBar(),
          SizedBox(height: size.height * 0.12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
                cookies.map((cookie) => CookieCard(cookie: cookie)).toList(),
          ),
          const OffersBar(),
          const HorizontalCookieCard(),
        ],
      ),
    );
  }
}
