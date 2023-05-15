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
    Question("تتجنب المواقف التي تذكر بالخبرة الصادمة؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

  list.add(
    Question("الشعور بالبعد او الانفصال عن الاخرين؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

  list.add(
    Question("فقد القدرة علي الشعور بأي مشاعر أو عدم القدرة على الحصول على الحب من المقربين إليه؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

  list.add(
    Question("شعور مفاجئ بأن التجربة تعاد مرة اخرى (تشعر وكأنك في داخلها)", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

    list.add(
    Question("تتجنب التفكير أو الحديث او المشاعر المرتبطة بالخبرة الصادمة؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("تواجه صعوبة في التركيز", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("تواجه مشكلة في الدخول في النوم او في الاستمرار فيه؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("الشعور بالعصبية او حدوث بعض نوبات الغضب؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("ذكريات متكررة مزعجة أو أفكار أو صور للخبرة الصادمة من الماضي؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("أصبحت مترقبًا جدًا أو في حالة دائمة من الحذر؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("فقدان الاستمتاع بالأشياء التي كنت تستمتع بها في السابق", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("ردود فعل جسمانية (سرعة خفقان القلب، صعوبة في التنفس) عندما تتذكر شيء من الخبرة الصادمة؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("الشعور بأن مستقبلك سوف ينتهي قريبًا؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("أحلام متكررة ومقلقة عن الخبرة الصادمة السابقة؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

     list.add(
    Question("تشعر بالفزع بسهولة وتقفز من مكانك لأي سبب كان؟", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

    list.add(
    Question("تعاني مشكلة في تذكر بعض الأجزاء عن الخبرة الصادمة", [
      Answer("مطلقا", 0),
      Answer("قليلا", 1),
      Answer("أحيانا", 2),
      Answer("الي حد كبير", 3),
      Answer("بصورة شديدة", 4),
    ],
    ));

    

 
  return list;
}