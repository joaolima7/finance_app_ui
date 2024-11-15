import 'package:finance_app/src/presentation/components/chart_bar_animated.dart';
import 'package:finance_app/src/presentation/widgets/buyer_history/buyer_history.dart';
import 'package:finance_app/src/presentation/widgets/side_bar_view/side_bar_view_mobile/side_bar_view_mobile.dart';
import 'package:finance_app/src/presentation/widgets/statistics_tile/statistics_tile.dart';
import 'package:finance_app/src/presentation/widgets/transactions_history/transactions_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MobileView extends StatelessWidget {
  final SidebarXController controller;

  MobileView({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
          ),
          SizedBox(width: 12.h),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.bell),
          ),
          SizedBox(width: 12.h),
          ClipOval(
            child: Image.network(
              height: 40,
              'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
            ),
          ),
          SizedBox(width: 12.h),
        ],
      ),
      drawer: SideBarViewMobile(controller: controller),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
        child: SingleChildScrollView(
          child: AnimationLimiter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 1000),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  Text(
                    'Olá, João!',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.sp,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Aqui estão as informações sobre suas vendas.',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const TransactionsHistory(),
                  SizedBox(height: 20.h),
                  ChartBarAnimated(),
                  SizedBox(height: 20.h),
                  StatisticsTile(
                    title: 'Total de Vendas',
                    value: '3.675,00',
                    percentage: 15,
                  ),
                  SizedBox(height: 20.h),
                  StatisticsTile(
                    title: 'Total Líquido',
                    value: '3.675,00',
                    percentage: 11,
                  ),
                  SizedBox(height: 20.h),
                  StatisticsTile(
                    title: 'Compras canceladas',
                    value: '130,00',
                    percentage: -80,
                  ),
                  SizedBox(height: 20.h),
                  StatisticsTile(
                    title: 'Reembolsos',
                    value: '345,00',
                    percentage: -78,
                  ),
                  SizedBox(height: 20.h),
                  const BuyerHistory(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
