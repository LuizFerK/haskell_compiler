letrec isprime = \x: Number ->
  \i: Number ->
    if x == 0 then
      false
    else
      if x == 1 then
        false
      else
        if (i * i) > x then
          true
        else
          if (x % i) == 0 then
            false
          else
            (isprime x) (i + 1)
in

let x = 7 in
let i = 2 in

(isprime x) i