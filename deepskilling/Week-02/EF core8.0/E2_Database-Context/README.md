# Lab 2: Configuring the Database Context for a Retail Inventory System

## Objective

Create the database context for a retail inventory application that stores and manages product and category information in SQL Server.

## What Was Implemented

- Defined the **Category** entity to represent product categories.
- Created the **Product** entity to store product-related information.
- Configured an **AppDbContext** containing `Products` and `Categories` `DbSet` properties.
- Connected the application to SQL Server using the `UseSqlServer` method.
- Added support for overriding the default database connection string through the `RETAIL_INVENTORY_CONNECTION` environment variable.

## Run the Application

```powershell
dotnet run --project .\Lab02-Database-Context.csproj
```
