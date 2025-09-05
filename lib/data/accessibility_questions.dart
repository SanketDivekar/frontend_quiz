import 'package:frontend_quiz/models/quiz_question_model.dart';

const accessibilityQuestions = [
  QuizQuestionModel('What does WCAG stand for?', [
    'Web Content Accessibility Guidelines',
    'World Class Accessibility Group',
    'Worldwide Communication Accessibility Guide',
    'Web Coalition for Accessible Guidelines',
  ]),
  QuizQuestionModel('What is the main goal of web accessibility?', [
    'To make websites usable for all, including people with disabilities',
    'To increase website traffic',
    'To make websites look more attractive',
    'To optimize website loading speed',
  ]),
  QuizQuestionModel('What is a screen reader?', [
    'Software that reads text aloud on a webpage',
    'A browser extension for gaming',
    'A tool to block pop-ups',
    'A tool that checks website speed',
  ]),
  QuizQuestionModel(
    'Why are semantic HTML elements important for accessibility?',
    [
      'They provide meaningful structure for assistive technologies',
      'They help with browser compatibility',
      'They look better on mobile',
      'They make sites load faster',
    ],
  ),
  QuizQuestionModel(
    'Which of these HTML elements is best for creating accessible buttons?',
    ['<button>', '<div>', '<span>', '<img>'],
  ),
  QuizQuestionModel('What is ARIA used for in web development?', [
    'To describe roles and properties for assistive technologies',
    'To replace CSS styles',
    'To improve performanceTo debug JavaScript',
    'To debug JavaScript',
  ]),
  QuizQuestionModel(
    'Which of the following ensures better accessibility for users with visual impairments?',
    [
      'Using sufficient color contrast between text and background',
      'Using flashing images',
      'Low color contrast',
      'Removing alt attributes',
    ],
  ),
  QuizQuestionModel('What is a “skip to content” link?', [
    'A shortcut for screen readers to jump past repetitive navigation',
    'A link to jump to external websites',
    'A debugging tool',
    'A link that skips to the footer',
  ]),
  QuizQuestionModel(
    'What is the minimum recommended color contrast ratio for normal text in WCAG 2.1?',
    ['4.5:1', '6:1', '2:1', '4:1'],
  ),
  QuizQuestionModel('What does the “alt” attribute in HTML do?', [
    'Describes the image for screen readers',
    'Adds animation to images',
    'Changes image size',
    'Makes the image clickable',
  ]),
];
