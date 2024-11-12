import 'package:finance_app/src/presentation/widgets/side_bar_view/side_bar_view_mobile/side_bar_view_mobile.dart';
import 'package:finance_app/src/presentation/widgets/transactions_history/transactions_history.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sidebarx/sidebarx.dart';

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
              icon: const FaIcon(FontAwesomeIcons.magnifyingGlass)),
          IconButton(
              onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bell)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipOval(
              child: Image.network(
                  width: MediaQuery.of(context).size.width * .09,
                  'https://s3-alpha-sig.figma.com/img/b423/f6cd/fd23c1541eb2e50895202b33e5e4bfed?Expires=1732492800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=R-fjM669ZfEbF2R7v1kjiIc4a5LPj5B8oE88VdWmc9kwGh8OHAxSTmw8C~B0LhGF9Yn-HMf92U~ENB3Gx7dKQmRGVOPXsoyUdrNvX--jCYw2NtFP5aSGLf~3d5Kjy8i16UHESdoCmRD1gVjQTo4snQa2u1nu2BsFdbCXuMxks5UREat-KmF3PqPq3btmXyZ~S2uCimroTjypCdr9yVbHcZvcHpdlFiKGRH0-E9LJzs-daaPzFuA00VU7C-D4INlnt5yqyPMeTywVvmmm2iFxnY2JZP49dW41s2YouLCGvkuRcIb7pVytw0Q2wG1VMurQZKRZL6kWJeYbKnNoJHNtcQ__'),
            ),
          )
        ],
      ),
      drawer: SideBarViewMobile(controller: controller),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Olá, João!',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const Center(
                child: Text(
                  'Aqui estão as informações sobre suas vendas.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const TransactionsHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
