import 'dart:convert';

class TkmWalletAcceptedBet {
  final String holderAddressURL64;
  final Map<String, int> coveredBets;

  TkmWalletAcceptedBet({
    required this.holderAddressURL64,
    required this.coveredBets,
  });

  // Metodo per creare un'istanza di TkmWalletAcceptedBet da un JSON
  factory TkmWalletAcceptedBet.fromJson(Map<String, dynamic> json) {
    return TkmWalletAcceptedBet(
      holderAddressURL64: json['holderAddressURL64'],
      coveredBets: Map<String, int>.from(json['coveredBets']),
    );
  }

  // Metodo per convertire un'istanza di TkmWalletAcceptedBet in JSON
  Map<String, dynamic> toJson() {
    return {
      'holderAddressURL64': holderAddressURL64,
      'coveredBets': coveredBets,
    };
  }

  static List<TkmWalletAcceptedBet> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => TkmWalletAcceptedBet.fromJson(json)).toList();
  }
}