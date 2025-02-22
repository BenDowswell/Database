# Database
repo for scripts to make databases

install docker docker compose
move composefiles to any location, cd into the location and run
sudo docker compose up -d

install pgadmin

recipeDB
Step 1: Create a New Database
Open pgAdmin and connect to your PostgreSQL server.
Right-click on Databases → Create → Database.
Enter a Database Name (e.g., recipe_db).
Click Save.
Step 2: Open the Query Tool
Select your new database (recipe_db) in the left panel.
Click Tools → Query Tool.
Paste the following schema creation script into the query editor.

run recipeDB.sql
optinally run data.sql to insert dummy data