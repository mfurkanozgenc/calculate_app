import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt number1 = 0.obs;
  RxInt number2 = 0.obs;
  RxString showText = '0'.obs;
  RxString transactionHistory = ''.obs;
  RxString result = ''.obs;
  RxString transaction = ''.obs;

  void btnClick(String btnValue) {
    if (btnValue == 'AC') {
      number1.value = 0;
      number2.value = 0;
      showText.value = '';
      transactionHistory.value = '';
      result.value = '';
      transaction.value = '';
    } else if (btnValue == 'C') {
      number1.value = 0;
      number2.value = 0;
      showText.value = '';
      result.value = '';
    } else if (btnValue == '00') {
      showText.value += '00';
    } else if (btnValue == 'BACK') {
      result.value = showText.value.substring(0, showText.value.length - 1);
      showText.value = result.value;
    } else if (btnValue == '/' ||
        btnValue == '+' ||
        btnValue == 'X' ||
        btnValue == '-') {
      number1.value = int.parse(showText.value);
      transaction.value = btnValue;
    } else if (btnValue == '=') {
      number2.value = int.parse(showText.value);
      if (transaction == '+') {
        result.value = (number1.value + number2.value).toString();
      }
      if (transaction == '-') {
        result.value = (number1.value - number2.value).toString();
      }
      if (transaction == 'X') {
        result.value = (number1.value * number2.value).toString();
      }
      if (transaction == '/') {
        result.value = (number1.value / number2.value).toString();
      }
      showText.value = result.value;
      transactionHistory.value = number1.value.toString() +
          transaction.value.toString() +
          number2.value.toString();
    } else if (btnValue == '+/-') {
      if (showText.value[0] != '-') {
        showText.value = '-' + showText.value;
      } else {
        showText.value = showText.value.substring(1);
      }
    }

    // Rakamlara Basıldıysa
    else {
      if (transaction.value.isNotEmpty) {
        result.value = '';
        showText.value = result.value;
      }
      result.value = int.parse(showText.value + btnValue).toString();
      showText.value = result.value;
    }
  }
}
