part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

//pay authentication status
class PaymentSuccess extends PaymentState {}

class PaymentError extends PaymentState {
  final dynamic error;

  PaymentError(this.error);
}

//get order status
class PaymentGetOrderIdSuccess extends PaymentState {}

class PaymentGetOrderIdError extends PaymentState {
  final dynamic error;

  PaymentGetOrderIdError(this.error);
}

//PaymentkeyToken status
class PaymentkeyTokenSuccess extends PaymentState {}

class PaymentkeyTokenError extends PaymentState {
  final dynamic error;

  PaymentkeyTokenError(this.error);
}
class PaymentkReferencecodeSuccess extends PaymentState {}

class PaymentReferencecodeError extends PaymentState {
  final dynamic error;

  PaymentReferencecodeError(this.error);
}
