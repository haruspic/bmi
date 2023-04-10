import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                ReusableCard(
                  cardColor: activeCardColor,
                  cardChild: IconContent(
                    iconCard: FontAwesomeIcons.mars,
                    textCard: 'male',
                  ),
                ),
                ReusableCard(
                  cardColor: activeCardColor,
                  cardChild: IconContent(
                    iconCard: FontAwesomeIcons.venus,
                    textCard: 'femail',
                  ),
                ),
              ],
            ),
          ),
          const ReusableCard(cardColor: activeCardColor),
          Expanded(
            child: Row(
              children: const [
                ReusableCard(cardColor: activeCardColor),
                ReusableCard(
                  cardColor: activeCardColor,
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  const IconContent(
      {super.key, required this.textCard, required this.iconCard});
  final String textCard;
  final IconData iconCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconCard, size: 80),
        const SizedBox(height: 15),
        Text(
          textCard,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xff8d8e98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.cardColor, this.cardChild});
  final Color cardColor;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
