import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/card_info_antrian.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/circular_progress.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/parts/home_menu.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/my_appbar.dart';
import 'package:testflutterdevelopersolusidigital/app/widgets/unfocus.dart';
import 'package:testflutterdevelopersolusidigital/app_string.dart';
import 'package:testflutterdevelopersolusidigital/app_theme.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:testflutterdevelopersolusidigital/helper.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Unfocus(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            MyAppBar(),
            CardInfoAntrian(),
            HomeMenu(),
          ],
        ),
      ),
    );
  }
}