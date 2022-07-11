import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/circular_progress.dart';
import 'package:testflutterdevelopersolusidigital/app_string.dart';
import 'package:testflutterdevelopersolusidigital/app_theme.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';

class CardInfoAntrian extends StatelessWidget {
  const CardInfoAntrian({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: AppTheme.appPadding,
        child: Column(
          children: [
            const AppSpacing(height: 12),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff0490db),
                    Color(0xffd8147d),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppTheme.appPadding.copyWith(
                      top: 12,
                      bottom: 8,
                    ),
                    child: const Text(
                      AppString.infoAntrian,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const Divider(color: Colors.white),
                  Padding(
                    padding: AppTheme.appPadding.copyWith(bottom: 16, top: 12),
                    child: Row(
                      children: [
                        const CircularIndicator(
                          startAngle: 0,
                          label: 21,
                        ),
                        const AppSpacing(width: 18),
                        const CircularIndicator(
                          startAngle: 180,
                          label: 5,
                        ),
                        const AppSpacing(width: 18),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                AppString.dokterAnda,
                                style: TextStyle(
                                  color: Color(0xffefefab),
                                ),
                              ),
                              Text(
                                AppString.namaDokter,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              AppSpacing(height: 12),
                              Text(
                                AppString.klinikAnda,
                                style: TextStyle(
                                  color: Color(0xffefefab),
                                ),
                              ),
                              Text(
                                AppString.klinkRs,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              AppSpacing(height: 18),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
