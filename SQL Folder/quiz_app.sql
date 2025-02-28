-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2025 at 07:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cpp_lang`
--

CREATE TABLE `cpp_lang` (
  `id` int(2) DEFAULT NULL,
  `question` varchar(68) DEFAULT NULL,
  `option1` varchar(24) DEFAULT NULL,
  `option2` varchar(32) DEFAULT NULL,
  `option3` varchar(26) DEFAULT NULL,
  `option4` varchar(17) DEFAULT NULL,
  `answer` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cpp_lang`
--

INSERT INTO `cpp_lang` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Which of the following is a valid C++ keyword?', 'int', 'integer', 'String', 'Boolean', 'int'),
(2, 'Which operator is used for scope resolution in C++?', '::', '.', '->', ':', '::'),
(3, 'What is the output of `cout << 5 / 2;`?', '2', '2.5', '3', 'Compile Error', '2'),
(4, 'Which of the following is not a feature of OOP in C++?', 'Encapsulation', 'Inheritance', 'Polymorphism', 'Compilation', 'Compilation'),
(5, 'Which header file is required for input/output in C++?', '<iostream>', '<stdio.h>', '<stdlib.h>', '<conio.h>', '<iostream>'),
(6, 'What does `new` keyword do in C++?', 'Allocate memory', 'Deallocate memory', 'Both A and B', 'None of the Above', 'Allocate memory'),
(7, 'What is a destructor in C++?', 'Cleans up memory', 'Initializes an object', 'A special type of function', 'None of the Above', 'Cleans up memory'),
(8, 'Which keyword is used to handle exceptions in C++?', 'try', 'catch', 'throw', 'All of the Above', 'All of the Above'),
(9, 'What is the default access specifier in a class?', 'private', 'protected', 'public', 'None', 'private'),
(10, 'What is the output of `sizeof(double)` on most 64-bit systems?', '4', '8', '16', 'Undefined', '8'),
(11, 'What is the extension of a C++ file?', '.c', '.cpp', '.java', '.h', '.cpp'),
(12, 'Which of the following is not a fundamental data type in C++?', 'int', 'float', 'char', 'string', 'string'),
(13, 'What does `this` pointer refer to in C++?', 'Global object', 'Current object', 'Static object', 'None', 'Current object'),
(14, 'Which of the following supports function overloading?', 'C', 'C++', 'Java', 'Python', 'C++'),
(15, 'What is the purpose of `friend` keyword in C++?', 'Restricts access', 'Allows access to private members', 'Overloads operators', 'None', 'Allows access to private members'),
(16, 'Which of the following is used for dynamic method resolution in C++?', 'Virtual functions', 'Static functions', 'Friend functions', 'None', 'Virtual functions'),
(17, 'Which type of polymorphism is supported by C++?', 'Compile time', 'Run time', 'Both', 'None', 'Both'),
(18, 'Which container does C++ STL provide for storing unique keys?', 'Vector', 'Set', 'Map', 'List', 'Set'),
(19, 'Which of the following is a feature of inline functions?', 'Optimized function calls', 'Slower execution', 'Static memory usage', 'None', 'Optimized function calls'),
(20, 'Which of the following is not a standard exception in C++?', 'bad_alloc', 'bad_cast', 'file_not_found', 'out_of_range', 'file_not_found');

-- --------------------------------------------------------

--
-- Table structure for table `css_lang`
--

