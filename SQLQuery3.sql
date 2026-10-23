IF OBJECT_ID('WorkoutLog', 'U') IS NOT NULL
    DROP TABLE WorkoutLog;
GO


CREATE TABLE WorkoutLog (
    id INT IDENTITY(1,1) PRIMARY KEY, 



	ExerciseId INT NOT NULL,


	LogDate DATE NOT NULL,


	Sets INT NOT NULL,


	Reps INT NOT NULL,



	Weight DECIMAL(5,2) NOT NULL,




	CONSTRAINT FK_WorkoutLog_Exercises
	    FOREIGN KEY (ExerciseId)
		REFERENCES Exercises(Id) ON DELETE CASCADE
);
GO



CREATE INDEX IX_WorkoutLog_ExerciseId ON WorkoutLog(ExerciseId);
GO


CREATE INDEX IX_WorkoutLog_LogDate ON WorkoutLog(LogDate);
GO


PRINT 'Таблица WorkoutLog успешно создана!';
GO