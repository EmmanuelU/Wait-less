/* Table deletion START */

    DROP TABLE IF EXISTS [dbo].[Order]
    DROP TABLE IF EXISTS [dbo].[Task]
    DROP TABLE IF EXISTS [dbo].[DiningTable]
    DROP TABLE IF EXISTS [dbo].[Employee]
    GO

/* Table deletion END */

/* Employee Table Creation START */

    SET ANSI_NULLS ON
    SET QUOTED_IDENTIFIER ON
    CREATE TABLE [dbo].[Employee](
        [Employee_ID] [int] NOT NULL IDENTITY(2121,3) PRIMARY KEY,
        [F_Name] [varchar](50) NOT NULL,
        [L_Name] [varchar](50) NOT NULL,
        [Is_Manager] [bit] NOT NULL,
        [Is_Logged_In] [bit] DEFAULT 0,
        [Hire_Date] [date] NOT NULL,
        [Birth_Date] [date] NOT NULL,
        [Address] [varchar](50) NOT NULL,
        [Phone] [varchar](50) NOT NULL,
        [Token] [varchar](MAX) NOT NULL,
        [Salary] [decimal](19,2) NOT NULL,
        [Title] [varchar](50) NOT NULL
    )
    GO

/* Employee Table Creation END */

/* Employee Table Data Insertion START */

    INSERT INTO [dbo].[Employee] ( [F_Name], [L_Name], [Is_Manager], [Hire_Date], [Birth_Date], [Address], [Phone], [Token], [Salary], [Title] ) VALUES ('Best', 'Manager', 1, '2001-1-1', '2001-1-1', '123 Drive', '123-456-7890', '5z0ZYrqhDOm5nkK5oIEudg==', 14.20, 'Manager')
    INSERT INTO [dbo].[Employee] ( [F_Name], [L_Name], [Is_Manager], [Hire_Date], [Birth_Date], [Address], [Phone], [Token], [Salary], [Title] ) VALUES ('Sam', 'Jackson', 0, '2001-2-2', '2001-2-2', '4389 Circle', '928-456-2354', '5z0ZYrqhDOm5nkK5oIEudg==', 8.80, 'SysAdmin')
    INSERT INTO [dbo].[Employee] ( [F_Name], [L_Name], [Is_Manager], [Hire_Date], [Birth_Date], [Address], [Phone], [Token], [Salary], [Title] ) VALUES ('Iron', 'Man', 0, '2001-3-3', '2001-3-21', '390 Ave', '347-456-7890', '5z0ZYrqhDOm5nkK5oIEudg==', 10.0, 'Waiter')
    INSERT INTO [dbo].[Employee] ( [F_Name], [L_Name], [Is_Manager], [Hire_Date], [Birth_Date], [Address], [Phone], [Token], [Salary], [Title] ) VALUES ('Black', 'Panther', 0, '2001-4-4', '2001-4-4', '123 Drive', '123-456-7890', '5z0ZYrqhDOm5nkK5oIEudg==', 14.20, 'Manager')
    INSERT INTO [dbo].[Employee] ( [F_Name], [L_Name], [Is_Manager], [Hire_Date], [Birth_Date], [Address], [Phone], [Token], [Salary], [Title] ) VALUES ('John', 'Carter', 1, '2001-5-5', '2001-5-5', '4389 Circle', '928-456-2354', '5z0ZYrqhDOm5nkK5oIEudg==', 8.80, 'SysAdmin')
    INSERT INTO [dbo].[Employee] ( [F_Name], [L_Name], [Is_Manager], [Hire_Date], [Birth_Date], [Address], [Phone], [Token], [Salary], [Title] ) VALUES ('Spider', 'Man', 0, '2001-6-6', '2001-6-6', '390 Ave', '347-456-7890', '5z0ZYrqhDOm5nkK5oIEudg==', 10.0, 'Waiter')
    INSERT INTO [dbo].[Employee] ( [F_Name], [L_Name], [Is_Manager], [Hire_Date], [Birth_Date], [Address], [Phone], [Token], [Salary], [Title] ) VALUES ('Tony', 'Stark', 0, '2001-7-7', '2001-7-7', '123 Drive', '123-456-7890', '5z0ZYrqhDOm5nkK5oIEudg==', 14.20, 'Manager')
    INSERT INTO [dbo].[Employee] ( [F_Name], [L_Name], [Is_Manager], [Hire_Date], [Birth_Date], [Address], [Phone], [Token], [Salary], [Title] ) VALUES ('The', 'Hulk', 0, '2001-8-8', '2001-8-8', '4389 Circle', '928-456-2354', '5z0ZYrqhDOm5nkK5oIEudg==', 8.80, 'SysAdmin')
    INSERT INTO [dbo].[Employee] ( [F_Name], [L_Name], [Is_Manager], [Hire_Date], [Birth_Date], [Address], [Phone], [Token], [Salary], [Title] ) VALUES ('Toy', 'Story', 1, '2001-11-11', '2001-11-11', '4389 Circle', '928-456-2354', '5z0ZYrqhDOm5nkK5oIEudg==', 8.80, 'SysAdmin')
    GO

