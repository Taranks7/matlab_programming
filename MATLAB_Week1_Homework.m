%% MATLAB Programming 2020-2021 
% Module Lead: Dr Hyojin Park

% Week 1 (28/09/2020): Getting Started with MATLAB 

% Homework
% For some questions, you need to use your arithmetic knowledge and problem-solving skills. 
%% Q1: How many columns does quizScores contain? Guess the answer first, then test in MATLAB.
quizScores = [29; 15; 47]
1


%% Q2:
% 1) Generate a sequence of odd numbers from 1 to 20. For each element, and add 5 and divide by 2.
((1:2:20)+5)/2

% 2) Repeat for a sequence of even numbers.
((0:2:20)+5)/2

%% Q3: Create 1D (row vector as well as column vector), 2D, 3D, 4D arrays with values
% (The size of arrays is up to you.)
% Also, report the size and length of each variable.

% 1) drawn from normal distribution
vec1 = randn(1, 6)
size(vec1)
length(vec1)

mat1 = randn(5,6)

mat2 = randn(3,5,2)
size(mat2)
length(mat2)

mat2 = randn(1000,500,100,7);


% 2) drawn from uniform distribution


% 3) integer values drawn from 1:100

%% Q4: 
% 1) Create a 11 by 11 square matrix containing normally distributed random numbers, 
% then 2) change it to 3 by 4 matrix.
mat1 = randn(11)

mat2 = mat1(1:3, 1:4)
mat2 = mat1(2:4, 5:8)

%% Q5: Search 'magic' (function name) in Help.
% 1) Understand what it is and 2) Make an example.
magic(4)

open magic

% MAGIC(N) is an N-by-N matrix constructed from the integers
% 1 through N^2 with equal row, column, and diagonal sums.
% Produces valid magic squares for all N > 0 except N = 2.

mat3 = magic(3)

sum(mat3(:,3))

mat3_diag = [mat3(1,1) mat3(2,2) mat3(3,3)]
sum(mat3_diag)

a = diag(mat3)
sum(a)
sum(diag(mat3))


%% Q6: Use the colon operator and square brackets to get the following number sequences.
% 1) 1 2 3 4 8 9 10 11 12
[1:4 8:12]

[1:4 8:12]

% 2) -4 0 4 -3 0 3 -2 0 2 -1 0 1
[-4:4:4, -3:3:3, -2:2:2, -1:1:1]

% 3) 0 .3 .6 .9 .6 .3 0 -.3
[0:.3:.9 .6:-.3:.3]

[0:.3:.9 .6:-.3:-.3]

%% Q7: Given attendanceLog = [18; 25; 11; 90; 82], what are the resulting value(s)? 
% Type answers as: [1, 2, 3] for row arrays and [1; 2; 3] for column arrays.
% Guess the answer first, then test in MATLAB.

% 1) newArray = attendanceLog([1, 3])
newArray = [18; 11]

% 2) newArray = attendanceLog(1:3)
newArray = [18; 25; 11]

% 3) Change attendanceLog to a row vector and do 1) and 2).
attendanceLog2 = attendanceLog';
newArray2 = attendanceLog2([1, 3])
newArray2 = attendanceLog2(1:3)

%% Q8: Convert the sequence 
% 1) [-1 0 1] into [10 100 1000]
10.^((-1:1)+2)

10.^([-1:1])+2


% 2) [2 4 6] into [-1 0 1]
(2:2:6)/2-2

([2 4 6]


% 3) 1:9 into [1 1 1 2 2 2 3 3 3]
ceil((1:9)/3)

[1:9]/3


%% Q9: 
% 1) Create a variable (e.g., VisualExp) containing fields of  
% Subject Number(Participation order), Gender(Male/Female), Handedness(L/R), Age, Accuracy(%) of 5 subjects.

VisualExp.subnum = 1
VisualExp.gender = 'F'
VisualExp.hand = 'R'
VisualExp.age = 25
VisualExp.acc = 100

VisualExp(2).subnum = 1
VisualExp(2).gender = 'M'
VisualExp(2).hand = 'R'
VisualExp(2).age = 25
VisualExp(2).acc = 60

VisualExp(3).subnum = 1
VisualExp(3).gender = 'M'
VisualExp(3).hand = 'L'
VisualExp(3).age = 30
VisualExp(3).acc = 80

VisualExp(4).subnum = 1
VisualExp(4).gender = 'F'
VisualExp(4).hand = 'R'
VisualExp(4).age = 35
VisualExp(4).acc = 70

VisualExp(5).subnum = 1
VisualExp(5).gender = 'F'
VisualExp(5).hand = 'R'
VisualExp(5).age = 40
VisualExp(5).acc = 30


% 2) Create two variables for Handedness and Accuracy containing all participants' data from a variable made in 1).
VisualExp_hand = {VisualExp(1:3).hand}
VisualExp_acc = {VisualExp.hand}


%% Q10: 
% 1) a == b is an expression of a is equal to b, then what is an expression for "a is not equal to b" in MATLAB?
a ~= b


% 2) Given a = 5, b = 8, creat a code to return False (0) using the answer in 1)

~(a ~= b)
