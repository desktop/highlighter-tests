program FizzBuzz
       
       print *, "Enter an integer"
       read (*,*) w
       do 1 i = 1, w

       if (mod(i, 15) .eq. 0) then
       print '(a)', 'FizzBuzz'
       goto 1
       end if

       if (mod(i, 3) .eq. 0) then
       print '(a)', 'Fizz'
       goto 1
       end if

       if (mod(i, 5) .eq. 0) then
       print '(a)', 'Buzz'
       goto 1
       end if

       if (i .lt. 10) then
       print '(i1)', i
       goto 1
       end if

       if (i .lt. 100) then
       print '(i2)', i
       goto 1
       end if

       print '(i3)', i

1      continue

       end
