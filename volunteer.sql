

CREATE TABLE volunteer(
	 Id UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
	 NameOfBud VARCHAR(50),
	 EmailAddress VARCHAR(50),
	 phone VARCHAR(20),
	 Street VARCHAR(20),
	 City  VARCHAR(20),
	 StateOfBud VARCHAR(20),
	 Zip VARCHAR(20),
	 ContactStt INT,
	 DayAttending VARCHAR(20),
	 ActivitiesAttending VARCHAR(30),
	 SpecicalRequirements VARCHAR(200),
	 SttOfLastYearConference INT,
	 PRIMARY KEY (Id)
);



SELECT*FROM dbo.volunteer;



SELECT *FROM volunteer2

