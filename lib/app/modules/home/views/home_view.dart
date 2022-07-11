import 'package:testflutterdevelopersolusidigital/app/models/news_response_model.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/card_info_antrian.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/home_menu.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/home_slider.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/news_card.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/providers/home_provider.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/states/home_states.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/app_divider.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/my_appbar.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/unfocus.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController carouselController = PageController();

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context.read<HomeProvider>().loadNews();
    });
    super.initState();
  }

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
            const ListNews(),
          ],
        ),
      ),
    );
  }
}

class ListNews extends StatelessWidget {
  const ListNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = context.watch<HomeProvider>();

    switch (homeProvider.homeStates) {
      case HomeStates.loading:
        return SliverToBoxAdapter(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        );
      case HomeStates.empty:
        return SliverToBoxAdapter(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text('Tidak ada data'),
              ),
            ],
          ),
        );
      case HomeStates.standby:
        return SliverToBoxAdapter(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: homeProvider.newsResponseModel?.articles?.length ?? 0,
            itemBuilder: (context, index) {
              Article? article =
                  homeProvider.newsResponseModel?.articles?.elementAt(index);

              return NewsCard(
                title: article?.title,
                source: article?.source?.name,
                description: article?.description,
                image: article?.urlToImage,
              );
            },
          ),
        );
    }
  }
}
