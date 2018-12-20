Module VBFizzBuzz
    # Comment
    Sub Main()
        Dim x As Int32
        Dim y As Int32
        Console.Write("FizzBuzz - Enter an Integer > ")
        x = Console.ReadLine
        y = 1
        While y <= x
            If y Mod 3 = 0 Then
                Console.Write("Fizz")
            End If
            If y Mod 5 = 0 Then
                Console.Write("Buzz")
            End If
            If y Mod 5 <> 0 And y Mod 3 <> 0 Then
                Console.Write(y)
            End If
            y += 1
            Console.WriteLine()
        End While
        Console.ReadKey()
    End Sub

End Module
