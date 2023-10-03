import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 21),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.textColor1.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(8)),
      child: Column(children: [
        Row(
          children: [
            const CircularCheckbox(),
            const SizedBox(
              width: 3,
            ),
            AppText.appText(
                text: "Hard copy of reports",
                textStyle: const TextStyle(color: Colors.black, fontSize: 11)),
          ],
        ),
        const SizedBox(
          height: 1,
        ),
        Row(
          children: [
            const SizedBox(width: 10),
            Flexible(
              child: AppText.appText(
                  text:
                      "Reports will be delivered within 3-4 working days. Hard copy charges are non-refundable once the reports have been dispatched.\n\n₹150 per person",
                  textStyle:
                      TextStyle(color: AppColors.textColor1, fontSize: 11)),
            ),
          ],
        ),
      ]),
    );
  }
}

class CircularCheckbox extends StatefulWidget {
  const CircularCheckbox({super.key});

  @override
  _CircularCheckboxState createState() => _CircularCheckboxState();
}

class _CircularCheckboxState extends State<CircularCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 12.0,
        height: 12.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isChecked ? AppColors.darkblue : Colors.grey,
            width: 0.5,
          ),
          color: isChecked ? AppColors.darkblue : Colors.transparent,
        ),
        child: isChecked
            ? const Center(
                child: Icon(
                  Icons.check,
                  size: 8,
                  color: Colors.white,
                ),
              )
            : null,
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: CircularCheckbox()));
}
