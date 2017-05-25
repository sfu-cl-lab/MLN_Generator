# MLN_Generator
Code for converting a learned First-Order Bayesian Network to a Markov Logic Network.
 
In Factorbase, convert the learned BN into MLN by running `java -jar MLNExporter.jar `. The configuration file should be set up as for running [FactorBase](https://github.com/sfu-cl-lab/FactorBase).

Input: 

1. A relational database
2. A learned Bayesian network (using [FactorBase](https://github.com/sfu-cl-lab/FactorBase).

Output: 

1. A .mln file containing Markov Logic Network formulas. 
2. Weights for the formulas.

Our conversion method follows the moralization method of [Domingos and Richardson](http://citeseer.ist.psu.edu/viewdoc/summary?doi=10.1.1.6.717); see also the [Alchemy FAQ](http://alchemy.cs.washington.edu/faq/).

Currently we add unit clauses as recommended by Domingos and Richardson at the bottom of the file. (e.g. RA(Student, Prof)). We do not output weights for the unit clauses.

+ If you want an MLN structure with weights assigned to each formula, delete the unit clauses.
+ If you want an MLN structure without weights, leave the unit clauses, and delete the weights.

