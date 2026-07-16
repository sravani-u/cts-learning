using System;
using System.Collections.Generic;

namespace Inventory_management_system
{
    public class InventoryManager
    {
        private Dictionary<int, Product> inventory = new Dictionary<int, Product>();

        public void AddProduct(Product product)
        {
            inventory[product.ProductId] = product;
            Console.WriteLine("Product added successfully.");
        }

        public void UpdateProduct(int id, int quantity, double price)
        {
            if (inventory.ContainsKey(id))
            {
                inventory[id].Quantity = quantity;
                inventory[id].Price = price;
                Console.WriteLine("Product updated successfully.");
            }
            else
            {
                Console.WriteLine("Product not found.");
            }
        }

        public void DeleteProduct(int id)
        {
            if (inventory.Remove(id))
            {
                Console.WriteLine("Product deleted successfully.");
            }
            else
            {
                Console.WriteLine("Product not found.");
            }
        }

        public void DisplayProducts()
        {
            Console.WriteLine("\nInventory Details:");

            foreach (var product in inventory.Values)
            {
                Console.WriteLine($"ID: {product.ProductId}, Name: {product.ProductName}, Quantity: {product.Quantity}, Price: {product.Price}");
            }
        }
    }
}