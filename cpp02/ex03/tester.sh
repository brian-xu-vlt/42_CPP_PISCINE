#! /bin/bash

testBashBc(){
	echo "$1" | bc &>/tmp/bc
	tail --lines=1 /tmp/bc
}

TEST="10 * 12" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10 * 12 + 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10 _ 12" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10 + 12" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10 - 12" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 12" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 +1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 +10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 11" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 20" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 20.42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 20.42 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 42 42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="+ 42 42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 42 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 -" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42 2  " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42 2  ---" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 20.42 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 20.42 * 2 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 - 20.42 * 2 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 - 1 / 4 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 - 1 / 4 * 2 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42 **" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42 *" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 ++ 42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 +- 42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 4 - 5 + 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 4 - 5 + 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 4 - 5 + 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 - 1 / 4 * 2 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 - 1 / 4 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 - ( 1 / 4 * 2 )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 - 1 / 4 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 * 1 / 4 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 - 1 / 4 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 * 1 / 4 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10.42 + 2 * 1 / 4 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 + 2 * 1 / 4 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 + 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 / 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 + 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 / 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 / 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 / 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * * / 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 / 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 / 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4 +" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * =4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 *- 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1*2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1*2*3*4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="-1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4*" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4 *" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4! " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 *! 3 * 4 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 * 4 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 2 * 3 + 10 + 3 * 4 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 i* 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 * 2 + 1 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 1 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 1 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1000 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="100000 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10*10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10 * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 - 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 100 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 2 * 10 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10 + 4 / 8" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10 + 1 / 3" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 + 1 * 10 + 1 / 3" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1000 / 3" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1000 * 10 * 10000" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1000 / 3" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="0 + 0" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10 / 0" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="42 + 42 - 4 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="100 / 0" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10 / 0" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10 / 2 * 0" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 - 5 * 2 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 / 2 - 5 * 2 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 / 2 - 5 * 2 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 / 2 - 5 * 2 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 / 2 - 5 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 / 2 - 5 * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 " ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 - 12" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2 - 12" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * 14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * 14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * 14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + -23.8 - 1 / 3 * 14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * *14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * *14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / e3 * *14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * *14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * w14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * 14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 *14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * w14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * 14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 *14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * 14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 *14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 * 14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 *14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3*14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3 *14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3*14" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 - 1 / 3*10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 / 3*10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="24.5 + 23.8 / 3 * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="3 * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8  * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 -1000 * 3.33" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 * 3.33" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 * 3..33" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 * 3.33" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1*1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1*1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 *1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="1 * 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 -1000 * 3.33" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 * 3.33" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 *3.33" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 *3.33" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 *3.33-" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 *3.33 -" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 *3.33-" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="23.8 / 3 * 10 - 1000 *3.33/" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + ( 2 + 1 )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + ( 2 + 1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + ( 2 + 1 )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + ( 2 + 1 )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 (+ ( 2 + 1 ))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 + ( 2 + 1 )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 * ( 10 - 1 )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 * ( 10 - ( 1 - 1) )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 * ( 10 - ( (1 - 1) )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 * ( 10 - (1 - 1) )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2*(10-(1-1))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2 * ( 10 - (1 - 1) )" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2*(10-(1-1))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2*(10.42-(1-1))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="( 18.18 + 3.03 ) * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="( 18 + 3 ) * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="( 18.18 + 3.03 ) * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="( 18.18 + 3.03 ) * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2*(10-(1-1))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="( 18.18 + 3.03 ) * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="( 18.18 + 3.03 ) * 2" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2*(10.42-(1-1))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="2*(10.42-(1-1+12+(14*4.435)))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="+14-2*(10.42-(1-1+12+(14*4.435)))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10.42-(1-1+12+(14*4.435)))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10.42-(1-1+12+(14*4.435))*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10.42-(1-1+12+(14*4.435))/0)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10.42-(1-1+12+(14*4.435))*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10.42-(1-1+12+(14*4.435)/0)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10.42-(1-1+12+(14*4.435)+0)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10.42-(1-1+12+(14*4.435)+10)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10..42-(1-1+12+(14*4.435)+10)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10.42--(1-1+12+(14*4.435)+10)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10..42-(1-1+12+(14*4.435)+10)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10,42-(1-1+12+(14*4.435)+10)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10..42-(1-1+12+(14*4.435)+10)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10...42-(1-1+12+(14*4.435)+10)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*((10.42-(1-1+12+(14*4.435)+10)*4))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*(10.42-(1-1+12+(14*4.435)+10)*4)" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*((10.42-(1-1+12+(14*4.435)+10)*4))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10+(12)-1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="14-2*((10.42-(1-1+12+(14*4.435)+10)*4))" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10+()-1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10+(10)-1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
TEST="10-(10)-1" ; echo ; echo "Test is : $TEST"; ./eval_expr "$TEST" ; testBashBc "$TEST"
