// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.


//sum=0
//R0 >= 0
//R1 >= 0
//R0*R1 < 32768
//sum = R0 + R1
//R2 = R0 * R1


// Put your code here.
    @R2
    M=0

    //if (R0 < 0)
    @R0
    D=M 
    @END
    D;JEQ   

    //if (R1 < 0)
    @R1  //M=4
    D=M // D=4
    @END
    D;JEQ

    @R0
    D=M
    @R3
    M=D
 
(LOOP)
    @R1
    D=M

    @R2
    M=D+M

    @R3
    M=M-1

    D=M
    @LOOP
    D;JGT
  
(END)
    @END
    0;JMP

    
