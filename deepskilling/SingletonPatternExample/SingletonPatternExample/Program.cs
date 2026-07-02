namespace SingletonPatternExample
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Logger logger1 = Logger.GetInstance();
            Logger logger2 = Logger.GetInstance();

            logger1.Log("First message");
            logger2.Log("Second message");

            if (logger1 == logger2)
            {
                Console.WriteLine("Only one Logger instance exists.");
            }
        }
    }
}