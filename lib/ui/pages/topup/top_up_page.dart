import 'package:app_bank/shared/theme.dart';
import 'package:app_bank/ui/widgets/bank_item.dart';
import 'package:app_bank/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Ferry',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BankItem(
            imageUrl: 'assets/images/img_bank_bca.png',
            title: 'BANK BCA',
            time: '50 mins',
            isSelected: true,
          ),
          const BankItem(
            imageUrl: 'assets/images/img_bank_bni.png',
            title: 'BANK BNI',
            time: '50 mins',
          ),
          const BankItem(
            imageUrl: 'assets/images/img_bank_mandiri.png',
            title: 'BANK Mandiri',
            time: '50 mins',
          ),
          const BankItem(
            imageUrl: 'assets/images/img_bank_ocbc.png',
            title: 'BANK OCBC',
            time: '50 mins',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomFilleddButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/top-up-amount');
            },
          ),
        ],
      ),
    );
  }
}
