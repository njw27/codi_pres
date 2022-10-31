DROP TABLE IF EXISTS customers;

DROP TABLE IF EXISTS long_term_plans;

DROP TABLE IF EXISTS short_term_bookings;

DROP TABLE IF EXISTS add_ons;

CREATE TABLE customers (id INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE long_term_plans (
    id INTEGER PRIMARY KEY,
    contract_signed_date DATE,
    start_date DATE,
    amount_monthly FLOAT,
    term_length_months INTEGER,
    payment_interval_months INTEGER,
    renews_automatically BOOLEAN,
    customer_id INTEGER
);

CREATE TABLE short_term_bookings (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    start_date DATE,
    end_date DATE,
    amount FLOAT
);

CREATE TABLE add_ons (
    id INTEGER PRIMARY KEY,
    referenceable_id INTEGER,
    referenceable_type TEXT,
    amount FLOAT,
    start_date DATE,
    recurring BOOLEAN,
    description TEXT
);

INSERT INTO
    customers (id, name)
VALUES
    (1, 'Crypto Factory'),
    (2, 'AirBase'),
    (3, 'SearchNet'),
    (4, 'Sky Force'),
    (5, 'Fly Well'),
    (6, 'Panda Health'),
    (7, 'Camp Zen'),
    (8, 'Zero Base'),
    (9, 'Illumino'),
    (10, 'Desk Panda'),
    (11, 'Boxly'),
    (12, 'Loop Hero'),
    (13, 'Sport Smart'),
    (14, 'Bevvy'),
    (15, 'BetterGreen'),
    (16, 'Yogio'),
    (17, 'Spotlight VC'),
    (18, 'YoSnap'),
    (19, 'Bit Finder'),
    (20, 'Dog Chat'),
    (21, 'Snap Health'),
    (22, 'GloGlo');

INSERT INTO
    long_term_plans (
        id,
        contract_signed_date,
        start_date,
        amount_monthly,
        term_length_months,
        payment_interval_months,
        renews_automatically,
        customer_id
    )
VALUES
    (
        1,
        '2022-01-05',
        '2022-01-10',
        5000,
        12,
        3,
        true,
        1
    ),
    (
        2,
        '2022-01-26',
        '2022-02-01',
        8200,
        6,
        1,
        true,
        2
    ),
    (
        3,
        '2022-03-15',
        '2022-03-15',
        3600,
        5,
        1,
        false,
        3
    ),
    (
        4,
        '2022-01-01',
        '2022-01-06',
        10000,
        24,
        6,
        true,
        4
    ),
    (
        5,
        '2022-03-08',
        '2022-03-10',
        7500,
        3,
        1,
        false,
        5
    ),
    (
        6,
        '2022-04-24',
        '2022-04-27',
        8000,
        6,
        1,
        true,
        5
    ),
    (
        7,
        '2022-02-24',
        '2022-03-01',
        6000,
        12,
        3,
        true,
        6
    ),
    (
        8,
        '2022-01-19',
        '2022-01-20',
        15000,
        6,
        2,
        true,
        7
    ),
    (
        9,
        '2022-01-21',
        '2022-01-25',
        9200,
        24,
        1,
        true,
        8
    ),
    (
        10,
        '2022-01-23',
        '2022-01-26',
        10000,
        12,
        3,
        true,
        9
    ),
    (
        11,
        '2022-05-06',
        '2022-05-08',
        14000,
        12,
        3,
        true,
        10
    ),
    (
        12,
        '2022-01-16',
        '2022-01-18',
        15000,
        1,
        1,
        true,
        11
    ),
    (
        13,
        '2022-09-20',
        '2022-09-23',
        4000,
        6,
        3,
        false,
        3
    ),
    (
        14,
        '2023-04-03',
        '2023-04-03',
        6000,
        6,
        3,
        false,
        3
    ),
    (
        15,
        '2022-01-04',
        '2022-01-05',
        11430,
        2,
        1,
        false,
        13
    ),
    (
        16,
        '2022-04-01',
        '2022-04-01',
        32000,
        12,
        3,
        true,
        16
    ),
    (
        17,
        '2022-08-20',
        '2022-08-24',
        11500,
        6,
        1,
        false,
        17
    ),
    (
        18,
        '2022-07-30',
        '2022-08-01',
        14700,
        12,
        3,
        true,
        18
    ),
    (
        19,
        '2022-02-05',
        '2022-02-06',
        23000,
        3,
        1,
        false,
        19
    ),
    (
        20,
        '2022-02-28',
        '2022-02-28',
        35000,
        6,
        1,
        false,
        20
    ),
    (
        21,
        '2022-03-12',
        '2022-03-12',
        22000,
        3,
        3,
        true,
        22
    );

INSERT INTO
    short_term_bookings (
        id,
        customer_id,
        start_date,
        end_date,
        amount
    )
VALUES
    (1, 11, '2022-03-05', '2022-03-05', 2000),
    (2, 12, '2022-04-01', '2022-04-02', 4200),
    (3, 12, '2022-04-26', '2022-04-26', 1200),
    (4, 13, '2022-05-01', '2022-05-01', 2000),
    (5, 15, '2022-05-11', '2022-05-13', 5400),
    (6, 14, '2022-06-10', '2022-06-10', 1800),
    (7, 11, '2022-06-20', '2022-06-23', 6300),
    (8, 12, '2022-07-12', '2022-07-12', 1500),
    (9, 13, '2022-07-20', '2022-07-22', 5900),
    (10, 14, '2022-07-31', '2022-08-01', 3600),
    (11, 12, '2022-08-15', '2022-08-15', 1800),
    (12, 13, '2022-08-30', '2022-09-02', 8000),
    (13, 11, '2022-09-17', '2022-09-17', 2200),
    (14, 6, '2022-02-16', '2022-02-16', 3356),
    (15, 11, '2022-10-31', '2022-11-01', 4500),
    (16, 21, '2022-03-05', '2022-03-05', 6700),
    (17, 21, '2022-06-07', '2022-06-07', 6700),
    (18, 21, '2022-10-08', '2022-10-08', 6700);

INSERT INTO
    add_ons (
        id,
        referenceable_id,
        referenceable_type,
        amount,
        start_date,
        recurring,
        description
    )
VALUES
    (
        1,
        1,
        'long_term_plan',
        1000,
        '2022-01-10',
        true,
        'couch'
    ),
    (
        2,
        2,
        'long_term_plan',
        3600,
        '2022-03-01',
        true,
        'furniture rental'
    ),
    (
        3,
        4,
        'long_term_plan',
        3000,
        '2022-01-06',
        true,
        'Additional Furniture (per addendum)'
    ),
    (
        4,
        6,
        'long_term_plan',
        24000,
        '2022-04-27',
        false,
        'bathroom installation'
    ),
    (
        5,
        6,
        'long_term_plan',
        8400,
        '2022-04-27',
        true,
        'catering'
    ),
    (
        6,
        3,
        'long_term_plan',
        200,
        '2022-03-15',
        true,
        'Whiteboard'
    ),
    (
        7,
        3,
        'long_term_plan',
        50,
        '2022-03-15',
        true,
        'Floor Lamp'
    ),
    (
        8,
        6,
        'long_term_plan',
        200,
        '2022-04-27',
        true,
        '8 Laptop Stands'
    ),
    (
        9,
        5,
        'long_term_plan',
        100,
        '2022-03-10',
        true,
        'microphones + TV'
    ),
    (
        10,
        1,
        'long_term_plan',
        180,
        '2022-07-10',
        false,
        'Locksmith'
    ),
    (
        11,
        6,
        'long_term_plan',
        380,
        '2022-04-27',
        false,
        'utensils'
    ),
    (
        12,
        7,
        'long_term_plan',
        520,
        '2022-03-01',
        false,
        'mugs'
    ),
    (
        13,
        7,
        'long_term_plan',
        100,
        '2022-03-01',
        false,
        'coffee machine'
    ),
    (
        14,
        8,
        'long_term_plan',
        4200,
        '2022-03-15',
        true,
        'chairs and desks'
    ),
    (
        15,
        8,
        'long_term_plan',
        1200,
        '2022-01-20',
        true,
        'internet'
    ),
    (
        16,
        1,
        'short_term_booking',
        1020,
        '2022-03-05',
        false,
        'lunch'
    ),
    (
        17,
        9,
        'long_term_plan',
        300,
        '2022-01-25',
        true,
        'bookshelf'
    ),
    (
        18,
        9,
        'long_term_plan',
        1802,
        '2022-06-07',
        true,
        'ergonomic chairs'
    ),
    (
        19,
        9,
        'long_term_plan',
        160,
        '2022-01-25',
        true,
        'key cards'
    ),
    (
        20,
        2,
        'short_term_booking',
        40,
        '2022-04-01',
        false,
        'coffee'
    ),
    (
        21,
        5,
        'short_term_booking',
        128,
        '2022-05-11',
        false,
        'drinks and snacks'
    ),
    (
        22,
        6,
        'short_term_booking',
        192,
        '2022-06-10',
        false,
        'table rental'
    ),
    (
        23,
        16,
        'long_term_plan',
        8000,
        '2022-10-01',
        true,
        'catering'
    ),
    (
        24,
        21,
        'long_term_plan',
        4500,
        '2022-10-23',
        true,
        'Catering'
    ),
    (
        25,
        21,
        'long_term_plan',
        1200,
        '2022-12-10',
        true,
        'Internet'
    );