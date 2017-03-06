## 6th Semester Labs

- **DBMS :** I use *Datagrip* as my primary database visualization software. *Datagrip* lets me run long sql files with multiple queries at once for easy database creation and management. *Mysql Workbench* is a free alternative of *Datagrip*.
	* This folder will contain `.sql` files for queries to get the desired output. I'll be creating a long sql file with all the necessary steps to create everything at once. I don't like small and many query files.
	* I'll document the code properly. As in, I'll add a lot of comments describing what the queries do in layman's terms so that it's easy to understand.
	* There'll be a readme and an output file for each assignment in a proper documented way and outputs of sql commands used. I'll also describe any "necessary" error throughout the process. The README file will contain the assignment and the output will contain the answer submitted/to be submitted.

- **Data Communication and Networking**
	* I'll upload the details and the answers for each assignment in a proper format with documented code and explained algorithms.
	* I might also create open-source linux based applications as I see fit for the said lab, those will be for my own usage and understanding but you may fork and use the programs if you see fit. 

## Some useful information
Assuming most of the people have mysql or mariadb installed in their system, here's how to run a `.sql` script in mysql or mariadb. I'm pretty sure it's similar in other DBMS-s also.
Just execute this command when in mysql or mariadb console
```sql
source <path_to_file>/filename.sql
```
If you are using ORACLE SQL PLUS, use this
```sql
@<path_to_file>/filename.sql
``` 
This will execute (in top-down approach) all the queries you have written inside the `.sql` file in the database you have currently selected to use. You can also create and use databases using this method, but that is not recommended, as there might be some conflicting results.

I have also created a trello board to track our progress throughout the semester.
Link to the board - [6th Sem Classes](https://trello.com/b/wShD4k7R/classes-6th-sem)