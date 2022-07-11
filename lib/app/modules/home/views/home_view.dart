import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/card_info_antrian.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/home_menu.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/home_slider.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/app_divider.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/my_appbar.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/unfocus.dart';
import 'package:testflutterdevelopersolusidigital/app_theme.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:expandable_text/expandable_text.dart';

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
                  AppSpacing(height: 26),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Container(
            height: 150,
            padding: AppTheme.appPadding,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                'https://picsum.photos/seed/picsum/300/200',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: AppTheme.appPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              AppSpacing(height: 12),
              Text(
                'Judul berita ada disini Judul',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              AppSpacing(height: 4),
              Text(
                'Sumber : detik ',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Rabu, 17 Agustus 2019',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              AppSpacing(height: 12),
              ExpandableText(
                'Jakarta - Air putih sangat aku adalah bermanfaat untuk menjaga sistem yang ada di dalam tubuh. Seperti yang kita ketahui, 60 persen tubuh berisi cairan yang menjadikan tubuh harus selalu terhidrasi.',
                maxLines: 3,
                style: TextStyle(),
                expandText: 'Baca Selengkapnya ...',
                collapseText: 'Tutup',
              ),
            ],
          ),
        ),
        const AppSpacing(height: 26),
      ],
    );
  }
}
