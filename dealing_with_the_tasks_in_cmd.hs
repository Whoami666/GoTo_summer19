ДОСТУП К ФП-КУРСУ:
fp-course/
src/Course/*.hs - задания
test/Course/*Test.h
src/Course/Optional.hs
test/Course/OptionalTest.hs

в cmd:
fp-course $ ghci
:l test/Course/OptionalTest.hs
courseTest test_Optional
:r -- reload
courseTest test_List
courseTest test_Functor


goto-fp-project
	src/
	app/
	test/
Stack new ...
	
	