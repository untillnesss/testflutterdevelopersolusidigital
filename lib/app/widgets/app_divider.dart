
import 'package:testflutterdevelopersolusidigital/exports.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 12,
        color: AppColors.greyLightest,
      ),
    );
  }
}
