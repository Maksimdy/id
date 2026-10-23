-- Проверка 1: Попытка вставки записи с несуществующим ExerciseId
BEGIN TRY
    INSERT INTO WorkoutLog (ExerciseId, LogDate, Sets, Reps, Weight)
    VALUES (999, '2025-02-10', 3, 10, 50.00);
    PRINT 'Запись вставлена!';
END TRY
BEGIN CATCH
    PRINT 'Ошибка! Нельзя вставить запись с несуществующим ExerciseId.';
    PRINT 'Текст ошибки: ' + ERROR_MESSAGE();
END CATCH
GO

-- Проверка 2: Проверка каскадного удаления
-- Сначала смотрим, сколько записей в WorkoutLog для упражнения с Id = 1
SELECT COUNT(*) AS RecordsBeforeDelete
FROM WorkoutLog
WHERE ExerciseId = 1;
GO

-- Удаляем упражнение с Id = 1 (Жим штанги лежа)
DELETE FROM Exercises WHERE Id = 1;
GO

-- Проверяем, что записи в WorkoutLog для этого упражнения тоже удалились
SELECT COUNT(*) AS RecordsAfterDelete
FROM WorkoutLog
WHERE ExerciseId = 1;
GO

-- Проверяем, что упражнение с Id = 1 действительно удалено
SELECT * FROM Exercises WHERE Id = 1;
GO
