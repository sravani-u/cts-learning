namespace FactoryMethodPatternExample
{
    public class WordDocument : Document
    {
        public void Open()
        {
            Console.WriteLine("Opening Word Document");
        }
    }
}