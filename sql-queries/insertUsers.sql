INSERT INTO "go-test"."public"."usr" (
    created_on,
    email,
    last_login,
    password,
    user_id,
    username
  )
VALUES
  (
    now()::timestamp,
    'juana@juana.com',
    '2020-01-01 21:18:26.757458-03',
    '1234',
    '2',
    'juana'
  );
