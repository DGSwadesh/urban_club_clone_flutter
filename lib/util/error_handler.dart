class CustomError implements Exception {
  final String customMessage;
  bool? isNetworkError = false;

  CustomError(this.customMessage, {this.isNetworkError});

  String errorMessage() {
    return customMessage;
  }
}
