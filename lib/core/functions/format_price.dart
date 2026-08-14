import 'package:intl/intl.dart';

String formatPrice(num number) {
  return NumberFormat("#,###", "ar_SA").format(number).replaceAll(",", " ");
}
