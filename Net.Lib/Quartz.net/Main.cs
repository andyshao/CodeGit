using System;
using System.Collections.Generic;

class Program
{
    private static void Main(string[] args)
    {
        TaskConfig.RegisterQuartz();

        Console.WriteLine("Press any key to close the application");
        Console.ReadKey();
    }
}
