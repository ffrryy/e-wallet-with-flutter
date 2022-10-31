import 'package:another_flushbar/flushbar.dart';
import 'package:app_bank/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void showCustomSnakbar(
  BuildContext context,
  String message,
) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: pinkColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}

String formatCurrency(num number, {String symbol = 'Rp '}) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: symbol,
    decimalDigits: 0,
  ).format(number);
}
