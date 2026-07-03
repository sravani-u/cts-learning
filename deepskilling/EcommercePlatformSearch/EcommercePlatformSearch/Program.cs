namespace EcommercePlatformSearch
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Product[] products =
            {
                new Product(1,"Laptop","Electronics"),
                new Product(2,"Mouse","Electronics"),
                new Product(3,"Phone","Electronics"),
                new Product(4,"Tablet","Electronics")
            };

            Console.WriteLine("LINEAR SEARCH");

            Product result1 =
                SearchOperations.LinearSearch(
                    products,
                    "Phone");

            if (result1 != null)
            {
                Console.WriteLine(
                    $"Found: {result1.ProductName}");
            }

            Array.Sort(
                products,
                (a, b) => a.ProductName.CompareTo(
                    b.ProductName));

            Console.WriteLine();

            Console.WriteLine("BINARY SEARCH");

            Product result2 =
                SearchOperations.BinarySearch(
                    products,
                    "Phone");

            if (result2 != null)
            {
                Console.WriteLine(
                    $"Found: {result2.ProductName}");
            }
        }
    }
}