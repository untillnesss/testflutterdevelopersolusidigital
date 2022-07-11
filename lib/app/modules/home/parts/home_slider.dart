

import 'package:testflutterdevelopersolusidigital/app_theme.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    Key? key,
    required this.carouselController,
  }) : super(key: key);

  final PageController carouselController;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const AppSpacing(height: 12),
          SizedBox(
            height: 150,
            child: PageView(
              controller: this.carouselController,
              children: List.generate(
                5,
                (index) => ClipRRect(
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
            ),
          ),
          const AppSpacing(height: 12),
          SmoothPageIndicator(
            controller: this.carouselController, // PageController
            count: 5,
            effect:  WormEffect(
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: const Color(0xff0093dd),
              dotColor: AppColors.greyLight,
            ), // your preferred effect
            onDotClicked: (index) {},
          ),
          const AppSpacing(height: 12),
        ],
      ),
    );
  }
}
