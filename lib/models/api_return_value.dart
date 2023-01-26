part of 'models.dart';

class ApiReturnValue<T> {
  final T value;
  final String massage;

  ApiReturnValue({this.massage, this.value});
}
