CREATE TABLE usr(
  user_id serial PRIMARY KEY,
  username VARCHAR (50) UNIQUE NOT NULL,
  password VARCHAR (50) NOT NULL,
  email VARCHAR (355) UNIQUE NOT NULL,
  created_on TIMESTAMP NOT NULL,
  last_login TIMESTAMP
);

CREATE TABLE meeting(
  meeting_id serial PRIMARY KEY,
  meeting_date timestamp without time zone,
  meeting_name VARCHAR (255) UNIQUE NOT NULL
);

CREATE TABLE user_meeting (
  user_id integer NOT NULL,
  meeting_id integer NOT NULL,
  PRIMARY KEY (user_id, meeting_id),
  CONSTRAINT user_meeting_meeting_id_fkey FOREIGN KEY (meeting_id) 
    REFERENCES meeting (meeting_id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT user_meeting_user_id_fkey FOREIGN KEY (user_id) 
    REFERENCES usr (user_id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
);