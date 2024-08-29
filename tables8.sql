SELECT A.Folio, A.Fecha, A.Dias, A.ValorDia, C.NombreCliente, C.RutCliente
FROM Arriendos A
JOIN Clientes C ON A.idCliente = C.idCliente;

SELECT C.NombreCliente, C.RutCliente
FROM Clientes C
LEFT JOIN Arriendos A ON C.idCliente = A.idCliente
WHERE A.idCliente IS NULL;

SELECT C.RutCliente, C.NombreCliente
FROM Clientes C
UNION
SELECT E.RutEmpresa, E.NombreEmpresa
FROM Empresas E;

SELECT MONTH(A.Fecha) AS Mes, COUNT(*) AS CantidadArriendos
FROM Arriendos A
GROUP BY Mes;
