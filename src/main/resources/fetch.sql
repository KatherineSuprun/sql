SELECT * FROM homework;

SELECT * FROM homework
JOIN lesson on homework_id = lesson."id";

SELECT * FROM homework, lesson ORDER BY homework.id, lesson.id ASC;

SELECT * FROM schedule
JOIN lesson on schedule.username = lesson.username;

SELECT * FROM schedule sch
INNER JOIN lesson les ON sch.id = les."id";