part of pixabay_ota;

enum ApiResultType {
  success,
  connectionProblem,
  timeout,
  unauthorized,
  error;

  bool get isSuccess => success == this;

  bool get isConnectionProblem => connectionProblem == this;

  bool get isTimeout => timeout == this;

  bool get isUnauthorized => unauthorized == this;

  bool get isError => error == this;
}