/* Employee Table Data Insertion END */

/* DiningTable Table Creation START */

    SET ANSI_NULLS ON
    SET QUOTED_IDENTIFIER ON
    CREATE TABLE [dbo].[DiningTable](
        [Dining_Table_ID] [varchar](20) NOT NULL PRIMARY KEY,
        [Employee_ID] [int],
        [Seats] [int] NOT NULL,
        [Is_Active] [bit] NOT NULL,
        [Is_Occupied] [bit] NOT NULL,
        [Seating_Time] [time],
        [Reservation_Name] [varchar](MAX),
        [Has_Birthday] [bit] NOT NULL,
        [Special_Request] [varchar](MAX),
        FOREIGN KEY ([Employee_ID]) REFERENCES [dbo].[Employee] ([Employee_ID])
        ON DELETE CASCADE
        ON UPDATE CASCADE
    )
    GO
/* DiningTable Table Creation END */

/* DiningTable Table Data Insertion START */

    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Employee_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('A1', 2121, 4, 1, 1, CONVERT(time, GETDATE()), 'Michael Goldenberg' , 0, '')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('A2', 2, 1, 0, null, '' , 0, '')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Employee_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('A3', 2127, 8, 1, 1, CONVERT(time, GETDATE()), 'Harsh Gupta' , 1, 'Round table')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Employee_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('B1', 2130, 4, 1, 1, CONVERT(time, GETDATE()), 'Natalie Portman' , 0, '')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('B2', 2, 1, 0, null, '' , 0, '')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('C1', 10, 1, 0, null , '' , 0, '')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Employee_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('D1', 2139, 2, 1, 1, CONVERT(time, GETDATE()), '' , 0, 'Near a window')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('D2', 4, 1, 0, null, '' , 0, '')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('E1', 1, 1, 0, null, '' , 0, '')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Employee_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('E2', 2145, 4, 1, 1, CONVERT(time, GETDATE()), 'Huge Mungos' , 1, '')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('E3', 2, 1, 0, null, '' , 0, '')
    INSERT INTO [dbo].[DiningTable] ( [Dining_Table_ID], [Seats], [Is_Active], [Is_Occupied], [Seating_Time], [Reservation_Name], [Has_Birthday], [Special_Request] ) VALUES ('OT', 0, 0, 0, null, '' , 0, '')
    GO

/* DiningTable Table Data Insertion END */

