import 'package:flutter/material.dart';
import 'package:somatorio_app/controllers/somatorioMultiplos.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Somatório - Desafio 1'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Digite um número e eu irei calcular a soma de todos os números menores que o seu, que forem divisíveis por 3 e por 5',
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Digite o número',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String inputText = _controller.text;
                  if (inputText.isNotEmpty) {
                    int numero = int.parse(inputText);
                    String resultado = somatorioMultiplos(numero);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Resultado'),
                          content: Text(resultado),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Fechar'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
