import 'package:flutter/material.dart';
import 'package:open_ai/feature_box.dart';
import 'package:open_ai/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alexa",
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Column(children: [
        Stack(
          children: [
            // virtual Assitant picture
            Center(
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.only(top: 4),
                decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle),
              ),
            ),
            Container(
              height: 123,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/virtualAssistant.png')),
              ),
            ),
          ],
        ),

        // chat Bubble
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
          decoration: BoxDecoration(
            border: Border.all(color: Pallete.borderColor),
            borderRadius:
                BorderRadius.circular(20).copyWith(topLeft: Radius.zero),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Good Morning, what task can I do for you? ',
              style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 25,
                  fontFamily: 'Cera Pro'),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 40.0, top: 10),
          alignment: Alignment.centerLeft,
          child: const Text(
            'Here are a few features ',
            style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontSize: 20),
          ),
        ),
        //  *****   features List
      const   Column(
          children: [
            FeatureBox(
              color: Pallete.firstSuggestionBoxColor,
              headerText: 'ChatGPT',
              descriptionText:
                  'A smarter way to stay organized and informed with chatGPT',
            ),
            FeatureBox(
              color: Pallete.secondSuggestionBoxColor,
              headerText: 'Dall-E',
              descriptionText:
                  'Get inspired and stay creative with your personal assitant powered by Dall E',
            ),
            FeatureBox(
              color: Pallete.thirdSuggestionBoxColor,
              headerText: 'Smart Voice Assistant',
              descriptionText:
                  'Get the best of both worlds with a voice assistant powered by Dall-E and chatGPT',
            ),
          ],
        ),

      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: (){},
      child: Icon(Icons.mic),
      ),
    );
  }
}
// Extension
// Error Lens
