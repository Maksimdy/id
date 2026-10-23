IF OBJECT_ID ('Exercises', 'U') IS NOT NULL
     DROP TABLE Exercises;
GO


CREATE TABLE Exercises (
   Id INT IDENTITY(1,1) PRIMARY KEY,


   Name NVARCHAR(100) NOT NULL,
   Category NVARCHAR(50) NOT NULL,
   MuscleGroup NVARCHAR(50) NOT NULL
);
GO

PRINT 'Таблица Exercises успешно создана!';
GO