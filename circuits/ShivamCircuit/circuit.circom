pragma circom 2.0.0;

template ShivamCircuit (){  

   // input signal
      signal input a;
      signal input b;

   // signals from out gates
      signal X;
      signal Y;
   
   // Main output signal
   signal output Q;

   // creating instances of gates
   component and= AND();
   component not = NOT();
   component or  = OR();

   // AND Gate Logic
   and.a <== a;
   and.b <== b;
   X<== and.out;

   // NOT gate Logic
   not.in <== b;
   Y<== not.out;

   // OR gate Logic
   or.a <== X;
   or.b<== Y;
   Q<== or.out;
}

// templates of gates 
template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

component main = ShivamCircuit();