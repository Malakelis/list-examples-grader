
CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point'


# Then, add here code to compile and run, and do any post-processing of the

if [ -f student-submission/ListExamples.java ]; then
  echo "File exists"
  cp *.java grading-area
  mkdir grading-area/lib
  cp lib/*.jar grading-area/lib
  cp student-submission/ListExamples.java grading-area
  #cp list-examples-grader/lib/*.java grading-area
  
  cd grading-area
  javac -cp $CPATH *.java
  java -cp $CPATH org.junit.runner.JUnitCore TestListExamples
  

else
  echo "File does not exist"
fi


echo 'Finished compile'
# tests

