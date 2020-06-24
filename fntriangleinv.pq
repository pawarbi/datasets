(lower as number,  middle as number , upper as number, optional r as number ) as number => 
let
    // Parameters
    x = middle-lower, 
    y = upper-lower,
    z = upper-middle, 
    a = 1,
    b1 = -2*lower,
    b2 = -2*upper,
    t  = (x/y),
    u = Number.Random(), 
    

    // Calculation 
    c1 = Number.Power(lower,2)-(u*x*y),
    c2 = Number.Power(upper,2)-((1-u)*y*z),
    
    // Traingle Inverse 
    t1 = (-1 * b1 
          + Number.Sqrt(Number.Power(b1,2)
          - (4*a*c1)))/ (2*a),
    t2 = (-1 * b2
          - Number.Sqrt(Number.Power(b2,2)
          - (4*a*c2)))/(2*a),
    inv = if u <= t then t1 else t2


 in 
    inv
