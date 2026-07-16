namespace Inventory_management_system
{
    class Program
    {
        static void Main(string[] args)
        {
            InventoryManager manager = new InventoryManager();

            // Add Products
            manager.AddProduct(new Product
            {
                ProductId = 101,
                ProductName = "Laptop",
                Quantity = 10,
                Price = 55000
            });

            manager.AddProduct(new Product
            {
                ProductId = 102,
                ProductName = "Mouse",
                Quantity = 50,
                Price = 700
            });

            // Display Products
            manager.DisplayProducts();

            // Update Product
            manager.UpdateProduct(101, 15, 53000);

            // Display Products
            manager.DisplayProducts();

            // Delete Product
            manager.DeleteProduct(102);

            // Display Products
            manager.DisplayProducts();
        }
    }
}