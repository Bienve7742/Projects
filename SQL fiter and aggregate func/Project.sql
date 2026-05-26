-- Clean start
DROP TABLE IF EXISTS NEWS;

CREATE TABLE NEWS (
    id INTEGER,
    title TEXT,
    score INTEGER,
    comments INTEGER,
    date TEXT,
    type TEXT
);

INSERT INTO NEWS VALUES
(1, 'The Rise of Hackers', 890, 156, '2025-01-10', 'article'),
(2, 'Interview with a former black hat hacker', 340, 67, '2025-01-10', 'news'),
(3, 'Is Your Accounts at Risk of Being Comprimised?', 450, 234, '2025-01-11', 'show'),
(4, 'Hacker manifesto: 40 years later', 1200, 389, '2025-01-11', 'article'),
(5, 'The rise of white hat hackers', 678, 98, '2025-01-12', 'show');

SELECT date, MAX(score) AS highest_score, title
FROM NEWS
GROUP BY date;

SELECT type, SUM(comments) AS total_comments
FROM NEWS
WHERE score > 500
GROUP BY type;

SELECT date, COUNT(*) AS high_score_count
FROM NEWS
WHERE score > 600
GROUP BY date
ORDER BY high_score_count DESC;