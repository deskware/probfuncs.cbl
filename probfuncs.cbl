

      ****************************************
      * Program name: probfuncs.cbl
      * This program provides several examples
      * of probability functions that can
      * be used with the COMPUTE command.
      * 
      * Copyright 2000 Deskware, Inc.
      ****************************************
       1 rand_nbr            PIC .99999.
       1 rand_int            PIC 999.
       1 num_var             PIC -----.99.

       COMPUTE num_var = fact(5).
       DISPLAY `5! (5 factorial = 5 * 4 * 3 * 1) is ` & num_var. 

       COMPUTE num_var = CHOOSE(5,3).
       DISPLAY LINEFEED &`5 choose 3 (the number of unique ways of `&LINEFEED
                        &`selecting 3 objects from 5, where order is not relevant)`
                        & LINEFEED
                        & `is ` & num_var.

       COMPUTE num_var = permutat(5,3).
       DISPLAY LINEFEED & `5 p 3 (the number of unique ways of ` & LINEFEED
                        & `selecting 3 objects from 5, where order is relevant)`
                        & LINEFEED
                        & `is ` & num_var.
 
       COMPUTE rand_nbr = random(0).
       DISPLAY LINEFEED & `A random number between 0 and 1,` & LINEFEED
                        & `with an interval size of 1/32,767 is ` & rand_nbr.
       COMPUTE rand_nbr = random(0).
       DISPLAY LINEFEED & `Another random number between 0 and 1,` & LINEFEED
                        & `with an interval size of 1/32,767 is ` & rand_nbr.
       COMPUTE rand_nbr = random(0).
       DISPLAY LINEFEED & `Another random number between 0 and 1,` & LINEFEED
                        & `with an interval size of 1/32,767 is ` & rand_nbr.
       COMPUTE rand_int = rounded(255 * random(0)).
       DISPLAY LINEFEED & `A random integer between 0 and 255 is ` & rand_int.
       COMPUTE rand_int = rounded(255 * random(0)).
       DISPLAY LINEFEED & `Another random integer between 0 and 255 is ` & rand_int.


