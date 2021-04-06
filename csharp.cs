// A Hello World! program in C#.

using System;
using System.Collections.Generic;

namespace HelloWorld
{
    internal class Program
    {
        /// <summary>
        /// Entry Point to Program
        /// </summary>
        /// <param name="args"></param>
        private static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            static IEnumerable<int> GetOddSequenceEnumerator(int end)
            {
                if (end < 0)
                {
                    throw new ArgumentOutOfRangeException(nameof(end), "Must be larger than 0");
                }

                for (var i = 0; i <= end; i++)
                {
                    switch (i % 2)
                    {
                        case 1:
                            yield return i;
                            break;
                        default:
                            yield break;
                    }
                }
            }

            foreach (var i in GetOddSequenceEnumerator(100))
            {
                Console.WriteLine($"{i} is Odd.");
            }

            // Keep the console window open in debug mode.
            Console.WriteLine("Press any key to exit.");
            Console.ReadKey();
        }
    }
}
