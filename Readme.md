### Title:
Polygon ZKevm Assignment - ZK Circuit Implementation

### How to run this program:
        * visit (https://github.com/shivam70066/Polygon-zkEVV-Module-3-Project)
        * Fork and clone this repo.
        * Open the terminal and write command npm i
        * compile the circuit using command npx hardhat circom.
        * It will generate the out folder inside ./circuits/ShivamCircuit which contains the circuit intermediatories.
        * configure your hardhat.config.js to deploy it on a testnet.
        * After configuration, run npx hardhat run scripts/deploy.ts --network <network name>
        * You will get a contract address and a verification status with respect to your input.json.

### Important command: 
       * npm i  => to install all the dependencies of your project.
       * npx hardhat circom  => to compile the circuit
       * npx hardhat run scripts/deploy.ts --network <network name>  => to deploy the verification contract on a testnet

### Template Circom Code:
        pragma circom 2.0.0;
        
        template ShivamCircuit (){  
              //input signal
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

### Author
Shivam Gupta (UID- 22MCA20112) (METACRAFTER USERNAME- shivam311)

