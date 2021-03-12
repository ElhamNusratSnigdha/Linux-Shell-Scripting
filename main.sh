#!/bin/bash

echo "(1)Value printing"
a=5
b="my name"

echo b
#printing value
echo $b

#inline
echo a echo $a




echo "(2)Taking input"
echo "Enter a name:"
#"read" takes input
#"naam" is a variable
read naam
echo "The name of the user is $naam"




echo "(3)Arithmetic calculations"

x=4
y=2
echo $x+$y
z=$x+$y
echo $z

w=$(($x+$y))
echo $w

q=$(($x-$y))
echo $q

e=$(($x/$y))
echo $e

r=$(($x*$y))
echo $r

t=$(($x**$y))
echo $t





echo "(4)if-else condition"

echo "Enter a number: "
read u

echo "Enter another number: "
read i

if [ $u -gt $i ];
  then echo "$u is greater than $i"
elif [ $u -lt $i ];
  then echo "$u is less than $i"
else
  echo "$u and $i are equal"
fi
#"fi" indicates the ending of "if"


echo "(5)Example"
echo "Enter a name:"
read filename

if [ -d $filename ];
  then echo "It is a directory"
elif [ -f $filename ];
  then echo "It is a file"
else 
  echo "Not a ffile or directory"
fi


echo "(6)Switch case"
echo "Enter a name:"
read name

case $name in 
  "Abul") echo "The name is Abul";;
  "Kashem") echo "The name is Kashem";;
  "Elham") echo "Love from Elham";
           echo "Goodnight";;
  *) echo "Something else"
  # * used for everything else
esac
#"esac" ending of case


echo "(7)for-loops: traditional for-loop"
for ((i=0; i<10; i++))
do
  echo $i
done

echo "(8)enhance for-loop, for-loop in python"
my_list=(h j k l)

for i in ${my_list[*]};
do
  echo $i
done


echo "(9)while-loop"
i=0

while [ $i -lt 10 ];
do
  echo -n $i
  i=$(($i+1))
done

echo "(10)until-loop"



echo "(11)Command-line arguments"
echo "Argument number 1: "$1
echo "Argument number 0: "$0
echo "Argument number 4: "$4
echo "Total arguments: " $#
echo "All the arguments: "$*



echo "(12)Functions"

function clock(){
  echo "tic toc, tic toc"
}

clock

#or we can right without "function"
bell(){
  g="ghost"
  echo "ting tong, ting tong"
  echo $g "inside the house" 
}
bell
echo $g "outside the house"

#replaces previous value with same variable 
g="vampire"
echo "Hi" $g

#save value only inside the function
saveInside(){
  local l="saved in function"
  echo $l
}
saveInside
echo $l "saved nowhere"


#function with parameters
adder (){
  echo $(( $1 + $2 ))
}
adder 5 6


#return a value from function

returnMything(){
  borrowed=11
  return $borrowed
}
returnMything
echo $?"$"