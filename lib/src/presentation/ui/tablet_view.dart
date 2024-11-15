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

class TabletView extends StatelessWidget {
  final SidebarXController controller;

  TabletView({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    // Dados dos StatisticsTile
    final List<Map<String, dynamic>> statisticsData = [
      {'title': 'Total de Vendas', 'value': '3.675,00', 'percentage': 15},
      {'title': 'Total Líquido', 'value': '3.675,00', 'percentage': 11},
      {'title': 'Compras canceladas', 'value': '130,00', 'percentage': -80},
      {'title': 'Reembolsos', 'value': '345,00', 'percentage': -78},
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.magnifyingGlass)),
          SizedBox(width: 12.h),
          IconButton(
              onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bell)),
          SizedBox(width: 12.h),
          ClipOval(
            child: Image.network(
                height: 40,
                'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg'),
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
                      fontSize: 11.sp,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Aqui estão as informações sobre suas vendas.',
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const TransactionsHistory(),
                  SizedBox(height: 20.h),
                  ChartBarAnimated(),
                  SizedBox(height: 20.h),
                  GridView.builder(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 10.w,
                      childAspectRatio:
                          1.5, // Ajuste para controlar a proporção do item
                    ),
                    itemCount: statisticsData.length,
                    itemBuilder: (context, index) {
                      final item = statisticsData[index];
                      return AnimationConfiguration.staggeredGrid(
                        position: index,
                        duration: const Duration(milliseconds: 1000),
                        columnCount: 2,
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: StatisticsTile(
                              title: item['title'],
                              value: item['value'],
                              percentage: item['percentage'],
                            ),
                          ),
                        ),
                      );
                    },
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
