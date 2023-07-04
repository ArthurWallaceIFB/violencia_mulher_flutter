import 'package:final_arthur_wallace/view/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardapioView extends StatelessWidget {
  final List<PizzaItem> pizzas = [
    PizzaItem(
      imageUrl: 'assets/pizza_calabresa.jpeg',
      name: 'Pizza de Calabresa',
      institution: 'Central de Atendimento à Mulher',
      price: '18,00',
      phoneNumber: '180',
    ),
    PizzaItem(
      imageUrl: 'assets/pizza_mussarela.jpeg',
      name: 'Pizza de Mussarela',
      institution: 'Delegacia da Mulher',
      price: '19,00',
      phoneNumber: '32076172',
    ),
    PizzaItem(
      imageUrl: 'assets/pizza_portuguesa.jpg',
      name: 'Pizza Portuguesa',
      institution: 'Polícia Civil',
      price: '19,70',
      phoneNumber: '197',
    ),
    PizzaItem(
      imageUrl: 'assets/pizza_margherita.jpg',
      name: 'Pizza de Margherita',
      institution: 'Centro de Valorização da Vida',
      price: '18,80',
      phoneNumber: '188',
    ),
    PizzaItem(
      imageUrl: 'assets/pizza_frango.jpg',
      name: 'Pizza de Frango com Catupiry',
      institution: 'Polícia Militar',
      price: '19,00',
      phoneNumber: '190',
    ),
    PizzaItem(
      imageUrl: 'assets/pizza_queijos.jpg',
      name: 'Pizza de Quatro Queijos',
      institution: 'Centro de acolhimento',
      price: '18,00',
      phoneNumber: '40427770',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.accentColor,
        title: const Text('Cardápio'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: GridView.builder(
          padding: const EdgeInsets.all(15.0),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 0.55,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: pizzas.length,
          itemBuilder: (BuildContext context, int index) {
            return PizzaCard(
              imageUrl: pizzas[index].imageUrl,
              name: pizzas[index].name,
              institution: pizzas[index].institution,
              price: pizzas[index].price,
              phoneNumber: pizzas[index].phoneNumber,
            );
          },
        ),
      ),
    );
  }
}

class PizzaItem {
  final String imageUrl;
  final String name;
  final String institution;
  final String price;
  final String phoneNumber;

  PizzaItem({
    required this.imageUrl,
    required this.name,
    required this.institution,
    required this.price,
    required this.phoneNumber,
  });
}

class PizzaCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String institution;
  final String price;
  final String phoneNumber;

  const PizzaCard({
    required this.imageUrl,
    required this.name,
    required this.institution,
    required this.price,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launch('tel:$phoneNumber'),
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    institution,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'R\$$price',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
