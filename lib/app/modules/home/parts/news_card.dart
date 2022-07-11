import 'package:testflutterdevelopersolusidigital/app/models/news_response_model.dart';
import 'package:testflutterdevelopersolusidigital/app/routes/route_name.dart';
import 'package:testflutterdevelopersolusidigital/app_theme.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:intl/intl.dart';

class NewsCard extends StatelessWidget {
  final Article? news;

  const NewsCard({
    Key? key,
    this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              RouteName.news,
              arguments: this.news,
            );
          },
          child: ClipRRect(
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
                  this.news?.urlToImage ??
                      'https://picsum.photos/seed/picsum/300/200',
                  fit: BoxFit.cover,
                  errorBuilder: (context, _, __) => Container(
                    color: AppColors.greyLightest,
                    child: const Icon(Icons.image),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: AppTheme.appPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppSpacing(height: 12),
              Text(
                this.news?.title ?? '-',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const AppSpacing(height: 4),
              Text(
                'Sumber : ${this.news?.title}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                DateFormat('yMMMEd')
                    .format(this.news?.publishedAt ?? DateTime.now()),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const AppSpacing(height: 12),
              ExpandableText(
                this.news?.description ?? '',
                maxLines: 3,
                style: const TextStyle(),
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
