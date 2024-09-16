import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppToasts {
  final BuildContext context;
  late final FToast _toasts;

  AppToasts.of(this.context) {
    _toasts = FToast();
    _toasts.init(context);
  }

  void showError(String message) {
    _showToast(
      message: message,
      backgroundColor: Colors.red,
    );
  }

  void _showToast({
    required String message,
    required Color backgroundColor,
  }) {
    _toasts.showToast(
      gravity: ToastGravity.BOTTOM,
      child: _ToastView(
        message: message,
        backgroundColor: backgroundColor,
      ),
    );
  }
}

class _ToastView extends StatelessWidget {
  final String message;
  final Color backgroundColor;

  const _ToastView({
    super.key,
    required this.backgroundColor,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              maxLines: 5,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
