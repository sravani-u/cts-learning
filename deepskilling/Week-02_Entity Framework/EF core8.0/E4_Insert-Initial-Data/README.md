# Lab 4: Populating the Database with Initial Data

## Objective

Seed the retail inventory database with initial categories and products for the application.

## What Was Implemented

- Inserted multiple product categories, including **Electronics** and **Groceries**, using `AddRangeAsync`.
- Added sample products such as **Laptop** and **Rice Bag** to the database.
- Saved all changes asynchronously by calling `SaveChangesAsync`.
- Demonstrated how EF Core can efficiently insert multiple records in a single operation.

## Run the Application

```powershell
dotnet run --project .\Lab04-Insert-Initial-Data.csproj
```
