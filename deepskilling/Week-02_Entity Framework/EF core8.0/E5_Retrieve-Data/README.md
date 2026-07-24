# Lab 5: Retrieving Data with Entity Framework Core

## Objective

Fetch product information from the retail inventory database using Entity Framework Core's asynchronous query methods.

## What Was Implemented

- Retrieved the complete list of products using `ToListAsync()`.
- Fetched a specific product by its primary key with `FindAsync(1)`.
- Queried for the first product priced above **50,000** using `FirstOrDefaultAsync()`.
- Demonstrated common EF Core techniques for efficiently reading data from a SQL Server database.

## Run the Application

```powershell
dotnet run --project .\Lab05-Retrieve-Data.csproj
```
