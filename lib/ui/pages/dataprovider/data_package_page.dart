import 'package:app_bank/shared/theme.dart';
import 'package:app_bank/ui/widgets/buttons.dart';
import 'package:app_bank/ui/widgets/form.dart';
import 'package:app_bank/ui/widgets/package_provider_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: '+628',
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Center(
            child: Wrap(
              spacing: 17,
              runSpacing: 17,
              children: const [
                PackageProviderItem(
                  amount: 10,
                  price: 10000,
                  isSelected: true,
                ),
                PackageProviderItem(
                  amount: 10,
                  price: 10000,
                ),
                PackageProviderItem(
                  amount: 10,
                  price: 10000,
                ),
                PackageProviderItem(
                  amount: 10,
                  price: 10000,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 50,
        ),
        child: CustomFilleddButton(
          title: 'Continue',
          onPressed: () async {
            if (await Navigator.pushNamed(context, '/pin') == true) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/data-success', (route) => false);
            }
          },
        ),
      ),
    );
  }
}
