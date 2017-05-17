# MLN_Generator
Code for converting a learned First-Order Bayesian Network to a Markov Logic Network.
Under construction.
 
In Factorbase, convert the learned BN into MLN by running `java -jar MLNExporter.jar `. 

Input: 

1. A relational database
2. A learned Bayesian network (using [FactorBase](https://github.com/sfu-cl-lab/FactorBase).

Output: 

1. A .mln file containing Markov Logic Network formulas. 
2. (Optionally): weights for the formulas.

Our conversion method follows the moralization method of [Domingos and Richardson](http://citeseer.ist.psu.edu/viewdoc/summary?doi=10.1.1.6.717); see also the [Alchemy FAQ](http://alchemy.cs.washington.edu/faq/).

