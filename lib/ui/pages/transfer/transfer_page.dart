import 'package:app_bank/shared/theme.dart';
import 'package:app_bank/ui/widgets/buttons.dart';
import 'package:app_bank/ui/widgets/form.dart';
import 'package:app_bank/ui/widgets/transfer_recent_users_item.dart';
import 'package:app_bank/ui/widgets/transfer_result_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          //  buildRecentUsers(),
          buildResult(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        child: CustomFilleddButton(
          title: 'Continue',
          onPressed: () {
            Navigator.pushNamed(context, '/transfer-amount');
          },
        ),
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUsersItem(
            imageUrl: 'assets/images/img_profile.png',
            name: 'Sara',
            userName: 'sarah',
            isVerified: true,
          ),
          const TransferRecentUsersItem(
            imageUrl: 'assets/images/img_profile.png',
            name: 'Anna',
            userName: 'Annah',
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
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
                TransferResultItem(
                  imageUrl: 'assets/images/img_profile.png',
                  name: 'Sara',
                  userName: 'sarah',
                  isVerified: true,
                ),
                TransferResultItem(
                  imageUrl: 'assets/images/img_profile.png',
                  name: 'Anna',
                  userName: 'annah',
                  isVerified: true,
                  isSelected: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
