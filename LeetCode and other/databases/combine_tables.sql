/*
https://leetcode.com/problems/combine-two-tables/#/description

*/

SELECT Person.FirstName, Person.LastName, Address.City, Address.State FROM Person LEFT OUTER JOIN Address ON Person.PersonId = Address.PersonId;

