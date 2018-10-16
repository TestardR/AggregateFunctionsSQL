SELECT COUNT(*) FROM books;

SELECT COUNT(DISTINCT author_lname) FROM books;

SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

SELECT title, author_lname FROM books GROUP BY author_lname;
-- make super rows

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;

SELECT Min(released_year) FROM books;

SELECT Max(pages) FROM books;

SELECT title, pages FROM books WHERE pages = (SELECT Max(pages) FROM books);

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT author_fname, author_lname, Min(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname, Max(released_year) FROM books GROUP BY author_lname, author_fname;