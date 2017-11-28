// Test Comment

CREATE CONSTRAINT ON (p:Person)
ASSERT p.name IS UNIQUE

DROP CONSTRAINT ON ()-[k:KNOWS]-()
     ASSERT exists(k.startDate)

MATCH (p1:Person)-[k:KNOWS]->(p2:Person)
WHERE p1.name  =~ 'n$'
RETURN toUpper(p2.Name)

MATCH (person)-[*1..3]-(friend)
WHERE person.name = 'Steven'
  AND person.age >= 18
RETURN DISTINCT friend
UNION
MATCH (person)-[k:KNOWS]-(friend)
WHERE person.name = 'Steven'
WITH person, count(friend) AS friendCount
WHERE friendCount > 10 OR friendCount = 0
ORDER BY friendCount DESC
  SKIP 1
  LIMIT 3
RETURN person

size((p1:Person)-->()-->(p2:Person))

MATCH (p:Person)
CASE
 WHEN p.age < 18 THEN 'MINOR'
 WHEN n.age >= 65 THEN 'SENIOR'
 ELSE 'ADULT'
END

USING PERIODIC COMMIT 50
LOAD CSV WITH HEADERS FROM
'https://www.fakeURL.com/fake-file.csv' AS csvPerson
CREATE (:Person {name: csvPerson.Name, age: toInteger(csvPerson.Age)})

UNWIND $names AS name
MATCH (n {name: name})
RETURN avg(n.age)