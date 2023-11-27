set -e
CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
files='find student-submission/ListExamples.java'
  if [[ -f $files ]] && [[ $files == *ListExamples* ]]
then
    echo "Everything is there"
  else
    echo "Not there"
  fi
echo 'Finished cloning'

cp ~/list-examples-grader/student
# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
