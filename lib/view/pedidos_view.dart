import 'package:final_arthur_wallace/view/styles.dart';
import 'package:flutter/material.dart';

class PedidosView extends StatelessWidget {
  final List<FaqItem> faqs = [
    FaqItem(
      question: 'O que é violência doméstica?',
      answer:
          'Violência doméstica é qualquer tipo de agressão física, psicológica, sexual ou patrimonial cometida por um membro da família ou por uma pessoa que possui ou já possuiu um vínculo afetivo com a vítima.',
    ),
    FaqItem(
      question: 'Como posso identificar sinais de violência doméstica?',
      answer:
          'Existem diferentes sinais de violência doméstica, como marcas de agressão física, mudanças bruscas de comportamento, isolamento social, medo constante, entre outros. É importante estar atento(a) a esses sinais e oferecer ajuda à pessoa em situação de violência.',
    ),
    FaqItem(
      question: 'Quais são os tipos de violência doméstica?',
      answer:
          'Os tipos de violência doméstica incluem: violência física, violência psicológica, violência sexual, violência patrimonial e violência moral.',
    ),
    FaqItem(
      question: 'O que devo fazer se eu estiver sofrendo violência doméstica?',
      answer:
          'Se você estiver sofrendo violência doméstica, é importante buscar ajuda. Entre em contato com organizações especializadas, como Delegacia da Mulher, Centro de Referência da Mulher, ou ligue para o número de emergência da sua região.',
    ),
    FaqItem(
      question:
          'Quais são os números de emergência para denunciar violência doméstica?',
      answer:
          'No Brasil, o número de emergência para denunciar violência doméstica é o 180. Esse número está disponível 24 horas por dia, todos os dias da semana, e é gratuito.',
    ),
    FaqItem(
      question: 'O que é o Centro de Referência da Mulher?',
      answer:
          'O Centro de Referência da Mulher é um serviço especializado que oferece apoio e atendimento às mulheres em situação de violência doméstica. Ele fornece orientação jurídica, psicológica e assistência social.',
    ),
    FaqItem(
      question: 'Como posso obter uma medida protetiva?',
      answer:
          'Para obter uma medida protetiva, você pode procurar a Delegacia da Mulher mais próxima. Lá, você receberá orientações sobre como solicitar a medida e quais documentos são necessários.',
    ),
    FaqItem(
      question: 'Quais são os direitos das vítimas de violência doméstica?',
      answer:
          'As vítimas de violência doméstica têm direito à proteção, à assistência jurídica gratuita, à assistência psicológica, ao amparo social, entre outros direitos garantidos pela Lei Maria da Penha.',
    ),
    FaqItem(
      question:
          'Como posso ajudar alguém que está sofrendo violência doméstica?',
      answer:
          'Se você conhece alguém que está sofrendo violência doméstica, é importante oferecer apoio e encorajamento. Converse com a pessoa de maneira empática, ouça suas preocupações e ofereça informações sobre serviços de apoio disponíveis.',
    ),
    FaqItem(
      question: 'O que é o Disque 100?',
      answer:
          'O Disque 100 é um serviço nacional de denúncias de violações de direitos humanos. Ele recebe denúncias de violência doméstica, exploração sexual, trabalho escravo, discriminação, entre outras violações.',
    ),
    FaqItem(
      question: 'O que é o CVV?',
      answer:
          'O CVV (Centro de Valorização da Vida) é uma organização que oferece apoio emocional e prevenção do suicídio. Eles disponibilizam um serviço de atendimento voluntário por telefone, chat e e-mail.',
    ),
    FaqItem(
      question: 'Quais são os sinais de um relacionamento abusivo?',
      answer:
          'Alguns sinais de um relacionamento abusivo incluem: controle excessivo, humilhação, agressão física, ameaças, isolamento social, ciúme doentio, entre outros comportamentos abusivos.',
    ),
    FaqItem(
      question: 'O que é a Lei Maria da Penha?',
      answer:
          'A Lei Maria da Penha é uma legislação brasileira que visa prevenir e combater a violência doméstica e familiar contra a mulher. Ela estabelece medidas de proteção, assistência às vítimas e punição para os agressores.',
    ),
    FaqItem(
      question: 'O que são grupos de apoio?',
      answer:
          'Os grupos de apoio são espaços onde pessoas que passam por situações semelhantes, como violência doméstica, podem compartilhar experiências, receber apoio emocional e trocar informações úteis.',
    ),
    FaqItem(
      question: 'O que é o Núcleo de Atendimento à Mulher?',
      answer:
          'O Núcleo de Atendimento à Mulher é um serviço que oferece atendimento especializado a mulheres em situação de violência doméstica. Eles fornecem acolhimento, orientação e encaminhamento para os serviços necessários.',
    ),
    FaqItem(
      question: 'O que é o Plantão Psicológico?',
      answer:
          'O Plantão Psicológico é um serviço oferecido por profissionais de psicologia que visa prestar atendimento imediato a pessoas que estão passando por crises emocionais, como vítimas de violência doméstica.',
    ),
    FaqItem(
      question: 'O que é uma rede de apoio?',
      answer:
          'Uma rede de apoio é um conjunto de pessoas, organizações e serviços que trabalham juntos para oferecer suporte e proteção a vítimas de violência doméstica. Essa rede pode incluir instituições governamentais, ONGs, abrigos, entre outros.',
    ),
    FaqItem(
      question: 'O que é um abrigo para mulheres?',
      answer:
          'Um abrigo para mulheres é um local seguro onde vítimas de violência doméstica podem se refugiar e receber apoio. Eles oferecem abrigo temporário, assistência jurídica, apoio psicológico e encaminhamento para outros serviços.',
    ),
    FaqItem(
      question: 'O que é o feminicídio?',
      answer:
          'O feminicídio é o assassinato de uma mulher por razões de gênero. É o extremo da violência de gênero e uma forma extrema de violência doméstica. É um crime hediondo e punido severamente pela lei.',
    ),
    FaqItem(
      question:
          'O que é o Programa de Proteção a Vítimas e Testemunhas Ameaçadas?',
      answer:
          'O Programa de Proteção a Vítimas e Testemunhas Ameaçadas (PROVITA) é um programa do governo que oferece proteção e assistência às vítimas de violência e ameaças. Ele oferece medidas de proteção, apoio psicossocial e inclusão social.',
    ),
    // Adicione mais perguntas e respostas aqui
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.accentColor,
          title: Text('Pedidos'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Se você está passando por uma situação de violência doméstica, saiba que você não está sozinha. Aqui estão algumas informações importantes e recursos úteis para ajudá-la a buscar apoio e proteção.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(20.0),
                  itemCount: faqs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FaqItemWidget(
                      question: faqs[index].question,
                      answer: faqs[index].answer,
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

class FaqItem {
  final String question;
  final String answer;

  FaqItem({
    required this.question,
    required this.answer,
  });
}

class FaqItemWidget extends StatefulWidget {
  final String question;
  final String answer;

  const FaqItemWidget({
    required this.question,
    required this.answer,
  });

  @override
  _FaqItemWidgetState createState() => _FaqItemWidgetState();
}

class _FaqItemWidgetState extends State<FaqItemWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ExpansionTile(
        title: Text(
          widget.question,
          style: TextStyle(
            color: AppColors.accentColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              widget.answer,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
        onExpansionChanged: (expanded) {
          setState(() {
            isExpanded = expanded;
          });
        },
      ),
    );
  }
}
