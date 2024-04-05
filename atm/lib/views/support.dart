// ignore_for_file: prefer_const_constructors
 
import 'package:atm/views/cliente.dart';
import 'package:atm/views/contato.dart';
import 'package:atm/views/empresa.dart';
import 'package:atm/views/servico.dart';
import 'package:flutter/material.dart';
 
class HomeAtm extends StatefulWidget{
  const HomeAtm({super.key});
 
  @override
  State<HomeAtm> createState()=>_HomeAtmState();  
}
 
class _HomeAtmState extends State<HomeAtm>{
  void abrirServico(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Servico()));
  }
    void abrirCliente(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Cliente()));
  }
    void abrirContato(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Contato()));
  }
      void abrirEmpresa(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Empresa()));
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Consultoria ATM"),
        backgroundColor: Color.fromARGB(212, 75, 233, 18),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
         
          children: [
            Image.asset("imagens/logo.png"),
 
            SizedBox(
              height: 34
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             
              children: [
                GestureDetector(child:Image.asset("imagens/menu_servico.png"),),
                SizedBox(
                  height: 34,
                  ),
                GestureDetector(child:Image.asset("imagens/menu_empresa.png"),),
              ],
            ),
 
            SizedBox(
              height: 34
              ),
 
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                GestureDetector(child:Image.asset("imagens/menu_contato.png"),),
                SizedBox(
                  height: 34,
                ),
                GestureDetector(child:Image.asset("imagens/menu_cliente.png"),),
               ],
            )
          ],
        ),
      )
     
    );
  }
}
 
