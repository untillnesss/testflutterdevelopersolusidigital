import 'package:testflutterdevelopersolusidigital/app_string.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircularIndicator extends StatelessWidget {
  final int label;
  final double startAngle;
  const CircularIndicator({
    Key? key,
    required this.label,
    required this.startAngle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          startAngle: this.startAngle,
          radius: 40,
          lineWidth: 4,
          percent: .9,
          backgroundColor: Colors.transparent,
          center: Text(
            this.label.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 33,
            ),
          ),
          progressColor: const Color(0xffefefab),
        ),
        const AppSpacing(height: 8),
        const Text(
          AppString.nomorAntrian,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
