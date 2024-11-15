import 'package:finance_app/src/presentation/components/chart_bar_animated.dart';
import 'package:finance_app/src/presentation/widgets/buyer_history/buyer_history.dart';
import 'package:finance_app/src/presentation/widgets/side_bar_view/side_bar_view_mobile/side_bar_view_mobile.dart';
import 'package:finance_app/src/presentation/widgets/statistics_tile/statistics_tile.dart';
import 'package:finance_app/src/presentation/widgets/transactions_history/transactions_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sidebarx/sidebarx.dart';

class DesktopView extends StatelessWidget {
  final SidebarXController controller;

  DesktopView({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideBarViewMobile(controller: controller),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 40, right: 150),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Olá, João!',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 5.sp,
                            ),
                          ),
                          Text(
                            'Aqui estão as informações sobre suas vendas.',
                            style: TextStyle(fontSize: 4.sp),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:
                                const FaIcon(FontAwesomeIcons.magnifyingGlass),
                          ),
                          SizedBox(width: 3.w),
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.bell),
                          ),
                          SizedBox(width: 3.w),
                          ClipOval(
                            child: Image.network(
                              height: 40,
                              'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                            ),
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'João Lima',
                            style: TextStyle(
                              fontSize: 3.5.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 500,
                          height: 320,
                          child: ChartBarAnimated(),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      const Expanded(
                          child: SizedBox(
                        width: 500,
                        height: 320,
                        child: TransactionsHistory(),
                      )),
                    ],
                  ),
                  SizedBox(height: 4.w),
                  SizedBox(
                    height: 170.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: StatisticsTile(
                              title: 'Total de Vendas',
                              value: '3.675,00',
                              percentage: 15),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: StatisticsTile(
                              title: 'Total Líquido',
                              value: '3.675,00',
                              percentage: 11),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: StatisticsTile(
                              title: 'Compras canceladas',
                              value: '130,00',
                              percentage: -80),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: StatisticsTile(
                              title: 'Reembolsos',
                              value: '345,00',
                              percentage: -78),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.w),
                  const Row(
                    children: [
                      Expanded(
                        child: BuyerHistory(),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.w),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
