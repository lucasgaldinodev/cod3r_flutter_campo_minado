import 'package:campo_minado/components/tabuleiro_widget.dart';
import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter/material.dart';
import 'package:campo_minado/components/resultado_widget.dart';
import '../models/campo.dart';

class CampoMinadoApp extends StatelessWidget {
  const CampoMinadoApp({super.key});

  void _reiniciar() {
    print('reiniciar...');
  }

  void _abrir(Campo campo) {
    print('abrir...');
  }

  void _alternarMarcacao(Campo campo) {
    print('alternar marcação...');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: false,
          onReiniciar: _reiniciar,
        ),
        body: TabuleiroWidget(
          tabuleiro: Tabuleiro(
            linhas: 15,
            colunas: 15,
            qtdeBombas: 10,
          ),
          onAbrir: _abrir,
          onAlternarMarcacao: _alternarMarcacao,
        ),
      ),
    );
  }
}
