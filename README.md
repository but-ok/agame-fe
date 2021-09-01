# A Mining Game

## Initial Setup:

1: Create a database and import the importme.sql file


2: Edit the following files to allow connection to your database/server <br>
```
-\A-Mining-Game\includes\config.php
-\A-Mining-Game\game\client.js
-\A-Mining-Game\game\server.js
```
                                          
3: Create a config.js in \A-Mining-Game\game\node_modules

```
exports.dBHost = 'localhost';
exports.dbUser = 'root';
exports.dbPassword = '';
exports.dbDatabase = 'amg'; 
````

4: Install Node.js and npm

5: Install required Node_Modules, best way to do this is to run the server.js and see what dependencies is missing



*Make sure server.js and node_modules are stored in a non-public folder*

*CREDIT MUST BE GIVEN TO ATLAS, BUCKEY AND LANZA*
