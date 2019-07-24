declare
fun {Ints N Max}
  if N == Max then nil
  else
    {Delay 1000}
    N|{Ints N+1 Max}
  end
end

fun {Sum S Stream}
  case Stream of nil then S
  [] H|T then S|{Sum H+S T} end
end

local X Y in
  thread X = {Ints 0 1000} end
  thread Y = {Sum 0 X} end
  {Browse Y}
end
