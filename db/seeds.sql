USE employees;

INSERT INTO
    department (name)  _-- Corrected column name_

VALUES
    ('Engineering'),
    ('Finance'),
    ('Legal'),
    ('Sales');

INSERT INTO
    role (title, salary, department_id)
VALUES
    ('Sales Lead', _100000_, _4_),
    ('Salesperson', _80000_, _4_),
    ('Lead Engineer', _150000_, _1_),
    ('Software Engineer', _120000_, _1_),
    ('Account Manager', _160000_, _2_),
    ('Accountant', _125000_, _2_),
    ('Legal Team Lead', _250000_, _3_),
    ('Lawyer', _190000_, _3_);
    
INSERT INTO
    employee (
        first_name,
        last_name,
        role_id,
        manager_id
    )
VALUES
    ('Rachel', 'Green', _1_, null),
    ('Gunther', 'Centralperk', _2_, _1_),
    ('Ross', 'Geller', _3_, null),
    ('Joey', 'Tribbiani', _4_, _3_),
    ('Chandler', 'Bing', _5_, null),
    ('Monica', 'Geller', _6_, _5_),
    ('Phoebe', 'Buffay', _7_, null),
    ('Mike', 'Hannigan', _8_, _7_);