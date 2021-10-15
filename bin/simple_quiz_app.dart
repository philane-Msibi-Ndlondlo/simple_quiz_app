import 'classes/Question.dart';
import 'dart:io';

void main(List<String> arguments) {
  int points = 0;

  List<Question> questions = [
    Question(
        title: 'What language is being used?',
        choices: ['C++', 'Dart', 'Python', 'Java'],
        answer: 2),
    Question(
        title: 'It was created by which company?',
        choices: ['Microsoft', 'Sunny Systems', 'Apple', 'Google'],
        answer: 4),
    Question(
        title: 'Which framework uses Dart for Mobile Development?',
        choices: ['React Native', 'Ionic', 'Flutter', 'Swift'],
        answer: 3),
  ];

  int questionsLength = questions.length;

  print('''********* Simple Quiz App *************''');

  for (int i = 0; i < questionsLength; i++) {
    print(questions[i].title);

    for (int choiceIndex = 0;
        choiceIndex < questions[i].choices.length;
        choiceIndex++) {
      print('${choiceIndex + 1}. ${questions[i].choices[choiceIndex]}');
    }

    String? answerStr = stdin.readLineSync();
    int answer = int.parse(answerStr!);

    if (answer == questions[i].answer) points++;
  }

  print('*** You got $points points');
}
