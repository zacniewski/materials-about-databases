-- SQL Script for Laboratorium 4: Normalizacja – relacje bazodanowe
-- Database: PostgreSQL (compatible with SQLite)

-- 1. Locations Table
CREATE TABLE locations (
    location_id SERIAL PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

-- 2. Departments Table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location_id INTEGER REFERENCES locations(location_id)
);

-- 3. Employees Table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INTEGER REFERENCES departments(department_id)
);

-- 4. Projects Table
CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    budget DECIMAL(15, 2) NOT NULL
);

-- 5. Employee_Projects Table (Many-to-Many Relationship)
CREATE TABLE employee_projects (
    employee_id INTEGER REFERENCES employees(employee_id),
    project_id INTEGER REFERENCES projects(project_id),
    role VARCHAR(50),
    hours_per_week INTEGER CHECK (hours_per_week > 0),
    PRIMARY KEY (employee_id, project_id)
);

-- 6. Unnormalized table for exercises (1NF violation: non-atomic values, etc.)
CREATE TABLE employee_unnormalized (
    id SERIAL PRIMARY KEY,
    emp_data VARCHAR(255), -- Name and surname combined
    dept_info VARCHAR(255), -- Dept name and location combined
    projects_list TEXT, -- Comma separated project names (1NF violation)
    skills TEXT -- Comma separated skills (1NF violation)
);

-- Inserting 20 records into Locations
INSERT INTO locations (city, country) VALUES
('Warszawa', 'Polska'), ('Kraków', 'Polska'), ('Wrocław', 'Polska'), ('Poznań', 'Polska'), ('Gdańsk', 'Polska'),
('Berlin', 'Niemcy'), ('Monachium', 'Niemcy'), ('Paryż', 'Francja'), ('Londyn', 'Wielka Brytania'), ('Madryt', 'Hiszpania'),
('Rzym', 'Włochy'), ('Praga', 'Czechy'), ('Wiedeń', 'Austria'), ('Sztokholm', 'Szwecja'), ('Oslo', 'Norwegia'),
('Amsterdam', 'Holandia'), ('Bruksela', 'Belgia'), ('Lizbona', 'Portugalia'), ('Ateny', 'Grecja'), ('Dublin', 'Irlandia');

-- Inserting 20 records into Departments
INSERT INTO departments (department_name, location_id) VALUES
('HR', 1), ('Finanse', 1), ('IT', 2), ('Marketing', 3), ('Sprzedaż', 4),
('R&D', 5), ('Logistyka', 6), ('Obsługa Klienta', 7), ('Administracja', 8), ('Prawny', 9),
('Produkcja', 10), ('Zakupy', 11), ('Zarząd', 12), ('PR', 13), ('BI', 14),
('Security', 15), ('E-commerce', 16), ('QA', 17), ('Design', 18), ('Training', 19);

-- Inserting 20 records into Employees
INSERT INTO employees (first_name, last_name, email, hire_date, salary, department_id) VALUES
('Jan', 'Kowalski', 'jan.kowalski@firma.pl', '2020-01-15', 5500.00, 3),
('Anna', 'Nowak', 'anna.nowak@firma.pl', '2019-03-20', 6200.00, 2),
('Piotr', 'Zieliński', 'piotr.zielinski@firma.pl', '2021-06-10', 4800.00, 3),
('Maria', 'Wiśniewska', 'maria.wisniewska@firma.pl', '2018-11-05', 7500.00, 13),
('Tomasz', 'Wójcik', 'tomasz.wojcik@firma.pl', '2022-02-14', 5100.00, 4),
('Agnieszka', 'Kowalczyk', 'agnieszka.kowalczyk@firma.pl', '2020-08-30', 5900.00, 1),
('Michał', 'Kamiński', 'michal.kaminski@firma.pl', '2017-05-12', 8200.00, 3),
('Katarzyna', 'Lewandowska', 'katarzyna.lewandowska@firma.pl', '2021-12-01', 4600.00, 8),
('Paweł', 'Dąbrowski', 'pawel.dabrowski@firma.pl', '2019-10-15', 6800.00, 6),
('Małgorzata', 'Kozłowska', 'malgorzata.kozlowska@firma.pl', '2020-04-22', 5400.00, 5),
('Robert', 'Jankowski', 'robert.jankowski@firma.pl', '2022-01-10', 4900.00, 11),
('Marta', 'Mazur', 'marta.mazur@firma.pl', '2018-07-18', 7100.00, 2),
('Andrzej', 'Kwiatkowski', 'andrzej.kwiatkowski@firma.pl', '2021-03-05', 5300.00, 15),
('Magdalena', 'Krawczyk', 'magdalena.krawczyk@firma.pl', '2019-09-12', 6400.00, 17),
('Krzysztof', 'Piotrowski', 'krzysztof.piotrowski@firma.pl', '2020-11-20', 5700.00, 3),
('Joanna', 'Grabowska', 'joanna.grabowska@firma.pl', '2017-02-28', 8500.00, 13),
('Łukasz', 'Zając', 'lukasz.zajac@firma.pl', '2022-05-15', 4700.00, 18),
('Ewa', 'Pawlak', 'ewa.pawlak@firma.pl', '2021-09-01', 5200.00, 4),
('Marcin', 'Michalski', 'marcin.michalski@firma.pl', '2020-02-10', 6000.00, 6),
('Barbara', 'Nowicka', 'barbara.nowicka@firma.pl', '2019-12-15', 6300.00, 7);

