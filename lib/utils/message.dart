import 'package:flutter/widgets.dart';
import 'package:toastification/toastification.dart';

void showSuccessMessage(String text)
{
   toastification.show(
      title: Text(text),
      dismissDirection: DismissDirection.none,
      type: ToastificationType.success,
      style: ToastificationStyle.flatColored);
  return;
}

void showErrorMessage(String text)
{
  toastification.show(
      title: Text(text),
      dismissDirection: DismissDirection.none,
      type: ToastificationType.error,
      style: ToastificationStyle.flatColored);
  return;
}

void showWarningMessage(String text)
{
  toastification.show(
      title: Text(text),
      dismissDirection: DismissDirection.none,
      type: ToastificationType.warning,
      style: ToastificationStyle.flatColored);
  return;
}