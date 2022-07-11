import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/card_info_antrian.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/home_menu.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/home_slider.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/news_card.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/app_divider.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/my_appbar.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/unfocus.dart';
import 'package:testflutterdevelopersolusidigital/app_theme.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final PageController carouselController = PageController();

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Scaffold(
        body: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            const MyAppBar(),
            const CardInfoAntrian(),
            const HomeMenu(),
            const AppDivider(),
            HomeSlider(carouselController: carouselController),
            const AppDivider(),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  NewsCard(),
                  NewsCard(),
                  NewsCard(),
                  NewsCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
