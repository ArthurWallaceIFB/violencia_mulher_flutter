import 'package:final_arthur_wallace/view/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContatoView extends StatelessWidget {
  final List<ContactItem> contacts = [
    ContactItem(
      title: 'Central de Atendimento à Mulher',
      url: 'tel:180', // Substitua "xxxxxx" pelo número de telefone desejado
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      icon: Icons.perm_contact_calendar,
    ),
    ContactItem(
      title: 'WhatsApp',
      url: 'https://wa.me/5561996565008', // Substitua "xxxxxx" pelo número do WhatsApp desejado
      backgroundColor: Colors.green,
      textColor: Colors.white,
      icon: Icons.message,
    ),
    ContactItem(
      title: 'Polícia Militar',
      url: 'tel:190', // Substitua "xxxxxx" pelo número de telefone desejado
      backgroundColor: Colors.red,
      textColor: Colors.white,
      icon: Icons.local_police,
    ),
    ContactItem(
      title: 'Delegacia da Mulher',
      url: 'tel:32076172', // Substitua "xxxxxx" pelo número de telefone desejado
      backgroundColor: Colors.orange,
      textColor: Colors.white,
      icon: Icons.phone,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.accentColor,
        title: Text('Contato'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Saiba que existem canais confiáveis e úteis para denúncia e acolhimento. Estamos aqui para te ajudar:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              itemCount: contacts.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => launch('${contacts[index].url}'),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: contacts[index].backgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          contacts[index].icon,
                          color: contacts[index].textColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          contacts[index].title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: contacts[index].textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ContactItem {
  final String title;
  final String url;
  final Color backgroundColor;
  final Color textColor;
  final IconData icon;

  ContactItem({
    required this.title,
    required this.url,
    required this.backgroundColor,
    required this.textColor,
    required this.icon,
  });
}