/* Task Table Creation START */

    SET ANSI_NULLS ON
    SET QUOTED_IDENTIFIER ON
    CREATE TABLE [dbo].[Task](
        [Task_ID] [int] NOT NULL IDENTITY(1001,2) PRIMARY KEY,
        [Employee_ID] [int] NOT NULL,
        [Status] [varchar](MAX) NOT NULL,
        [Title] [varchar](MAX) NOT NULL,
        [Description] [text] NOT NULL,
        [Start_Time] [time] DEFAULT CONVERT(time, GETDATE()),
        [Finish_Time] [time], 
        [Total_Time] AS CONVERT(TIME,DATEADD(MS,DATEDIFF(SS, [Start_Time], [Finish_Time] )*1000,0),114),
        [Task_Date] [date] DEFAULT CONVERT(date, GETDATE()),
        [Dining_Table_ID] [varchar](20) NOT NULL,
        FOREIGN KEY ([Employee_ID]) REFERENCES [dbo].[Employee] ([Employee_ID])
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
        FOREIGN KEY ([Dining_Table_ID]) REFERENCES [dbo].[DiningTable] ([Dining_Table_ID])
        ON DELETE CASCADE
        ON UPDATE CASCADE
    )
    GO

/* Task Table Creation END */

/* Task Table Data Insertion START */

    -- Active Tasks --

    -- 2124 --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
	VALUES (2124, 'Active', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while', 'D1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
    VALUES (2124, 'Active', 'Sweep the floow', 'Sweep the floor that is near the assigned table','E1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
    VALUES (2124, 'Active', 'Clean table', 'Clean the assigned table', 'D1')

    -- 2127 --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
	VALUES (2127, 'Active', 'Wash Dishes', 'Wash the diches since there are no customers at the moment', 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
	VALUES (2127, 'Active', 'Customer Check', 'The customer has been waiting for their check', 'A1')

    -- 2130 --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
	VALUES (2130, 'Active', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while', 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
    VALUES (2130, 'Active', 'Sweep the floow', 'Sweep the floor that is near the assigned table','A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
    VALUES (2130, 'Active', 'Customer Check', 'The customer has been waiting for their check', 'B2')

    -- 2136 --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
    VALUES (2136, 'Active', 'Sweep the floow', 'Sweep the floor that is near the assigned table','B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
	VALUES (2136, 'Active', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while', 'D1')
    
    -- 2139 --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
	VALUES (2139, 'Active', 'Wash Dishes', 'Wash the diches since there are no customers at the moment', 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
	VALUES (2139, 'Active', 'Customer Check', 'The customer has been waiting for their check', 'C1')

    -- 2142 --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
	VALUES (2142, 'Active', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while', 'D1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
    VALUES (2142, 'Active', 'Sweep the floow', 'Sweep the floor that is near the assigned table','D1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Dining_Table_ID] )
    VALUES (2142, 'Active', 'Customer Check', 'The customer has been waiting for their check', 'E3')
    GO
    
    -- Completed Tasks --

    -- 2124 5 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:40:32', '06:45:21', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Clean table', 'Clean the assigned table','07:11:00', '07:13:59', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'A1')

    -- 2124 4 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:8:10', '05:11:21', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:34:32', '06:48:11', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Clean table', 'Clean the assigned table','07:15:02', '07:18:34', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:37:17', '08:39:53', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:35:34', '09:38:21', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:09:21', '11:12:17', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:10:10', '05:12:40', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'A1')

    -- 2124 3 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:40:10', '05:43:52', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'D1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:20:11', '06:22:14', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'E1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Clean table', 'Clean the assigned table','07:40:06', '07:45:10', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'D1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:12:51', '10:20:11', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:40:11', '11:41:25', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'E1')

    -- 2124 2 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:10:42', '05:14:31', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','07:03:52', '07:08:01', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Clean table', 'Clean the assigned table','07:55:01', '07:59:18', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:33:16', '08:36:43', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A3')

    -- 2124 1 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','06:52:42', '06:55:21', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','07:03:52', '07:08:01', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Clean table', 'Clean the assigned table','08:21:01', '08:24:53', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'E2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','09:09:45', '09:12:05', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'E3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:32:12', '10:40:14', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:21:42', '11:26:01', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:10:42', '08:11:10', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'E2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:43:12', '10:49:03', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2124, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:29:11', '11:35:25', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'A2')

    -- 2127 7 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','09:09:45', '09:12:05', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'E3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:32:12', '10:40:14', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:21:42', '11:26:01', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:10:10', '05:12:40', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:40:32', '06:45:21', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Clean table', 'Clean the assigned table','07:11:00', '07:13:59', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','06:52:42', '06:55:21', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'B1')

    -- 2127 6 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','07:03:52', '07:08:01', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Clean table', 'Clean the assigned table','08:21:01', '08:24:53', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'E2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:10:42', '08:11:10', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'E2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:12:51', '10:20:11', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:40:11', '11:41:25', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'E1')

    -- 2127 4 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:8:10', '05:11:21', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'B2')

    -- 2127 3 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:10:42', '05:14:31', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','07:03:52', '07:08:01', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Clean table', 'Clean the assigned table','07:55:01', '07:59:18', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'A1')

    -- 2127 2 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:37:17', '08:39:53', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:35:34', '09:38:21', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:09:21', '11:12:17', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:10:10', '05:12:40', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:40:32', '06:45:21', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Clean table', 'Clean the assigned table','07:11:00', '07:13:59', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:34:32', '06:48:11', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2127, 'Complete', 'Clean table', 'Clean the assigned table','07:15:02', '07:18:34', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'B2')

    -- 2130 7 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:8:10', '05:11:21', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:34:32', '06:48:11', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Clean table', 'Clean the assigned table','07:15:02', '07:18:34', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:37:17', '08:39:53', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:35:34', '09:38:21', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:09:21', '11:12:17', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'C1')

    -- 2130 5 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:33:16', '08:36:43', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:43:12', '10:49:03', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:29:11', '11:35:25', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:40:10', '05:43:52', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'D1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:20:11', '06:22:14', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'E1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Clean table', 'Clean the assigned table','07:40:06', '07:45:10', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'D1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'A2')

    -- 2130 4 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','06:52:42', '06:55:21', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','07:03:52', '07:08:01', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Clean table', 'Clean the assigned table','08:21:01', '08:24:53', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'E2')

    -- 2130 1 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:12:51', '10:20:11', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:40:11', '11:41:25', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'E1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:8:10', '05:11:21', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:34:32', '06:48:11', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Clean table', 'Clean the assigned table','07:15:02', '07:18:34', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'B2')

    -- 2130 0 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:10:10', '05:12:40', CONVERT(date, DATEADD(DD,0,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:40:32', '06:45:21', CONVERT(date, DATEADD(DD,0,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Clean table', 'Clean the assigned table','07:11:00', '07:13:59', CONVERT(date, DATEADD(DD,0,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:37:17', '08:39:53', CONVERT(date, DATEADD(DD,0,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:35:34', '09:38:21', CONVERT(date, DATEADD(DD,0,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:09:21', '11:12:17', CONVERT(date, DATEADD(DD,0,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2130, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:10:42', '08:11:10', CONVERT(date, DATEADD(DD,0,GETDATE())), 'E2')

    -- 2136 6 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Clean table', 'Clean the assigned table','08:21:01', '08:24:53', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'E2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','09:09:45', '09:12:05', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'E3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:32:12', '10:40:14', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:21:42', '11:26:01', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:40:10', '05:43:52', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'D1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:20:11', '06:22:14', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'E1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Clean table', 'Clean the assigned table','07:40:06', '07:45:10', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'D1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:29:11', '11:35:25', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'A2')

    -- 2136 4 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:33:16', '08:36:43', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:43:12', '10:49:03', CONVERT(date, DATEADD(DD,-4,GETDATE())), 'OT')

    -- 2136 3 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:40:32', '06:45:21', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Clean table', 'Clean the assigned table','07:11:00', '07:13:59', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:35:34', '09:38:21', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:09:21', '11:12:17', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:12:43', '09:27:09', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:33:21', '11:36:17', CONVERT(date, DATEADD(DD,-3,GETDATE())), 'A1')

    -- 2136 2 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:10:42', '08:11:10', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'E2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:15:51', '10:20:11', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:40:11', '11:41:25', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'E1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A2')

    -- 2136 0 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:12:51', '10:20:11', CONVERT(date, DATEADD(DD,0,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:40:11', '11:41:25', CONVERT(date, DATEADD(DD,0,GETDATE())), 'E1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:8:10', '05:11:21', CONVERT(date, DATEADD(DD,0,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:34:32', '06:48:11', CONVERT(date, DATEADD(DD,0,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,0,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,0,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2136, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,0,GETDATE())), 'A1')

    -- 2139 7 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:40:32', '06:45:21', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Clean table', 'Clean the assigned table','07:11:00', '07:13:59', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'A1')

    -- 2139 6 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:37:17', '08:39:53', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:35:34', '09:38:21', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:09:21', '11:12:17', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:10:10', '05:12:40', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:40:32', '06:45:21', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Clean table', 'Clean the assigned table','07:11:00', '07:13:59', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:34:32', '06:48:11', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Clean table', 'Clean the assigned table','07:15:02', '07:18:34', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'B2')

    -- 2139 5 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:8:10', '05:11:21', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'B2')

    -- 2139 2 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:33:16', '08:36:43', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:43:12', '10:49:03', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'OT')

    -- 2139 1 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','06:52:42', '06:55:21', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','07:03:52', '07:08:01', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2139, 'Complete', 'Clean table', 'Clean the assigned table','08:21:01', '08:24:53', CONVERT(date, DATEADD(DD,-1,GETDATE())), 'E2')

    -- 2142 7 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'A1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','06:52:42', '06:55:21', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','07:03:52', '07:08:01', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Clean table', 'Clean the assigned table','08:21:01', '08:24:53', CONVERT(date, DATEADD(DD,-7,GETDATE())), 'E2')

    -- 2142 6 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:10:42', '08:11:10', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'E2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:15:51', '10:20:11', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:40:11', '11:41:25', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'E1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,-6,GETDATE())), 'A2')

    -- 2142 5 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:12:51', '10:20:11', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:40:11', '11:41:25', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'E1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','05:8:10', '05:11:21', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'B2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:34:32', '06:48:11', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'B1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Clean table', 'Clean the assigned table','07:15:02', '07:18:34', CONVERT(date, DATEADD(DD,-5,GETDATE())), 'B2')

    -- 2142 2 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','07:03:52', '07:08:01', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'C1')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Clean table', 'Clean the assigned table','08:21:01', '08:24:53', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'E2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:10:42', '08:11:10', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'E2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','10:12:51', '10:20:11', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:40:11', '11:41:25', CONVERT(date, DATEADD(DD,-2,GETDATE())), 'E1')

    -- 2142 0 days ago --
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Sweep the floow', 'Sweep the floor that is near the assigned table','06:40:32', '06:45:21', CONVERT(date, DATEADD(DD,0,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Clean table', 'Clean the assigned table','07:11:00', '07:13:59', CONVERT(date, DATEADD(DD,0,GETDATE())), 'A3')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Attend Customer', 'Attend the customer at the assigned table, haven''t attended customer in a while','08:30:22', '08:33:19', CONVERT(date, DATEADD(DD,0,GETDATE())), 'A2')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Wash Dishes', 'Wash the diches since there are no customers at the moment','09:19:43', '09:27:09', CONVERT(date, DATEADD(DD,0,GETDATE())), 'OT')
    INSERT INTO [dbo].[Task] ( [Employee_ID], [Status], [Title], [Description], [Start_Time], [Finish_Time], [Task_Date], [Dining_Table_ID] )
	VALUES (2142, 'Complete', 'Customer Check', 'The customer has been waiting for their check','11:34:21', '11:36:17', CONVERT(date, DATEADD(DD,0,GETDATE())), 'A1')

    GO

/* Task Table Data Insertion START */
