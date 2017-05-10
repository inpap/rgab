START TRANSACTION;
-- For table AIRPORTS
ALTER TABLE AIRPORTS ADD PRIMARY KEY (AirportID);

-- For table AIRLINES
ALTER TABLE AIRLINES ADD PRIMARY KEY (AirlineID);

-- For table ROUTES
ALTER TABLE ROUTES ADD CONSTRAINT AIRLINEID_FK FOREIGN KEY (AirlineID) references AIRLINES;
ALTER TABLE ROUTES ADD CONSTRAINT SOURCEAIRPORTID_FK FOREIGN KEY (SourceAirportID) references AIRPORTS;
ALTER TABLE ROUTES ADD CONSTRAINT DESTINATIONAIRPORTID_FK FOREIGN KEY (DestinationAirportID) references AIRPORTS;

COMMIT;
