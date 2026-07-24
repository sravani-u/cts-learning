namespace FactoryMethodPatternExample
{
    public class PdfDocument : Document
    {
        public void Open()
        {
            Console.WriteLine("Opening PDF Document");
        }
    }
}