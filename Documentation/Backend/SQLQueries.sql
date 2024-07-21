CREATE TABLE users (
  id integer PRIMARY KEY,
  username varchar(255),
  full_name varchar(255),
  email varchar(255),
  phone_number integer,
  password varchar(255),
  avatar text
);

CREATE TABLE dashboards (
  id integer PRIMARY KEY,
  user_id integer,
  name text,
  description text,
  active bool,
  body text,
  updated_at timestamp,
  created_at timestamp
);

CREATE TABLE components (
  id integer PRIMARY KEY,
  dashboard_id integer,
  user_id integer,
  name varchar(255),
  title varchar(255),
  body text,
  status varchar(255),
  created_at timestamp
);

ALTER TABLE users ADD FOREIGN KEY (id) REFERENCES dashboards (user_id);

ALTER TABLE users ADD FOREIGN KEY (id) REFERENCES components (user_id);

ALTER TABLE dashboards ADD FOREIGN KEY (id) REFERENCES components (dashboard_id);
