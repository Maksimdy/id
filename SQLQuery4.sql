TRUNCATE TABLE WorkoutLog;
GO



INSERT INTO WorkoutLog (ExerciseId, LogDate, Sets, Reps, Weight)
VALUES

    (1, '2025-02-01', 4, 10, 80.50),
	(3, '2025-02-01', 4, 12, 25.00),
	(2, '2025-02-01', 3, 15, 0.00),

	(4, '2025-02-03', 5, 8, 120.00),
	(6, '2025-02-03', 4, 12, 180.00),
	(5, '2025-02-03', 4, 10, 90.00),


	(7, '2025-02-05', 4, 8, 70.00),
	(9, '2025-02-05', 4, 12, 60.00),
	(8, '2025-02-05', 3, 10, 0.00);
GO




SELECT
    wl.Id AS ЗаписьId,
    e.Name AS Упражнения,
    wl.LogDate AS Дата,
    wl.Sets AS Подходы,
    wl.Reps AS Повторения,
    wl.Weight AS Вес,

     (wl.Sets * wl.Reps * wl.Weight) AS Тоннаж
FROM WorkoutLog wl
INNER JOIN Exercises e ON wl.ExerciseId = e.Id
ORDER BY wl.LogDate DESC, e.Name;
GO


SELECT COUNT(*) AS TotalRecords FROM WorkoutLog;
GO

SELECT SUM(Sets * Reps * Weight) AS TotalTonnage FROM WorkoutLog;
GO