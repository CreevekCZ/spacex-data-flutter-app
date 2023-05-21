import 'package:flutter/material.dart';

enum GlobalMessageCategory {
  warning,
  error,
  success,
  info;

  String get title {
    switch (this) {
      case GlobalMessageCategory.warning:
        return 'Warning';
      case GlobalMessageCategory.error:
        return 'Error';
      case GlobalMessageCategory.success:
        return 'Success';
      case GlobalMessageCategory.info:
        return 'Info';
    }
  }

  IconData get icon {
    switch (this) {
      case GlobalMessageCategory.warning:
        return Icons.warning;
      case GlobalMessageCategory.error:
        return Icons.error;
      case GlobalMessageCategory.success:
        return Icons.check_circle;
      case GlobalMessageCategory.info:
        return Icons.info;
    }
  }

  Color get color {
    switch (this) {
      case GlobalMessageCategory.warning:
        return Colors.orange;
      case GlobalMessageCategory.error:
        return Colors.red;
      case GlobalMessageCategory.success:
        return Colors.green;
      case GlobalMessageCategory.info:
        return Colors.lightBlue;
    }
  }
}
