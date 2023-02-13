import 'package:flutter/material.dart';
import 'package:playground_services/src/modules/search_cep_mvc/controller/search_cep_controller.dart';

class SearchCepView extends StatefulWidget {
  final SearchCepController controller;

  const SearchCepView({super.key, required this.controller});

  @override
  State<SearchCepView> createState() => _SearchCepViewState();
}

class _SearchCepViewState extends State<SearchCepView> {
  SearchCepController get controller => widget.controller;
  final cepController = TextEditingController();
  String address = 'Rua';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Consulta Cep')),
      body: Center(
        child: Column(
          children: [
            TextField(controller: cepController),
            const SizedBox(height: 15),
            TextButton(
                onPressed: ()  {

                  setState(() {
                    controller.getAddress(cepController.text);
                    address = controller.model!.logradouro;
                  });
                  },
                child: const Text('Pesquisar')),
            Text(address),
          ],
        ),
      ),
    );
  }
}
