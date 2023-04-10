import 'package:flutter/material.dart';

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
                ReusableCard(cardColor: activeCardColor),
                ReusableCard(cardColor: activeCardColor),
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

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.cardColor});
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
