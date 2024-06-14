letrec fun = \x: Number ->
  if x > 9 then
    x
  else
    fun (x + 1)
in

let h = 1 in

fun 1