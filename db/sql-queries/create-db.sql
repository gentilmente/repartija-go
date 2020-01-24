CREATE TABLE "user" (
	"user_id"	INTEGER NOT NULL UNIQUE,
	"username"	TEXT NOT NULL UNIQUE,
	"password"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"created_on"	TEXT NOT NULL,
	"last_login"	TEXT,
	PRIMARY KEY("user_id")
);

CREATE TABLE "meeting" (
	"MeetingId"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"MeetingDate"	TEXT NOT NULL,
	"MeetingName"	TEXT
);

CREATE TABLE "user_meeting" (
	"UserId"	INTEGER NOT NULL,
	"MeetingId"	INTEGER NOT NULL,
	FOREIGN KEY("UserId") REFERENCES "user"("UserId"),
	FOREIGN KEY("MeetingId") REFERENCES "meeting"("MeetingId")
);

INSERT INTO "main"."user" ("UserId", "UserName", "Password", "Email", "CreatedOn", "last_login") VALUES ('1', 'Eze', '1234', 'eze@eze.com', '2020-01-23 12:05:12', '2020-01-23 12:05:12');
INSERT INTO "main"."user" ("UserId", "UserName", "Password", "Email", "CreatedOn", "last_login") VALUES ('2', 'Pepe', '1234', 'pepe@pepe.com', '2020-01-23 12:23:12', '2020-01-23 12:23:12');
INSERT INTO "main"."user" ("UserId", "UserName", "Password", "Email", "CreatedOn", "last_login") VALUES ('3', 'Meri', '1234', 'meri@meri.com', '2020-01-21 12:23:12', '2020-01-21 12:23:12');
INSERT INTO "main"."user" ("UserId", "UserName", "Password", "Email", "CreatedOn", "last_login") VALUES ('4', 'Juli', '1234', 'juli@juli.com', '2020-01-21 12:23:12', '2020-01-21 12:23:12');
INSERT INTO "main"."user" ("UserId", "UserName", "Password", "Email", "CreatedOn", "last_login") VALUES ('5', 'Charles', '1234', 'charles@charles.com', '2020-01-21 12:23:12', '2020-01-21 12:23:12');

INSERT INTO "main"."meeting" ("MeetingId", "MeetingDate", "MeetingName") VALUES ('1', '2020-01-22 13:05:12', 'asado');
INSERT INTO "main"."meeting" ("MeetingId", "MeetingDate", "MeetingName") VALUES ('2', '2020-01-23 13:05:12', 'juntada charly');

INSERT INTO "main"."user_meeting" ("UserId", "MeetingId") VALUES ('1', '1');
INSERT INTO "main"."user_meeting" ("UserId", "MeetingId") VALUES ('2', '1');
INSERT INTO "main"."user_meeting" ("UserId", "MeetingId") VALUES ('3', '1');
INSERT INTO "main"."user_meeting" ("UserId", "MeetingId") VALUES ('4', '1');
INSERT INTO "main"."user_meeting" ("UserId", "MeetingId") VALUES ('1', '2');
INSERT INTO "main"."user_meeting" ("UserId", "MeetingId") VALUES ('5', '2');
INSERT INTO "main"."user_meeting" ("UserId", "MeetingId") VALUES ('2', '2');
