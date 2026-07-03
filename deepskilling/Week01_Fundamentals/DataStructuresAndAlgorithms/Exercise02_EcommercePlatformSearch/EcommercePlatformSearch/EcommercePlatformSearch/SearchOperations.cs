namespace EcommercePlatformSearch
{
    public class SearchOperations
    {
        public static Product LinearSearch(
            Product[] products,
            string searchName)
        {
            foreach (Product product in products)
            {
                if (product.ProductName.Equals(
                        searchName,
                        StringComparison.OrdinalIgnoreCase))
                {
                    return product;
                }
            }

            return null;
        }

        public static Product BinarySearch(
            Product[] products,
            string searchName)
        {
            int left = 0;
            int right = products.Length - 1;

            while (left <= right)
            {
                int mid = (left + right) / 2;

                int compare =
                    string.Compare(
                        products[mid].ProductName,
                        searchName,
                        true);

                if (compare == 0)
                    return products[mid];

                if (compare < 0)
                    left = mid + 1;
                else
                    right = mid - 1;
            }

            return null;
        }
    }
}