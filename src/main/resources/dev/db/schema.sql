CREATE TABLE contacts (
  id          BIGINT IDENTITY PRIMARY KEY,
  first_name  VARCHAR(128),
  last_name   VARCHAR(128),
  email       VARCHAR(256),
  home_phone  VARCHAR(64)
);