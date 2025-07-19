import 'package:frontend_quiz/models/quiz_question_model.dart';

const htmlQuestions = [
  QuizQuestionModel('Which tag is used to create Ordered List in HTML?', [
    '<ol>',
    '<ul>',
    '<tl>',
    'None of this',
  ]),
  QuizQuestionModel('Which attribute is used to define an image source?', [
    "src",
    "alt",
    "href",
    "link",
  ]),
  QuizQuestionModel('What is the correct way to create an unordered list?', [
    "<ul><li>...</li></ul>",
    "<ol><li>...</li></ol>",
    "<li>...</li>",
    "<list><ul></ul></list>",
  ]),
  QuizQuestionModel('What does the `<strong>` tag do?', [
    "Adds bold emphasis to text",
    "Italicizes text",
    "Underlines text",
    "Creates a hyperlink",
  ]),
  QuizQuestionModel('Which tag is used for creating a table row?', [
    "<tr>",
    "<td>",
    "<th>",
    "<table>",
  ]),
  QuizQuestionModel('Which tag is used to define a paragraph?', [
    "<p>",
    "<para>",
    "<text>",
    "<paragraph>",
  ]),
  QuizQuestionModel('In which part of the HTML metadata is contained?', [
    'head tag',
    'titla tag',
    'html tag',
    'body tag',
  ]),
  QuizQuestionModel('How do we write comments in HTML?', [
    '<!……>',
    '</……/>',
    '</…….>',
    '<……!>',
  ]),
  QuizQuestionModel(
    'In HTML, which attribute is used to create a link that opens in a new window tab?',
    ['target=”_blank”', 'src=”_blank”', 'alt=”_blank”', 'src=”_self”'],
  ),
  QuizQuestionModel(
    'Which HTML tag is used to convert the plain text into italic format?',
    ['<i>', '<b>', '<p>', '<a>'],
  ),
];