CREATE TABLE `css_lang` (
  `id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `option1` text DEFAULT NULL,
  `option2` text DEFAULT NULL,
  `option3` text DEFAULT NULL,
  `option4` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `css_lang`
--

INSERT INTO `css_lang` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'What is the use of z-index in CSS?', 'Positioning an element', 'Setting transparency', 'Stacking elements', 'Adjusting box shadow', 'Stacking elements'),
(2, 'What is the default position value in CSS?', 'Relative', 'Absolute', 'Static', 'Fixed', 'Static'),
(3, 'What does flex-grow property do?', 'Specifies the growth factor', 'Specifies the shrinking factor', 'Aligns items horizontally', 'Aligns items vertically', 'Specifies the growth factor'),
(4, 'Which property adds space inside an element?', 'Padding', 'Margin', 'Border', 'Width', 'Padding'),
(5, 'What is the use of z-index in CSS?', 'Positioning an element', 'Setting transparency', 'Stacking elements', 'Adjusting box shadow', 'Stacking elements'),
(6, 'What is the default position value in CSS?', 'Relative', 'Absolute', 'Static', 'Fixed', 'Static'),
(7, 'What does flex-grow property do?', 'Specifies the growth factor', 'Specifies the shrinking factor', 'Aligns items horizontally', 'Aligns items vertically', 'Specifies the growth factor'),
(8, 'Which property adds space inside an element?', 'Padding', 'Margin', 'Border', 'Width', 'Padding'),
(9, 'What is the use of z-index in CSS?', 'Positioning an element', 'Setting transparency', 'Stacking elements', 'Adjusting box shadow', 'Stacking elements'),
(10, 'What is the default position value in CSS?', 'Relative', 'Absolute', 'Static', 'Fixed', 'Static'),
(11, 'What does flex-grow property do?', 'Specifies the growth factor', 'Specifies the shrinking factor', 'Aligns items horizontally', 'Aligns items vertically', 'Specifies the growth factor'),
(12, 'Which property adds space inside an element?', 'Padding', 'Margin', 'Border', 'Width', 'Padding'),
(13, 'What is the use of z-index in CSS?', 'Positioning an element', 'Setting transparency', 'Stacking elements', 'Adjusting box shadow', 'Stacking elements'),
(14, 'What is the default position value in CSS?', 'Relative', 'Absolute', 'Static', 'Fixed', 'Static'),
(15, 'What does flex-grow property do?', 'Specifies the growth factor', 'Specifies the shrinking factor', 'Aligns items horizontally', 'Aligns items vertically', 'Specifies the growth factor'),
(16, 'Which property adds space inside an element?', 'Padding', 'Margin', 'Border', 'Width', 'Padding'),
(17, 'What is the use of z-index in CSS?', 'Positioning an element', 'Setting transparency', 'Stacking elements', 'Adjusting box shadow', 'Stacking elements'),
(18, 'What is the default position value in CSS?', 'Relative', 'Absolute', 'Static', 'Fixed', 'Static'),
(19, 'What does flex-grow property do?', 'Specifies the growth factor', 'Specifies the shrinking factor', 'Aligns items horizontally', 'Aligns items vertically', 'Specifies the growth factor'),
(20, 'Which property adds space inside an element?', 'Padding', 'Margin', 'Border', 'Width', 'Padding');

-- --------------------------------------------------------

--
-- Table structure for table `c_lang`
--

CREATE TABLE `c_lang` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c_lang`
--

INSERT INTO `c_lang` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'What is the output of `printf(\"%d\", 10 + 20);`?', '10', '20', '30', 'Compile Error', '30'),
(2, 'Which of the following is a valid C keyword?', 'int', 'integer', 'String', 'Boolean', 'int'),
(3, 'Which operator is used for logical AND in C?', '&&', '||', '&', '!', '&&'),
(4, 'What is the default value of an uninitialized integer variable in C?', '0', 'Garbage Value', '-1', 'Undefined', 'Garbage Value'),
(5, 'How many bytes does an `int` typically occupy in C on a 32-bit system?', '2', '4', '8', '1', '4'),
(6, 'Which header file is required for `printf` and `scanf`?', '<stdio.h>', '<stdlib.h>', '<conio.h>', '<math.h>', '<stdio.h>'),
(7, 'Which loop is guaranteed to execute at least once?', 'for', 'while', 'do-while', 'foreach', 'do-while'),
(8, 'What is the correct way to declare a pointer in C?', 'int *ptr;', 'int ptr;', 'ptr int*;', 'int &ptr;', 'int *ptr;'),
(9, 'What does `sizeof(char)` return in C?', '1', '2', '4', 'Undefined', '1'),
(10, 'What is the output of `5 / 2` in C (integer division)?', '2.5', '2', '3', 'Compile Error', '2'),
(11, 'What is the correct syntax to declare a constant in C?', 'const int a = 10;', 'int const a = 10;', 'Both A and B', 'None of the Above', 'Both A and B'),
(12, 'How do you access the value pointed to by a pointer in C?', '*ptr', '&ptr', 'ptr*', 'ptr&', '*ptr'),
(13, 'Which function is used to dynamically allocate memory in C?', 'malloc', 'alloc', 'new', 'calloc', 'calloc'),
(14, 'What is the correct format specifier for a `float`?', '%f', '%d', '%c', '%lf', '%f'),
(15, 'Which of these is not a storage class in C?', 'auto', 'register', 'public', 'static', 'public'),
(16, 'What is the output of `printf(\"%c\", \'A\' + 1);`?', 'A', 'B', 'Compile Error', 'Undefined', 'B'),
(17, 'What is the purpose of the `break` statement in loops?', 'Skip the iteration', 'End the loop', 'End the program', 'Continue the loop', 'End the loop'),
(18, 'What does the `continue` statement do?', 'Skip the iteration', 'End the loop', 'End the program', 'Continue the loop', 'Skip the iteration'),
(19, 'Which of the following is a valid declaration of an array in C?', 'int arr[5];', 'int arr[5] = {0};', 'Both A and B', 'None of the Above', 'Both A and B'),
(20, 'Which of these is a valid comment in C?', '/* comment */', '# comment', '// comment', 'Both A and C', 'Both A and C');

