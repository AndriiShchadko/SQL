--Создать таблицу employees

create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees(employee_name)
values 		('Ernest Fuller'),
		('Robert Jones'),
		('Shane Curtis'),
		('Deborah Stone'),
		('Charles Perry'),
		('John Russell'),
		('Clyde Turner'),
		('John Ingram'),
		('Danny Alexander'),
		('Amanda Perry'),
		('Michael Munoz'),
		('Luis Bishop'),
		('Zachary Jones'),
		('Sherry Young'),
		('Vanessa Hall'),
		('Chris Martinez'),
		('Amanda Adams'),
		('Matthew Page'),
		('Lori Matthews'),
		('Melanie Davis'),
		('Cheryl White'),
		('Lillie Hamilton'),
		('Martha Scott'),
		('Eric Pena'),
		('Joseph Baldwin'),
		('Tyler Stone'),
		('Evelyn Johnson'),
		('Corey Graham'),
		('Beverly Warren'),
		('Jerome Nelson'),
		('Joan Spencer'),
		('Michael Richardson'),
		('Glen Rivera'),
		('Scott Brooks'),
		('Jean Wells'),
		('Mary Howell'),
		('Mary Williams'),
		('Katherine Bell'),
		('John Logan'),
		('Jonathan Griffin'),
		('Pedro Dean'),
		('James Martin'),
		('Erica Baker'),
		('Lois Fernandez'),
		('Lydia Williams'),
		('Kathryn Ford'),
		('Kathy Harris'),
		('Cynthia Fuller'),
		('Deborah Jones'),
		('Eleanor Floyd'),
		('Michael Keller'),
		('Kevin Jacobs'),
		('Harold Henderson'),
		('Daniel Sanchez'),
		('Sandra Zimmerman'),
		('Lisa Taylor'),
		('Elizabeth Smith'),
		('Lisa Wilson'),
		('Deborah Tucker'),
		('Thomas Johnson'),
		('John Herrera'),
		('Paul Anderson'),
		('David Lee'),
		('Carole Harris'),
		('Richard Carroll'),
		('Maria Goodwin'),
		('Doris Wilson'),
		('Lori Stewart'),
		('Gabriel Henderson'),
		('Hazel Parks');
		
	select *
	from employees
	
--Создать таблицу salary

	create table salary(
	id serial primary key,
	monthly_salary int not null
	);

insert into salary(monthly_salary)
values  	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
		
	select *
	from salary

--Создать таблицу employee_salary
	
	create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	);
	
insert into employee_salary(employee_id,salary_id)
values  	(3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(11,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
		(33,7),
		(4,15),
		(8,15),
		(13,10),
		(18,15),
		(39,1),
		(17,3),
		(20,4),
		(50,12),
		(65,1),
		(69,8),
		(61,10),
		(37,9),
		(27,7),
		(41,2),
		(70,10),
		(38,5),
		(44,7),
		(55,5),
		(22,1),
		(77,1),
		(80,2),
		(90,3),
		(100,4),
		(110,5),
		(120,6),
		(130,7),
		(140,8),
		(150,9),
		(160,10);
		
	select *
	from employee_salary
	

--Создать таблицу roles

	create table roles(
	id serial primary key,
	role_name int not null unique
	);

--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar (30);
	
insert into roles(role_name)
values  	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		
	select * 
	from roles

--Создать таблицу roles_employee
	
	create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) 
	   references employees (id),
	foreign key (role_id) 
       references roles (id)
 );
	
insert into roles_employee(employee_id,role_id)
values  	(7,2),
		(20,4),
		(36,9),
		(5,13),
		(23,4),
		(11,2),
		(10,9),
		(21,3),
		(34,4),
		(6,7),
		(40,5),
		(39,8),
		(1,20),
		(8,19),
		(35,13),
		(24,6),
		(18,9),
		(27,11),
		(38,4),
		(37,7),
		(28,18),
		(2,2),
		(3,4),
		(4,8),
		(9,9),
		(12,12),
		(13,20),
		(14,20),
		(15,19),
		(16,16),
		(17,1),
		(22,2),
		(19,9),
		(25,5),
		(26,14),
		(29,5),
		(30,4),
		(31,4),
		(32,8),
		(33,9);
		
select *
roles_employee
