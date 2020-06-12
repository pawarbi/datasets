// Gaussian Random Number Generator with mean =mean and standard number as sd using Box-Mueller Transform
// Add an index column to the table before invoking this function. 
let
  gaussianrandom = (mean as number, sd as number) as number=> 
(
  sd
       * (
           Number.Sqrt(- 2 * Number.Ln(Number.Random())
          )
       *   Number.Cos(    2.0 * 3.14159265358979323846 
       *   Number.Random()
          )
          )
  + mean
  
  )

in 
  gaussianrandom






