import 'package:frontend_quiz/models/quiz_question_model.dart';

const javascriptQuestion = [
  QuizQuestionModel(
    'Which of the following can be used to call a JavaScript Code Snippet?',
    ['Function', 'Triggering Event', 'Preprocessor', 'RMI'],
  ),
  QuizQuestionModel('What is JavaScript primarily used for?', [
    'Adding interactivity to web pages',
    'Styling web pages',
    'Managing databases',
    'Structuring web content',
  ]),
  QuizQuestionModel(
    'Which of the following is the correct way to write a comment in JavaScript?',
    [
      '/* This is a comment */',
      '<!-- This is a comment -->>',
      '# This is a comment',
      '** This is a comment **',
    ],
  ),
  QuizQuestionModel('How do you declare a variable in JavaScript?', [
    'All of the above',
    'var myVar',
    'let myVar',
    'const myVar',
  ]),
  QuizQuestionModel(
    'Which symbol is used for single-line comments in JavaScript?',
    ['//', '**', '<!--', '#'],
  ),
  QuizQuestionModel('What will the following code return: typeof "hello"?', [
    'string',
    'text',
    'object',
    'word',
  ]),
  QuizQuestionModel(
    'What is the correct syntax to create a function in JavaScript?',
    [
      'function myFunction() {}',
      'function myFunction {}',
      'create function myFunction()',
      'function = myFunction()',
    ],
  ),
  QuizQuestionModel('Which operator is used to assign a value to a variable?', [
    '=',
    '===',
    '==',
    '=>',
  ]),
  QuizQuestionModel('How do you write "Hello World" in an alert box?', [
    'alert("Hello World");',
    'show("Hello World");',
    'alertBox("Hello World");',
    'msg("Hello World");',
  ]),
  QuizQuestionModel(
    'Which method converts a JSON string to a JavaScript object?',
    ['JSON.parse()', 'JSON.convert()', 'JSON.toObject()', 'JSON.stringify()'],
  ),
];
