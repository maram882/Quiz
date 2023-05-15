class Question{
final String questionText;
final List<Answer> answerlist;

  Question(this.questionText, this.answerlist);
}

class Answer{
final String answerText;
final int isCorrect;

  Answer(this.answerText, this.isCorrect);
}
List<Question> getquestion(){
  List <Question> list=[];
  //add question and answer here
  list.add(
    Question("الشعور بالغضب أو القلق أو الانفعال الشديد", [
      Answer("ابداً", 0),
      Answer("بعض الأيام", 1),
      Answer("أكثر من نصف الأيام", 2),
      Answer("كل يوم تقريباً", 3),
    ],
    ));

  list.add(
    Question("عدم القدرة على إنهاء القلق أو التحكم فيه", [
      Answer("ابداً", 0),
      Answer("بعض الأيام", 1),
      Answer("أكثر من نصف الأيام", 2),
      Answer("كل يوم تقريباً", 3),
    ],
    ));

  list.add(
    Question("القلق المفرط حول كل شيء", [
      Answer("ابداً", 0),
      Answer("بعض الأيام", 1),
      Answer("أكثر من نصف الأيام", 2),
      Answer("كل يوم تقريباً", 3),
    ],
    ));

  list.add(
    Question("الصعوبة في الاسترخاء", [
      Answer("ابداً", 0),
      Answer("بعض الأيام", 1),
      Answer("أكثر من نصف الأيام", 2),
      Answer("كل يوم تقريباً", 3),
    ],
    ));

    list.add(
    Question("شدة الاضطراب لدرجة صعوبة البقاء في هدوء", [
      Answer("ابداً", 0),
      Answer("بعض الأيام", 1),
      Answer("أكثر من نصف الأيام", 2),
      Answer("كل يوم تقريباً", 3),
    ],
    ));

    list.add(
    Question("السرعة في الانزعاج أو الانفعال", [
      Answer("ابداً", 0),
      Answer("بعض الأيام", 1),
      Answer("أكثر من نصف الأيام", 2),
      Answer("كل يوم تقريباً", 3),
    ],
    ));

    list.add(
    Question("الشعور بالخوف كما لو أن شيئا فظيعاً قد يـحدث", [
      Answer("ابداً", 0),
      Answer("بعض الأيام", 1),
      Answer("أكثر من نصف الأيام", 2),
      Answer("كل يوم تقريباً", 3),
    ],
    ));

 
  return list;
}