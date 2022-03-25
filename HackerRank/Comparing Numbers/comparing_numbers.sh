#Given two integers, X and Y, identify whether X<Y or X>Y or X=Y .
#
#Exactly one of the following lines: 
#- X is less than Y 
#- X is greater than Y 
#- X is equal to Y


read one
read two

if ((one > two)); then
echo "X is greater than Y";
fi
if ((two > one)); then
echo "X is less than Y";
fi
if ((one == two)); then
echo "X is equal to Y ";
fi

