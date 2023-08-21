SELECT * FROM homework;

SELECT * FROM homework
JOIN lesson on homework_id = lesson."id";

SELECT * FROM homework, lesson ORDER BY homework.id, lesson.id ASC;

SELECT * FROM schedule
JOIN lesson on schedule.username = lesson.username;

select homework_id AS lesson_username,
count (schedule.id) AS quantity
from lesson
left join schedule on schedule.id = schedule.id and lesson = 2
group by lesson_username;