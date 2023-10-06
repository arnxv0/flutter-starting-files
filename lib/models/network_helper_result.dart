class NetworkHelperResult {
  bool isSuccess;
  String message;
  int statusCode;
  dynamic data;

  NetworkHelperResult({
    this.isSuccess = false,
    this.message = 'Something went wrong',
    this.statusCode = 500,
    this.data,
  });

  // setters
  void setSuccess(bool isSuccess) {
    this.isSuccess = isSuccess;
  }

  void setMessage(String message) {
    this.message = message;
  }

  void setStatusCode(int statusCode) {
    this.statusCode = statusCode;
  }

  void setData(dynamic data) {
    this.data = data;
  }
}
