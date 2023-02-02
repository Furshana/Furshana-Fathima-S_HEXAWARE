-- Joins 
-- To display book code,book title and the supplier name from different column by using join
select book_code, book_title, supplier_name from lms_book_details join lms_suppliers_details 
on lms_book_details.supplier_id=lms_suppliers_details.supplier_id;

-- 

select l1.book_code, l1.book_title, l2.supplier_name 
from lms_book_details as l1  join lms_suppliers_details as l2
on l1.supplier_id=l2.supplier_id;

-- Display the book_title and the member_id who has taken from library 
select distinct book_title, member_id from lms_book_details join lms_book_issue 
on lms_book_details.book_code=lms_book_issue.book_code;

-- Display employee name, email and department name 
use [Employee_DB]
select * from employee
select * from department

select first_name+','+last_name as name ,email, name from employee join department 
on department_id = department_id;

-- Display employee name department name and state location 
select e.first_name, d.name as Dept , l.state
from employee as e join department as d on d.id=e.department_id join
location as l on l.id=d.location_id;

-- Display department name and no of employees in each department 
select d.name , count(*) as no_of_employees from employee as e join department as d 
on e.department_id=d.id
group by name;

-- to display supplier name and no of books supplied by each supplier
use [lms_db];
select * from lms_book_details;
select * from lms_suppliers_details;
select * from LMS_MEMBERS;
select * from LMS_BOOK_ISSUE;
select * from lms_fine_details;
select l2.supplier_name, count(book_code) as no_of_books 
from lms_book_details as l1 join lms_suppliers_details as l2 
on l1.supplier_id=l2.supplier_id 
group by l2.supplier_name,l2.supplier_id;

--To display supplier id and no of books supplied by each supplier
select supplier_id , count(book_code) as no_of_books from lms_book_details 
where supplier_id is not NULL
group by supplier_id;

-- Write a query to display the book title, supplier name who has supplied books to library.
select book_title, supplier_name from lms_book_details join lms_suppliers_details
on lms_book_details.supplier_id=lms_suppliers_details.supplier_id;

-- Write a query to display member name and book code for the book he/she taken from the library
select member_name , book_code from LMS_MEMBERS join LMS_BOOK_ISSUE
on LMS_MEMBERS.MEMBER_ID=LMS_BOOK_ISSUE.MEMBER_ID;

-- Write a query to display the book title and date when the book was taken from the library
select book_title, date_issue from LMS_BOOK_DETAILS join LMS_BOOK_ISSUE
on  LMS_BOOK_DETAILS.BOOK_CODE=LMS_BOOK_ISSUE.BOOK_CODE;

-- Write a query to display the member id and the fine amount paid by the member in the library.
select member_id, fine_amount from LMS_BOOK_ISSUE join LMS_FINE_DETAILS
on LMS_BOOK_ISSUE.FINE_RANGE=LMS_FINE_DETAILS.FINE_RANGE;

-- Write a query to display the member name and the date difference between the date return and date returned
select member_name ,datediff(Day, date_return, date_returned) from LMS_MEMBERS join LMS_BOOK_ISSUE
on LMS_MEMBERS.MEMBER_ID=LMS_BOOK_ISSUE.MEMBER_ID;

-- Write a query to display the book title and the member name of member who has taken book from library
select book_title,member_name from lms_book_details as l1 join lms_book_issue as l2 on l1.book_code=l2.book_code join lms_members as l3 on l2.member_id=l3.member_id;
