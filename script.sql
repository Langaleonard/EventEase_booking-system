CREATE TABLE Venue (
    VenueId INT IDENTITY(1,1) PRIMARY KEY,
    VenueName VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    Capacity INT NOT NULL,
    ImageUrl VARCHAR(255) NULL
);

CREATE TABLE [Event] (
    EventId INT IDENTITY(1,1) PRIMARY KEY,
    EventName VARCHAR(100) NOT NULL,
    EventDate DATETIME NOT NULL,
    Description VARCHAR(255) NULL,
    VenueId INT NOT NULL,
    CONSTRAINT FK_Event_Venue
        FOREIGN KEY (VenueId) REFERENCES Venue(VenueId)
);

CREATE TABLE Booking (
    BookingId INT IDENTITY(1,1) PRIMARY KEY,
    EventId INT NOT NULL,
    VenueId INT NOT NULL,
    BookingDate DATETIME NOT NULL,
    CONSTRAINT FK_Booking_Event
        FOREIGN KEY (EventId) REFERENCES [Event](EventId),
    CONSTRAINT FK_Booking_Venue
        FOREIGN KEY (VenueId) REFERENCES Venue(VenueId)
);

INSERT INTO Venue (VenueName, Location, Capacity, ImageUrl)
VALUES
('The Soya', 'Brakpan', 50, 'https://via.placeholder.com/400'),
('Dinokong', '	Mokopane', 150, 'https://via.placeholder.com/400'),
('Amix', 'Kempton Park', 200, 'https://via.placeholder.com/400');

INSERT INTO [Event] (EventName, EventDate, Description, VenueId)
VALUES
('Lobola', '03-01-2026', 'Family Celebration', 1),
('Community link up', '02-07-2026', 'Community Meeting', 2),
('Get Together', '03-10-2026', 'Party', 3);

INSERT INTO Booking (EventId, VenueId, BookingDate)
VALUES
(1, 1, '03-01-2026'),
(2, 2, '02-07-2026'),
(3, 3, '03-10-2026');