#!/bin/bash
# TI1009293 Josemar Moura. 2023/04/12
pin=1234
pin_2=0

read -p "Enter Your Name: " name
read -p "Enter PIN code: " pin_2
while [[ $pin_2 != $pin || $spin_2 == null ]]
do
echo "Wrong PIN code! Try again: "
read pin_2
done

echo "Enter amount (in 20 or 200):"
read amount

if ([ $amount == 40 ] && [ $amount == 30 ]) || ([ $amount != 20 ] && [ $amount != 200 ]) ; then
  echo "Please enter Correct Amount (20 or 200)"
#  else echo "Withdrawal successful!"
  exit 1
fi

echo "Customer Name: $name" > q1_output_pincode.txt
echo "PIN Code: $pin" >> q1_output_pincode.txt
echo "Amount: $amount" >> q1_output_pincode.txt
echo "Withdrawal successful" >> q1_output_pincode.txt
