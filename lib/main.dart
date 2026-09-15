import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أسئلة التفاضل',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Cairo'),
      home: QuizPage(),
    );
  }
}

class Question {
  final int id;
  final String subject;
  final String chapter;
  final String question;
  final List<String> options;
  final String answer;
  final String explanation;
  final String level;

  Question({
    required this.id,
    required this.subject,
    required this.chapter,
    required this.question,
    required this.options,
    required this.answer,
    required this.explanation,
    required this.level,
  });
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<Question> questions = [
    Question(
      id: 1,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'مشتقة x² = ؟',
      options: ['x', '2x', '3x', 'x²'],
      answer: '2x',
      explanation: 'نزل الأس 2 ونضربه في x ونطرح من الأس 1.',
      level: 'سهل',
    ),
    Question(
      id: 2,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'مشتقة الثابت (مثل د(س) = 5) تساوي:',
      options: ['5', '1', '0', 'س'],
      answer: '0',
      explanation: 'تفصيلياً: مشتقة أي عدد ثابت بالنسبة لـ س تساوي صفراً دائماً.',
      level: 'سهل',
    ),
    Question(
      id: 3,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'إذا كانت د(س) = 3س⁴ ، فإن د\'(س) تساوي:',
      options: ['12س³', '7س³', '12س⁴', '3س³'],
      answer: '12س³',
      explanation: 'نضرب المعامل في الأس (3 × 4 = 12) ونطرح 1 من الأس القديم (4 - 1 = 3).',
      level: 'سهل',
    ),
    Question(
      id: 4,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'مشتقة جا(س) بالنسبة لـ س هي:',
      options: ['-جتا(س)', 'جتا(س)', 'ظا(س)', '-جا(س)'],
      answer: 'جتا(س)',
      explanation: 'قاعدة مباشرة في تفاضل الدوال المثلثية: مشتقة الجيب (جا) هي جيب التمام (جتا).',
      level: 'متوسط',
    ),
    Question(
      id: 5,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'مشتقة جتا(س) بالنسبة لـ س هي:',
      options: ['جا(س)', '-جا(س)', 'ظا(س)', '-جتا(س)'],
      answer: '-جا(س)',
      explanation: 'مشتقة جتا(س) تعطيك دائماً بالسالب: -جا(س).',
      level: 'متوسط',
    ),
    Question(
      id: 6,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'المعدل الزمني لتغير المسافة بالنسبة للزمن يُسمى:',
      options: ['التسارع', 'المساحة', 'السرعة', 'القوة'],
      answer: 'السرعة',
      explanation: 'في التطبيقات الفيزيائية للتفاضل: السرعة ع = د ف / د ن.',
      level: 'سهل',
    ),
    Question(
      id: 7,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'إذا كانت ص = (2س + 1)³ فإن دص/دس تساوي:',
      options: ['3(2س + 1)²', '6(2س + 1)²', '2(2س + 1)²', '6(2س + 1)³'],
      answer: '6(2س + 1)²',
      explanation: 'قاعدة السلسلة: نشتق القوس 3(2س+1)² ونضربه في مشتقة ما داخل القوس (2). النتيجة = 6(2س+1)²',
      level: 'متوسط',
    ),
    Question(
      id: 8,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'ميل مماس المنحنى ص = س² عند النقطة (2 ، 4) يساوي:',
      options: ['2', '4', '8', '0'],
      answer: '4',
      explanation: 'الميل هو المشتقة الأولى: دص/دس = 2س. نعوض س = 2، فتصبح 2(2) = 4.',
      level: 'متوسط',
    ),
    Question(
      id: 9,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'المشتقة الثانية للدالة د(س) = س³ + 5س تتحدد بـ:',
      options: ['3س² + 5', '6س', '6س + 5', '3س'],
      answer: '6س',
      explanation: 'المشتقة الأولى = 3س² + 5. نشتق مرة أخرى للحصول على المشتقة الثانية = 6س.',
      level: 'صعب',
    ),
    Question(
      id: 10,
      subject: 'رياضيات',
      chapter: 'التفاضل',
      question: 'تكون الدالة في حالة نقطة حرجة عندما تكون مشتقتها الأولى تساوي:',
      options: ['واحد', 'صفر (أو غير موجودة)', 'ما لا نهاية', 'سالب واحد'],
      answer: 'صفر (أو غير موجودة)',
      explanation: 'النقط الحرجة أو النقاط العظمى والصغرى نجدها عندما نساوي د\'(س) بالصفر.',
      level: 'صعب',
    ),
  ];

  int currentIndex = 0;
  String? selectedOption;
  bool isAnswered = false;

  void nextQuestion() {
    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
        selectedOption = null;
        isAnswered = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('${currentQuestion.subject} - ${currentQuestion.chapter}'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(label: Text(currentQuestion.level)),
                Text('السؤال ${currentIndex + 1} من ${questions.length}'),
              ],
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  currentQuestion.question,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),
            ...currentQuestion.options.map((option) {
              Color buttonColor = Colors.white;
              if (isAnswered) {
                if (option == currentQuestion.answer) {
                  buttonColor = Colors.green.shade100;
                } else if (option == selectedOption) {
                  buttonColor = Colors.red.shade100;
                }
              }

              return Container(
                margin: EdgeInsets.only(bottom: 10),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: buttonColor,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: isAnswered
                      ? null
                      : () {
                          setState(() {
                            selectedOption = option;
                            isAnswered = true;
                          });
                        },
                  child: Text(option, style: TextStyle(fontSize: 18)),
                ),
              );
            }).toList(),
            if (isAnswered) ...[
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'الشرح: ${currentQuestion.explanation}',
                  style: TextStyle(fontSize: 16, color: Colors.blue.shade900),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: currentIndex < questions.length - 1 ? nextQuestion : null,
                style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15)),
                child: Text(
                  currentIndex < questions.length - 1 ? 'السؤال التالي' : 'انتهى الاختبار',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
