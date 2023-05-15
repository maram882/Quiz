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
    Question("أجد المشاريع والمهمات صعبة الإنجاز.", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),

    ],
    ));

  list.add(
    Question("أجد تنظيم نفسي مهمة صعبة.", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

  list.add(
    Question("أجد صعوبة في تذكر مواعيدي", [
     Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

  list.add(
    Question("أؤخر بدء المهام والمشاريع التي تبدأ في التخطيط في فترة الشتاء", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

    list.add(
    Question("أجد الجلوس صعبًا وأرتبك", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

    list.add(
    Question("أشعر أنني مدفوع بأشياء وأشياء أخرى بالحاجة إلى التنقل", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

    list.add(
    Question("أجد صعوبة المواقف الصعبة", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

    list.add(
    Question("أعاني من تشوش في التفكير ، مما يجعل التركيز على شيء واحد أمرًا صعبًا", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

    list.add(
    Question("أنا مندفع عند اتخاذ الإجراءات ولا أفكر في العواقب بشكل سليم", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

    list.add(
    Question("أنا سريع الغضب والانفعال", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

    list.add(
    Question("نشاطي يمكن أن يختلف كبيرة جدًا إلى منخفض جدًا", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));

    list.add(
    Question("أفقد أجزاء من الحديث لأني مشتت", [
      Answer("أبدا", 0),
      Answer("نادراً", 1),
      Answer("أحيانا", 2),
      Answer("تحدث", 3),
      Answer("في اغلب الأحيان ", 4),
    ],
    ));


 
  return list;
}