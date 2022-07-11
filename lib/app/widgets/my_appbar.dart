import 'package:testflutterdevelopersolusidigital/app_string.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Image.asset(AppAssets.MAIN_LOGO),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kFloatingActionButtonMargin),
          child: Row(
            children: const [
              Text(
                'Hi, Said',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppSpacing(width: 12),
              Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 50),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.greyLightest,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: AppColors.greyLight),
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: kFloatingActionButtonMargin,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                ),
                child: TextFormField(
                  scrollPadding: EdgeInsets.zero,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    hintText: AppString.searchHint,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
