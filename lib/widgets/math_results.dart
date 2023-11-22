import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:get/instance_manager.dart';

class MathResults extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculatorController>();
  MathResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: '${calculatorCtrl.firstNumber}'),
            SubResult(text: '${calculatorCtrl.operation}'),
            SubResult(text: '${calculatorCtrl.secondNumber}'),
            const LineSeparator(),
            MainResultText(text: '${calculatorCtrl.mathResult}'),
          ],
        ));
  }
}
