/**
 *
 * Class that define the Question structure
 *
 */

class Question {
  String title;
  List<String> choices;
  int answer;

  Question({required this.title, required this.choices, required this.answer});
}
