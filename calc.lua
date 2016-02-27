function calc(a)
  sum = string.find(a, "+")
  sub = string.find(a, "-")
  multi = string.find(a, "*")
  divi = string.find(a, "/")

  res = 0

  if type(sum) == "number" and sum > 1 then
    res = sum
  elseif type(sub) == "number" and sub > 1 then
    res = sub
  elseif type(multi) == "number" and multi > 1 then
    res = multi
  elseif type(divi) == "number" and divi > 1 then
    res = divi
  else
    print("ERROR")
    return(res)
  end

  w = (res-1)
  e = (res+1)

  x = string.sub(a, 1, w)
  y = string.sub(a, e)

  all = 0
  if type(x) == "string" or type(y) == "string" then
    print("ERROR")
  else
      if type(sum) == "number" and sum > 1 then
        all = (x+y)
      elseif type(sub) == "number" and sub > 1 then
        all = (x-y)
      elseif type(multi) == "number" and multi > 1 then
        all = (x*y)
      elseif type(divi) == "number" and divi > 1 then
        all = (x/y)
      else
        print("No way, fucker!")
      end
  end
  print(all)
end


print ("Give:")
a = io.read("*line")
print (calc(a))