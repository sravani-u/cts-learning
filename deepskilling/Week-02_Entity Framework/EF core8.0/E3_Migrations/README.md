# Lab 3: Creating and Applying Database Migrations with EF Core CLI

## Objective

Generate the retail inventory database schema from the Entity Framework Core models using EF Core migration tools.

## What Was Implemented

- Created the initial database migration containing the `Categories`, `Products`, `ProductDetails`, `Tags`, and `ProductTags` tables.
- Demonstrated how Entity Framework Core tracks model changes and translates them into database migrations.
- Included the essential EF Core CLI commands required to generate migrations and update the database schema.

## Run the Commands

```powershell
dotnet tool install --global dotnet-ef
dotnet ef migrations add InitialCreate
dotnet ef database update
```
