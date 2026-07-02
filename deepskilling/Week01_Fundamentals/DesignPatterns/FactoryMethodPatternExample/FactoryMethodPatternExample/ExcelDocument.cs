namespace FactoryMethodPatternExample
{
    public class ExcelDocument : Document
    {
        public void Open()
        {
            Console.WriteLine("Opening Excel Document");
        }
    }
}