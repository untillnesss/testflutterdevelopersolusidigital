import 'package:testflutterdevelopersolusidigital/app/routes/route_name.dart';
import 'package:testflutterdevelopersolusidigital/app_theme.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:expandable_text/expandable_text.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
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
                  'https://picsum.photos/seed/picsum/300/200',
                  fit: BoxFit.cover,
                ),
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
