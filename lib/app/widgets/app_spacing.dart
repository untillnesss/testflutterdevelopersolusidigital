import 'package:testflutterdevelopersolusidigital/exports.dart';

class AppSpacing extends StatelessWidget {
  final double? width, height;

  const AppSpacing({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.height,
      width: this.width,
    );
  }
}
