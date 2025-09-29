#!/bin/bash
echo "++++++++++++ Welcome to your gradebook ++++++++++++++"
while :
do
echo -e "Would you like to add a student? 
1. Yes 2. No  -----> \c"
read OPT
if [ $OPT = 2 ]
then
echo "You elected to exit."
break
fi
if [ $OPT = 1 ]
then 
echo -e "Please enter the name of a student:
-----> \c"
read STUDENT
echo -e "Please enter the appropiate grade (0 - 100) for $STUDENT ---> 
\c"
read GRADE
if [ $GRADE -lt 69 ]
then
echo "Grade for $STUDENT : $GRADE 
Letter Grade: F
* I do not understand
* I need more help
* Work does not meet 2nd grade expectectations
* Work may be be incomplete"
read Fgrade
elif [[ $GRADE -le 76 && $GRADE -ge 70 ]]
then
echo "Grade for $STUDENT : $GRADE 
Letter Grade: D
* I need more help from my teacher.
* I need to practise more at home. 
* Work does not meet 2nd grade expectectations
* I am not ready to move on."
read Dgrade
elif [[ $GRADE -le 84 && $GRADE -ge 77 ]]
then
echo "Grade for $STUDENT : $GRADE
Letter Grade: C
* I know some, but need more support/practice.
* My work isn't as neat and complete.
* I need to ask more questions
* Okay work."
read Cgrade
elif [[ $GRADE -le 93 && $GRADE -ge 85 ]]
then
echo "Grade for $STUDENT : $GRADE
Letter Grade: B
* I mostly understand.
* I need a little more practice.
* My work is mostly neat and complete
* Good Work!"
read Bgrade
elif [[ $GRADE -le 100 && $GRADE -ge 94 ]]
then
echo "Grade for $STUDENT : $GRADE
Letter Grade: A
* I understand.
* I can move on.
* My work is neat and complete.
* Excellent work!"
echo "$STUDENT | $GRADE" >> dynamicgrades.txt
cat dynamicgrades.txt | column -t -s "|" 
fi
fi
echo "*************** Searching... ******************"
while :
do
echo -e "Would you like to perform a search? 1. YES 2. NO 
--->\c"
read SEARCHquestion
if [ $SEARCHquestion = 2 ]
then
echo "Continue"
break
elif [ $SEARCHquestion = 1 ]
then
echo -e "Enter the name to search --> \c"
read SEARCH
echo "Search Results:"
echo "Name | Grade"
grep -i "$SEARCH" dynamicgrades.txt | column -t -s "|"
fi
done
done
