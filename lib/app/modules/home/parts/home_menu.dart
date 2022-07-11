import 'package:testflutterdevelopersolusidigital/app_theme.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:testflutterdevelopersolusidigital/helper.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: AppTheme.appPadding,
        child: Column(
          children: [
            const AppSpacing(height: 24),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Wrap(
                    runAlignment: WrapAlignment.spaceAround,
                    alignment: WrapAlignment.spaceAround,
                    children: const [
                      ItemMenu(
                        icon: AppAssets.hospital,
                        color: Color(0xff0093dd),
                        label: 'KLINK TERDEKAT',
                      ),
                      ItemMenu(
                        icon: AppAssets.list,
                        color: Color(0xff0093dd),
                        label: 'RIWAYAT',
                      ),
                      ItemMenu(
                        icon: AppAssets.gallery,
                        color: Color(0xff8445a2),
                        label: 'DATA SCAN',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Wrap(
                    runAlignment: WrapAlignment.spaceAround,
                    alignment: WrapAlignment.spaceAround,
                    children: const [
                      ItemMenu(
                        icon: AppAssets.notif,
                        color: Color(0xff0093dd),
                        label: 'NOTIFIKASI',
                        hasIndicator: true,
                      ),
                      ItemMenu(
                        icon: AppAssets.star,
                        color: Color(0xff8445a2),
                        label: 'BERI NILAI',
                      ),
                      ItemMenu(
                        icon: AppAssets.settings,
                        color: Color(0xffdd127b),
                        label: 'DATA PENGATURAN',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  final String icon, label;
  final Color color;
  final bool hasIndicator;

  const ItemMenu({
    Key? key,
    required this.icon,
    required this.color,
    required this.label,
    this.hasIndicator = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: this.color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      this.icon,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              this.hasIndicator
                  ? Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          color: const Color(0xff50dee3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    )
                  : displayNone(),
            ],
          ),
          const AppSpacing(height: 8),
          Text(
            this.label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
          const AppSpacing(height: 18),
        ],
      ),
    );
  }
} 