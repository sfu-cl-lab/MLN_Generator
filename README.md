# MLN_Generator
Code for converting a learned First-Order Bayesian Network to a Markov Logic Network.
 


Input: 

+ A relational database
+ A learned Bayesian network (using [FactorBase](https://github.com/sfu-cl-lab/FactorBase)).

Output: 

A .mln file containing 
+ Markov Logic Network formulas. 
+ Weights for the formulas.

## How to Use 

1. First import data into your database and run [FactorBase](https://github.com/sfu-cl-lab/FactorBase). 
2. Set up a configuration file as for running [FactorBase](https://github.com/sfu-cl-lab/FactorBase). If you use MLNExporter after Factorbase, you can just keep the same configuration file.
2. Convert the learned BN into MLN by running `java -jar MLNExporter.jar `. 

Our conversion method follows the moralization method of [Domingos and Richardson](http://citeseer.ist.psu.edu/viewdoc/summary?doi=10.1.1.6.717); see also the [Alchemy FAQ](http://alchemy.cs.washington.edu/faq/).

## Notes and Limitations

Currently we add unit clauses as recommended by Domingos and Richardson at the bottom of the file. (e.g. RA(Student, Prof)). We do not output weights for the unit clauses.

+ If you want an MLN structure with weights assigned to each formula, delete the unit clauses.
+ If you want an MLN structure without weights, leave the unit clauses, and delete the weights.