-- Inserting 20 records into Projects
INSERT INTO projects (project_name, budget) VALUES
('System ERP', 500000.00), ('Nowa Strona WWW', 50000.00), ('Migracja Chmury', 200000.00), ('Kampania Social Media', 30000.00),
('Aplikacja Mobilna', 150000.00), ('Analiza Rynkowa', 40000.00), ('Optymalizacja Procesów', 100000.00), ('System Bezpieczeństwa', 120000.00),
('Rozbudowa Magazynu', 300000.00), ('Szkolenia Pracownicze', 25000.00), ('Wdrożenie CRM', 180000.00), ('Modernizacja Sieci', 75000.00),
('Nowa Linia Produktowa', 450000.00), ('Program Lojalnościowy', 60000.00), ('Audyt Finansowy', 35000.00), ('Projekt Rebranding', 90000.00),
('Automatyzacja HR', 55000.00), ('Badanie Satysfakcji', 20000.00), ('Portal Klienta', 110000.00), ('Centrum Danych', 500000.00);

-- Inserting 20 records into Employee_Projects
INSERT INTO employee_projects (employee_id, project_id, role, hours_per_week) VALUES
(1, 1, 'Developer', 20), (1, 3, 'Consultant', 10), (2, 11, 'Manager', 15), (3, 1, 'Junior Dev', 40),
(4, 13, 'Director', 5), (5, 4, 'Analyst', 25), (6, 17, 'Coordinator', 30), (7, 1, 'Senior Dev', 35),
(7, 20, 'Architect', 5), (8, 18, 'Researcher', 20), (9, 3, 'DevOps', 25), (10, 6, 'Sales Expert', 15),
(11, 12, 'Technician', 40), (12, 11, 'Accountant', 10), (13, 16, 'Marketing Lead', 20), (14, 2, 'UI Designer', 30),
(15, 8, 'Security Officer', 40), (16, 13, 'Supervisor', 8), (17, 19, 'UX Designer', 35), (18, 4, 'Content Creator', 20);

-- Inserting 20 records into Employee_Unnormalized
INSERT INTO employee_unnormalized (emp_data, dept_info, projects_list, skills) VALUES
('Jan Kowalski', 'IT, Kraków', 'System ERP, Migracja Chmury', 'SQL, Java, Linux'),
('Anna Nowak', 'Finanse, Warszawa', 'Wdrożenie CRM', 'Excel, Księgowość'),
('Piotr Zieliński', 'IT, Kraków', 'System ERP', 'SQL, Python'),
('Maria Wiśniewska', 'Zarząd, Praga', 'Nowa Linia Produktowa', 'Management, Strategy'),
('Tomasz Wójcik', 'Marketing, Wrocław', 'Kampania Social Media, Badanie Satysfakcji', 'Marketing, SEO'),
('Agnieszka Kowalczyk', 'HR, Warszawa', 'Automatyzacja HR', 'Recruitment, HR'),
('Michał Kamiński', 'IT, Kraków', 'System ERP, Centrum Danych', 'C++, Networking'),
('Katarzyna Lewandowska', 'Obsługa Klienta, Monachium', 'Badanie Satysfakcji', 'Communication'),
('Paweł Dąbrowski', 'R&D, Gdańsk', 'Migracja Chmury', 'R, Statistics'),
('Małgorzata Kozłowska', 'Sprzedaż, Poznań', 'Analiza Rynkowa', 'Sales, Negotiation'),
('Robert Jankowski', 'Produkcja, Madryt', 'Modernizacja Sieci', 'Maintenance'),
('Marta Mazur', 'Finanse, Warszawa', 'Wdrożenie CRM', 'Audit, Tax'),
('Andrzej Kwiatkowski', 'BI, Sztokholm', 'Projekt Rebranding', 'PowerBI, SQL'),
('Magdalena Krawczyk', 'E-commerce, Amsterdam', 'Nowa Strona WWW', 'HTML, CSS, JS'),
('Krzysztof Piotrowski', 'IT, Kraków', 'System Bezpieczeństwa', 'Cybersecurity'),
('Joanna Grabowska', 'Zarząd, Praga', 'Nowa Linia Produktowa', 'Leadership'),
('Łukasz Zając', 'QA, Bruksela', 'Portal Klienta', 'Testing, Selenium'),
('Ewa Pawlak', 'Marketing, Wrocław', 'Kampania Social Media', 'Copywriting'),
('Marcin Michalski', 'R&D, Gdańsk', 'Centrum Danych', 'Hardware'),
('Barbara Nowicka', 'Logistyka, Berlin', 'Rozbudowa Magazynu', 'Logistics');
