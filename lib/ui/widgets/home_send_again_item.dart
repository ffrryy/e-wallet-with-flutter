import 'package:app_bank/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeSendAgainItem extends StatelessWidget {
  final String imageUrl;
  final String userName;

  const HomeSendAgainItem({
    super.key,
    required this.imageUrl,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      margin: const EdgeInsets.only(right: 17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(
              bottom: 13,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Text(
            '@$userName',
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
