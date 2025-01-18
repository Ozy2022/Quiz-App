class QuizeQuestions {
  const QuizeQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}


/* 
  of: would copy the exiting answer data.
  to creaet a new list based on the previous list.

  So now the new list will be the shuffled one 
  and the old list will be untouched because we 
  copied the list and then shuffled the copied 
  list.
      
*/