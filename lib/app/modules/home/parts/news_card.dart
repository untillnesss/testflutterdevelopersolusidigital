import 'package:testflutterdevelopersolusidigital/app/routes/route_name.dart';
import 'package:testflutterdevelopersolusidigital/app_theme.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:intl/intl.dart';

class NewsCard extends StatelessWidget {
  final String? title, source, description, image;
  final DateTime? date;

  const NewsCard({
    Key? key,
    this.title = '-',
    this.source = '-',
    this.description = '-',
    this.image,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RouteName.NEWS);
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
                  this.image ?? 'https://picsum.photos/seed/picsum/300/200',
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
                this.title ?? '-',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const AppSpacing(height: 4),
              Text(
                'Sumber : ${this.source}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                DateFormat('yMMMEd')
                    .format(this.date ?? DateTime.now()),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const AppSpacing(height: 12),
              ExpandableText(
                this.description ?? '',
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
