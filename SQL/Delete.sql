DELETE FROM Customers
WHERE FirstName = 'Elvis' AND LastName = 'Nilsson';

--Incase I didnt like myself then I could delete myself like this 

--WE NEED TO USE WHERE when deleting something! if we dont then we delete everything.

-- Something to NOTE as I figured that out after some struggle in a previous database. incase I have orders on this name its difficult to just delete this profile or well user because of foreign key constraints violations. SQL will not let you. You have to go and delete the order first or anything connecting it (no relation should exist for a complete delete)