-- --------------------------------------------------------

--
-- Table structure for table `datastructure`
--

CREATE TABLE `datastructure` (
  `id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `option1` text DEFAULT NULL,
  `option2` text DEFAULT NULL,
  `option3` text DEFAULT NULL,
  `option4` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `datastructure`
--

INSERT INTO `datastructure` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Which data structure uses LIFO principle?', 'Queue', 'Stack', 'Linked List', 'Binary Tree', 'Stack'),
(2, 'What is a balanced binary tree?', 'A tree with all levels filled', 'A tree with balanced heights', 'A tree with max one child', 'A tree with uniform weights', 'A tree with balanced heights'),
(3, 'What is the time complexity of binary search?', 'O(log n)', 'O(n)', 'O(n^2)', 'O(1)', 'O(log n)'),
(4, 'Which is an example of a non-linear DS?', 'Array', 'Linked List', 'Tree', 'Stack', 'Tree'),
(5, 'Which data structure uses LIFO principle?', 'Queue', 'Stack', 'Linked List', 'Binary Tree', 'Stack'),
(6, 'What is a balanced binary tree?', 'A tree with all levels filled', 'A tree with balanced heights', 'A tree with max one child', 'A tree with uniform weights', 'A tree with balanced heights'),
(7, 'What is the time complexity of binary search?', 'O(log n)', 'O(n)', 'O(n^2)', 'O(1)', 'O(log n)'),
(8, 'Which is an example of a non-linear DS?', 'Array', 'Linked List', 'Tree', 'Stack', 'Tree'),
(9, 'Which data structure uses LIFO principle?', 'Queue', 'Stack', 'Linked List', 'Binary Tree', 'Stack'),
(10, 'What is a balanced binary tree?', 'A tree with all levels filled', 'A tree with balanced heights', 'A tree with max one child', 'A tree with uniform weights', 'A tree with balanced heights'),
(11, 'What is the time complexity of binary search?', 'O(log n)', 'O(n)', 'O(n^2)', 'O(1)', 'O(log n)'),
(12, 'Which is an example of a non-linear DS?', 'Array', 'Linked List', 'Tree', 'Stack', 'Tree'),
(13, 'Which data structure uses LIFO principle?', 'Queue', 'Stack', 'Linked List', 'Binary Tree', 'Stack'),
(14, 'What is a balanced binary tree?', 'A tree with all levels filled', 'A tree with balanced heights', 'A tree with max one child', 'A tree with uniform weights', 'A tree with balanced heights'),
(15, 'What is the time complexity of binary search?', 'O(log n)', 'O(n)', 'O(n^2)', 'O(1)', 'O(log n)'),
(16, 'Which is an example of a non-linear DS?', 'Array', 'Linked List', 'Tree', 'Stack', 'Tree'),
(17, 'Which data structure uses LIFO principle?', 'Queue', 'Stack', 'Linked List', 'Binary Tree', 'Stack'),
(18, 'What is a balanced binary tree?', 'A tree with all levels filled', 'A tree with balanced heights', 'A tree with max one child', 'A tree with uniform weights', 'A tree with balanced heights'),
(19, 'What is the time complexity of binary search?', 'O(log n)', 'O(n)', 'O(n^2)', 'O(1)', 'O(log n)'),
(20, 'Which is an example of a non-linear DS?', 'Array', 'Linked List', 'Tree', 'Stack', 'Tree');

-- --------------------------------------------------------

--
-- Table structure for table `java_lang`
--

CREATE TABLE `java_lang` (
  `id` int(2) DEFAULT NULL,
  `question` varchar(70) DEFAULT NULL,
  `option1` varchar(32) DEFAULT NULL,
  `option2` varchar(19) DEFAULT NULL,
  `option3` varchar(33) DEFAULT NULL,
  `option4` varchar(22) DEFAULT NULL,
  `answer` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `java_lang`
--

INSERT INTO `java_lang` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Which of the following is not a Java feature?', 'Object-oriented', 'Use of pointers', 'Portable', 'Dynamic', 'Use of pointers'),
(2, 'Which data type is used to create a variable that should store text?', 'String', 'char', 'Text', 'word', 'String'),
(3, 'What is the default value of a boolean variable in Java?', 'true', 'false', 'null', '0', 'false'),
(4, 'Which of these is used to define a constant in Java?', 'const', 'final', 'static', '#define', 'final'),
(5, 'Which of the following is used to read input from the user in Java?', 'Scanner', 'BufferReader', 'InputReader', 'UserReader', 'Scanner'),
(6, 'Which of the following is the correct way to declare an array in Java?', 'int[] arr;', 'array<int> arr;', 'int arr[] = new array(10);', 'list<int> arr;', 'int[] arr;'),
(7, 'Which keyword is used to inherit a class in Java?', 'inherits', 'extends', 'implements', 'super', 'extends'),
(8, 'Which method is called when an object is created in Java?', 'start()', 'init()', 'constructor', 'new()', 'constructor'),
(9, 'Which of the following is used for garbage collection in Java?', 'delete', 'free', 'GarbageCollector', 'JVM', 'JVM'),
(10, 'Which of these is not an access specifier in Java?', 'private', 'protected', 'public', 'default', 'default'),
(11, 'Which operator is used to compare two values in Java?', '==', '=', 'equals', '!=', '=='),
(12, 'Which package is imported by default in Java?', 'java.util', 'java.io', 'java.lang', 'java.net', 'java.lang'),
(13, 'Which keyword is used to create an interface in Java?', 'class', 'interface', 'implements', 'extends', 'interface'),
(14, 'Which of the following is used to exit from a loop in Java?', 'exit', 'break', 'continue', 'return', 'break'),
(15, 'Which of these is the correct way to create an object in Java?', 'ClassName obj = new ClassName();', 'ClassName obj();', 'new ClassName obj;', 'create ClassName obj;', 'ClassName obj = new ClassName();'),
(16, 'Which method is used to find the length of a string in Java?', 'length()', 'size()', 'getLength()', 'count()', 'length()'),
(17, 'Which of the following is not a primitive data type in Java?', 'int', 'float', 'boolean', 'String', 'String'),
(18, 'Which exception is thrown when dividing by zero in Java?', 'NullPointerException', 'ArithmeticException', 'IOException', 'ClassNotFoundException', 'ArithmeticException'),
(19, 'Which of the following is true about a constructor in Java?', 'It must have a return type', 'It can be static', 'It has the same name as the class', 'It can return a value', 'It has the same name as the class'),
(20, 'Which keyword is used to prevent method overriding in Java?', 'static', 'final', 'const', 'override', 'final');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'C_Lang'),
(2, 'CPP_Lang'),
(3, 'Java_Lang'),
(4, 'Python_Lang'),
(5, 'Html_Lang'),
(6, 'Css_Lang');

-- --------------------------------------------------------

--
-- Table structure for table `machinelearning_lang`
--

CREATE TABLE `machinelearning_lang` (
  `id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `option1` text DEFAULT NULL,
  `option2` text DEFAULT NULL,
  `option3` text DEFAULT NULL,
  `option4` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `machinelearning_lang`
--

INSERT INTO `machinelearning_lang` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'What is supervised learning?', 'Training with labeled data', 'Training without labels', 'Training with feedback', 'Training with random data', 'Training with labeled data'),
(2, 'What is a common loss function for regression?', 'Mean Squared Error', 'Cross Entropy', 'Hinge Loss', 'KL Divergence', 'Mean Squared Error'),
(3, 'Which algorithm is used for classification?', 'KNN', 'Linear Regression', 'PCA', 'K-means', 'KNN'),
(4, 'What is overfitting?', 'Model fits training data too well', 'Model fails on training data', 'Model is too simple', 'Model is too large', 'Model fits training data too well'),
(5, 'What is supervised learning?', 'Training with labeled data', 'Training without labels', 'Training with feedback', 'Training with random data', 'Training with labeled data'),
(6, 'What is a common loss function for regression?', 'Mean Squared Error', 'Cross Entropy', 'Hinge Loss', 'KL Divergence', 'Mean Squared Error'),
(7, 'Which algorithm is used for classification?', 'KNN', 'Linear Regression', 'PCA', 'K-means', 'KNN'),
(8, 'What is overfitting?', 'Model fits training data too well', 'Model fails on training data', 'Model is too simple', 'Model is too large', 'Model fits training data too well'),
(9, 'What is supervised learning?', 'Training with labeled data', 'Training without labels', 'Training with feedback', 'Training with random data', 'Training with labeled data'),
(10, 'What is a common loss function for regression?', 'Mean Squared Error', 'Cross Entropy', 'Hinge Loss', 'KL Divergence', 'Mean Squared Error'),
(11, 'Which algorithm is used for classification?', 'KNN', 'Linear Regression', 'PCA', 'K-means', 'KNN'),
(12, 'What is overfitting?', 'Model fits training data too well', 'Model fails on training data', 'Model is too simple', 'Model is too large', 'Model fits training data too well'),
(13, 'What is supervised learning?', 'Training with labeled data', 'Training without labels', 'Training with feedback', 'Training with random data', 'Training with labeled data'),
(14, 'What is a common loss function for regression?', 'Mean Squared Error', 'Cross Entropy', 'Hinge Loss', 'KL Divergence', 'Mean Squared Error'),
(15, 'Which algorithm is used for classification?', 'KNN', 'Linear Regression', 'PCA', 'K-means', 'KNN'),
(16, 'What is overfitting?', 'Model fits training data too well', 'Model fails on training data', 'Model is too simple', 'Model is too large', 'Model fits training data too well'),
(17, 'What is supervised learning?', 'Training with labeled data', 'Training without labels', 'Training with feedback', 'Training with random data', 'Training with labeled data'),
(18, 'What is a common loss function for regression?', 'Mean Squared Error', 'Cross Entropy', 'Hinge Loss', 'KL Divergence', 'Mean Squared Error'),
(19, 'Which algorithm is used for classification?', 'KNN', 'Linear Regression', 'PCA', 'K-means', 'KNN'),
(20, 'What is overfitting?', 'Model fits training data too well', 'Model fails on training data', 'Model is too simple', 'Model is too large', 'Model fits training data too well');

