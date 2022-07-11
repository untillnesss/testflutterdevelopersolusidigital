import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/news_card.dart';
import 'package:testflutterdevelopersolusidigital/app_string.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(AppString.news),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AppSpacing(height: 12),
            NewsCard(),
          ],
        ),
      ),
    );
  }
}
