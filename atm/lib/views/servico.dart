import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  const Servico({super.key});

  @override
  State<Servico> createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Serviço")),
            body: Column(
      children: [
        Row(
          children: [
            Image.asset("imagens/detalhe_servico.png"),
            Text("Sobre servico")
          ],
        ),
        
        const Padding(
          padding: EdgeInsets.only(left:10),
          child: Text("Nossos Serviços:"), 
        ),
      ]),
    );
  }
}