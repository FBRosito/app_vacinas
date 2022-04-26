class RegistroModel {
  final int codMedicamento;
  final int codPctMed;
  final int codFarmacoMed;
  final String dataInicio;
  final String modoUso;
  final String dataInclusao;

  const RegistroModel(
      {required this.codMedicamento,
      required this.codPctMed,
      required this.codFarmacoMed,
      required this.dataInicio,
      required this.modoUso,
      required this.dataInclusao});

  Map<String, dynamic> toMap() {
    return {
      'cod_medicacao': codMedicamento,
      'cod_farmaco_med': codFarmacoMed,
      'cod_pct_med': codPctMed,
      'data_inicio_uso': dataInicio,
      'modo_uso': modoUso,
      'data_inclusao': dataInclusao,
    };
  }

  @override
  String toString() {
    return 'Medicamentos{cod_medicacao: $codMedicamento, cod_pct_med: $codPctMed, cod_farmaco_med: $codFarmacoMed, data_inicio_uso: $dataInicio, modo_uso: $modoUso, data_inclusao: $dataInclusao}';
  }
}
