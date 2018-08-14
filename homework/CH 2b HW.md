# T-SQL Chapter 2b HW

1. An attribute that specifies the type of data that an object can hold. Efficiency.
1. Collation is a property of character data that encapsulates language support, sort order, case sensitivity, accent sensitivity , and more.
1. RTRIM(), LTRIM()
1. SELECT schoolname

	FROM college
	
	WHERE schooltype LIKE N'Institute'
	
1. CHARINDEX()
1. SELECT LEFT(presname, CHARINDEX(' ', 'presname'))

1. NOT

	AND

	BETWEEN, IN, LIKE, OR
	
1. ()

	*, /, %
	
	+(POSITIVE), -(NEGATIVE), +(ADDITION), +(CONCATENATION), -(SUBTRACTION)

	=, <, >, <=, =>, <>, !=, !>, !<
	
	= (ASSIGNMENT)

1. The simple CASE form has a single test value or expression while the searched CASE form is more flexible in the sense you can specify predicates.
1. SELECT REPLACE(lastnamefirstname, LEFT(lastnamefirstname, CHARINDEX(' ', lastnamefirstname), '')) + N' ' + LEFT(lastnamefirstname, CHARINDEX(',', lastnamefirstname) - 1) AS firstnamelastname;
1. SELECT REPLACE(firstnamelastname, LEFT(firstnamelastname, CHARINDEX(' ', firstnamelastname), '')) + N', ' + LEFT(firstnamelastname, CHARINDEX(' ', firstnamelastname) - 1) AS lastnamefirstname;