import 'package:testflutterdevelopersolusidigital/exports.dart';

class Unfocus extends StatelessWidget {
  final Widget child;
  const Unfocus({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void unfocus(BuildContext context) => FocusScope.of(context).unfocus();

    return GestureDetector(
      onTap: () => unfocus(context),
      child: this.child,
    );
  }
}
