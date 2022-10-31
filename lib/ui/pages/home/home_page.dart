import 'package:app_bank/shared/shared_methods.dart';
import 'package:app_bank/shared/theme.dart';
import 'package:app_bank/ui/widgets/home_latest_transactions_item.dart';
import 'package:app_bank/ui/widgets/home_send_again_item.dart';
import 'package:app_bank/ui/widgets/home_service_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/ic_overview.png',
                  width: 20,
                  color: blueColor,
                ),
                label: 'Overview'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/ic_history.png',
                  width: 20,
                ),
                label: 'History'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/ic_statistic.png',
                  width: 20,
                ),
                label: 'Statistic'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/ic_reward.png',
                  width: 20,
                ),
                label: 'Reward'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: Image.asset(
          'assets/icons/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(context),
          buildLatestTransactions(),
          buildSendAgain(),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'shaynahan',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/img_profile.png',
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(
        top: 40,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          28,
        ),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/img_bg_card.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hanna',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1268',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Balence',
            style: whiteTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          Text(
            formatCurrency(50000),
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.all(
        22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              const Spacer(),
              Text(
                '55% ',
                style: greenTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'of ${formatCurrency(22000)}',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: LinearProgressIndicator(
              value: 0.55,
              minHeight: 5,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: younggreyColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                title: 'Top Up',
                iconUrl: 'assets/icons/ic_topup.png',
                onTap: () {
                  Navigator.pushNamed(context, '/top-up');
                },
              ),
              HomeServiceItem(
                title: 'Send',
                iconUrl: 'assets/icons/ic_send.png',
                onTap: () {
                  Navigator.pushNamed(context, '/transfer');
                },
              ),
              HomeServiceItem(
                title: 'Withdraw',
                iconUrl: 'assets/icons/ic_withdraw.png',
                onTap: () {},
              ),
              HomeServiceItem(
                title: 'More',
                iconUrl: 'assets/icons/ic_more.png',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const MoreDialog(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: const [
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/icons/ic_transaction_topup.png',
                  title: 'Top Up',
                  time: 'Yesterday',
                  value: '+ 450.000',
                ),
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/icons/ic_transaction_cashback.png',
                  title: 'Cashback',
                  time: 'Sep 11',
                  value: '+ 20.000',
                ),
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/icons/ic_transaction_withdraw.png',
                  title: 'Withdraw',
                  time: 'Sep 2',
                  value: '- 10.000',
                ),
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/icons/ic_transaction_transfer.png',
                  title: 'Transfer',
                  time: 'Aug 28',
                  value: '- 450.000',
                ),
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/icons/ic_transaction_electric.png',
                  title: 'Electric',
                  time: 'Feb 19',
                  value: '- 10.450.000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                HomeSendAgainItem(
                  imageUrl: 'assets/images/img_profile.png',
                  userName: 'Yuanita',
                ),
                HomeSendAgainItem(
                  imageUrl: 'assets/images/img_profile.png',
                  userName: 'Yuanita',
                ),
                HomeSendAgainItem(
                  imageUrl: 'assets/images/img_profile.png',
                  userName: 'Yuanita',
                ),
                HomeSendAgainItem(
                  imageUrl: 'assets/images/img_profile.png',
                  userName: 'Yuanita',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        height: 326,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightbackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do More With Us',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Center(
              child: Wrap(
                spacing: 29,
                runSpacing: 29,
                children: [
                  HomeServiceItem(
                    title: 'Data',
                    iconUrl: 'assets/icons/ic_data.png',
                    onTap: () {
                      Navigator.pushNamed(context, '/data-provider');
                    },
                  ),
                  HomeServiceItem(
                    title: 'Water',
                    iconUrl: 'assets/icons/ic_water.png',
                    onTap: () {},
                  ),
                  HomeServiceItem(
                    title: 'Stream',
                    iconUrl: 'assets/icons/ic_stream.png',
                    onTap: () {},
                  ),
                  HomeServiceItem(
                    title: 'Movie',
                    iconUrl: 'assets/icons/ic_movie.png',
                    onTap: () {},
                  ),
                  HomeServiceItem(
                    title: 'Food',
                    iconUrl: 'assets/icons/ic_food.png',
                    onTap: () {},
                  ),
                  HomeServiceItem(
                    title: 'Travel',
                    iconUrl: 'assets/icons/ic_travel.png',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
