import 'package:dart_bank/models/account.dart';

void transferService(Account origin, Account destination, double value) {
    if (origin.getBalance() < value) {
    throw Exception('Saldo insuficiente');
  }
  if (value <= 0) {
    throw Exception('Valor inválido');
  }
  if (origin == destination) {
    throw Exception('Conta de origem e destino são iguais');
  }
  
  origin.removeBalance(value);
  destination.addBalance(value);
}