-- --------------------------------------------------------

--
-- Table structure for table `python_lang`
--

CREATE TABLE `python_lang` (
  `id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `option1` text DEFAULT NULL,
  `option2` text DEFAULT NULL,
  `option3` text DEFAULT NULL,
  `option4` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `python_lang`
--

INSERT INTO `python_lang` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'What is Python primarily used for?', 'Web Development', 'Data Analysis', 'Machine Learning', 'All of the above', 'All of the above'),
(2, 'What is a correct syntax to output \'Hello World\' in Python?', 'print(\'Hello World\')', 'echo \'Hello World\'', 'console.log(\'Hello World\')', 'printf(\'Hello World\')', 'print(\'Hello World\')'),
(3, 'Which keyword is used to define a function in Python?', 'def', 'func', 'function', 'define', 'def'),
(4, 'What is a tuple in Python?', 'Immutable list', 'Mutable list', 'Data frame', 'Dictionary', 'Immutable list'),
(5, 'What is Python primarily used for?', 'Web Development', 'Data Analysis', 'Machine Learning', 'All of the above', 'All of the above'),
(6, 'What is a correct syntax to output \'Hello World\' in Python?', 'print(\'Hello World\')', 'echo \'Hello World\'', 'console.log(\'Hello World\')', 'printf(\'Hello World\')', 'print(\'Hello World\')'),
(7, 'Which keyword is used to define a function in Python?', 'def', 'func', 'function', 'define', 'def'),
(8, 'What is a tuple in Python?', 'Immutable list', 'Mutable list', 'Data frame', 'Dictionary', 'Immutable list'),
(9, 'What is Python primarily used for?', 'Web Development', 'Data Analysis', 'Machine Learning', 'All of the above', 'All of the above'),
(10, 'What is a correct syntax to output \'Hello World\' in Python?', 'print(\'Hello World\')', 'echo \'Hello World\'', 'console.log(\'Hello World\')', 'printf(\'Hello World\')', 'print(\'Hello World\')'),
(11, 'Which keyword is used to define a function in Python?', 'def', 'func', 'function', 'define', 'def'),
(12, 'What is a tuple in Python?', 'Immutable list', 'Mutable list', 'Data frame', 'Dictionary', 'Immutable list'),
(13, 'What is Python primarily used for?', 'Web Development', 'Data Analysis', 'Machine Learning', 'All of the above', 'All of the above'),
(14, 'What is a correct syntax to output \'Hello World\' in Python?', 'print(\'Hello World\')', 'echo \'Hello World\'', 'console.log(\'Hello World\')', 'printf(\'Hello World\')', 'print(\'Hello World\')'),
(15, 'Which keyword is used to define a function in Python?', 'def', 'func', 'function', 'define', 'def'),
(16, 'What is a tuple in Python?', 'Immutable list', 'Mutable list', 'Data frame', 'Dictionary', 'Immutable list'),
(17, 'What is Python primarily used for?', 'Web Development', 'Data Analysis', 'Machine Learning', 'All of the above', 'All of the above'),
(18, 'What is a correct syntax to output \'Hello World\' in Python?', 'print(\'Hello World\')', 'echo \'Hello World\'', 'console.log(\'Hello World\')', 'printf(\'Hello World\')', 'print(\'Hello World\')'),
(19, 'Which keyword is used to define a function in Python?', 'def', 'func', 'function', 'define', 'def'),
(20, 'What is a tuple in Python?', 'Immutable list', 'Mutable list', 'Data frame', 'Dictionary', 'Immutable list');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_info`
--

CREATE TABLE `quiz_info` (
  `quiz_id` bigint(20) NOT NULL,
  `quiz_name` varchar(255) DEFAULT NULL,
  `quiz_time` int(11) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `quiz_level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_info`
--

INSERT INTO `quiz_info` (`quiz_id`, `quiz_name`, `quiz_time`, `table_name`, `quiz_level`) VALUES
(1, 'C Programming', 12, 'c_lang', 'Beginner'),
(2, 'Java Quiz', 15, 'java_lang', 'Beginner'),
(3, 'CPP Quiz', 20, 'cpp_lang', 'Beginner'),
(4, 'Python Quiz', 15, 'python_lang', 'Beginner'),
(5, 'CSS Quiz', 12, 'css_lang', 'Beginner'),
(6, 'React Quiz', 20, 'react_lang', 'Beginner');

-- --------------------------------------------------------

--
-- Table structure for table `react_lang`
--

CREATE TABLE `react_lang` (
  `id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `option1` text DEFAULT NULL,
  `option2` text DEFAULT NULL,
  `option3` text DEFAULT NULL,
  `option4` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `react_lang`
--

INSERT INTO `react_lang` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'What is a key feature of React?', 'Component-Based Architecture', 'Virtual DOM', 'Two-Way Binding', 'Server-Side Rendering', 'Virtual DOM'),
(2, 'Which method is used to update state?', 'setState', 'updateState', 'modifyState', 'changeState', 'setState'),
(3, 'What is JSX?', 'JavaScript XML', 'JSON Extended Syntax', 'JavaScript Syntax Extender', 'Java-Script Extra Features', 'JavaScript XML'),
(4, 'What does React use to improve performance?', 'Virtual DOM', 'Real DOM', 'Shadow DOM', 'DOM Manipulation Framework', 'Virtual DOM'),
(5, 'What is a key feature of React?', 'Component-Based Architecture', 'Virtual DOM', 'Two-Way Binding', 'Server-Side Rendering', 'Virtual DOM'),
(6, 'Which method is used to update state?', 'setState', 'updateState', 'modifyState', 'changeState', 'setState'),
(7, 'What is JSX?', 'JavaScript XML', 'JSON Extended Syntax', 'JavaScript Syntax Extender', 'Java-Script Extra Features', 'JavaScript XML'),
(8, 'What does React use to improve performance?', 'Virtual DOM', 'Real DOM', 'Shadow DOM', 'DOM Manipulation Framework', 'Virtual DOM'),
(9, 'What is a key feature of React?', 'Component-Based Architecture', 'Virtual DOM', 'Two-Way Binding', 'Server-Side Rendering', 'Virtual DOM'),
(10, 'Which method is used to update state?', 'setState', 'updateState', 'modifyState', 'changeState', 'setState'),
(11, 'What is JSX?', 'JavaScript XML', 'JSON Extended Syntax', 'JavaScript Syntax Extender', 'Java-Script Extra Features', 'JavaScript XML'),
(12, 'What does React use to improve performance?', 'Virtual DOM', 'Real DOM', 'Shadow DOM', 'DOM Manipulation Framework', 'Virtual DOM'),
(13, 'What is a key feature of React?', 'Component-Based Architecture', 'Virtual DOM', 'Two-Way Binding', 'Server-Side Rendering', 'Virtual DOM'),
(14, 'Which method is used to update state?', 'setState', 'updateState', 'modifyState', 'changeState', 'setState'),
(15, 'What is JSX?', 'JavaScript XML', 'JSON Extended Syntax', 'JavaScript Syntax Extender', 'Java-Script Extra Features', 'JavaScript XML'),
(16, 'What does React use to improve performance?', 'Virtual DOM', 'Real DOM', 'Shadow DOM', 'DOM Manipulation Framework', 'Virtual DOM'),
(17, 'What is a key feature of React?', 'Component-Based Architecture', 'Virtual DOM', 'Two-Way Binding', 'Server-Side Rendering', 'Virtual DOM'),
(18, 'Which method is used to update state?', 'setState', 'updateState', 'modifyState', 'changeState', 'setState'),
(19, 'What is JSX?', 'JavaScript XML', 'JSON Extended Syntax', 'JavaScript Syntax Extender', 'Java-Script Extra Features', 'JavaScript XML'),
(20, 'What does React use to improve performance?', 'Virtual DOM', 'Real DOM', 'Shadow DOM', 'DOM Manipulation Framework', 'Virtual DOM');

-- --------------------------------------------------------

--
-- Table structure for table `table_name`
--

CREATE TABLE `table_name` (
  `id` bigint(20) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `quiz_completed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_name`, `user_password`, `quiz_completed`) VALUES
(2, 'shubhambabar551@gmail.com', 'shubham babar', 'Shubham@2002', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `id` bigint(20) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_marks`
--

CREATE TABLE `user_marks` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_name` varchar(255) NOT NULL,
  `quiz_mark` int(11) NOT NULL,
  `quiz_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_marks`
--

INSERT INTO `user_marks` (`id`, `user_id`, `quiz_name`, `quiz_mark`, `quiz_date`) VALUES
(1, 2, 'Java Quiz', 6, '2025-02-26'),
(2, 2, 'C Programming', 16, '2025-02-26'),
(3, 2, 'Java Quiz', 2, '2025-02-28'),
(4, 2, 'Python Quiz', 3, '2025-02-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_lang`
--
ALTER TABLE `c_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_info`
--
ALTER TABLE `quiz_info`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `table_name`
--
ALTER TABLE `table_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_marks`
--
ALTER TABLE `user_marks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_lang`
--
ALTER TABLE `c_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quiz_info`
--
ALTER TABLE `quiz_info`
  MODIFY `quiz_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_name`
--
ALTER TABLE `table_name`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_marks`
--
ALTER TABLE `user_marks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
