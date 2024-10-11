use BdEjemplo03;
go

--1--
SELECT * FROM Persona;
--2--
SELECT dni, apellidos, funcion FROM Persona;
--3--
SELECT apellidos FROM Persona WHERE localidad = 'Lima';
--4--
SELECT apellidos FROM Persona WHERE localidad IN ('Lima', 'Huancayo');
--5--
SELECT * FROM Persona WHERE localidad = 'Lima' AND salario > 1500;
--6--
SELECT * FROM Persona WHERE localidad = 'Huancayo' AND salario > 1500 AND funcion = 'Director';
--7--
SELECT * FROM Persona WHERE funcion = 'Medico' ORDER BY apellidos DESC;
--8--
SELECT DISTINCT localidad FROM Persona;
--9--
SELECT * FROM Persona WHERE funcion = 'Medico' AND salario > 1500 ORDER BY salario DESC;
--10--
SELECT * FROM Persona WHERE apellidos LIKE 'M%';
--11--
SELECT * FROM Persona WHERE apellidos LIKE '%M%' AND funcion = 'Conserje';
--12--
SELECT * FROM Persona WHERE salario BETWEEN 200 AND 1500;
--13--
SELECT * FROM Persona WHERE funcion IN ('Medico', 'Director');
--14--
SELECT * FROM Persona WHERE funcion NOT IN ('Conserje') AND salario > 1500 ORDER BY apellidos DESC;
--15--
SELECT * FROM Persona WHERE localidad IN ('Lima', 'Huancayo') AND CodigoHospital = 1;
--16--
SELECT UPPER(apellidos) AS 'APELLIDOSMAYUSC' FROM Persona WHERE CodigoHospital = 1;
--17--
SELECT apellidos, LEN(apellidos) AS Length FROM Persona;
--18--
SELECT LOWER(apellidos) AS 'apellidominus', LOWER(localidad) AS 'localidadminus' FROM Persona WHERE CodigoHospital <> 1;
--19--
SELECT * FROM Persona WHERE CodigoHospital IN (1, 2) AND salario > 1500;
--20--
SELECT * FROM Persona WHERE CodigoHospital <> 2 AND localidad = 'Lima';