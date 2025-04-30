SELECT 
    ps.PatientId
    , ps.AdmittedDate 
    , ps.DischargeDate 
    --, DATEDIFF(day, ps.AdmittedDate, ps.DischargeDate)AS LengthOfStay
    --, DATEADD (Day, -14, ps.AdmittedDate) As ReminderDate
    , ps. Hospital
    , ps.Ward 
    , ps.Tariff
    , ps.Ethnicity
FROM PatientStay ps
WHERE ps.Hospital IN ('PRUH', 'Oxleas')
AND ps.Ward LIKE '%Surgery'
-- AND ps.AdmittedDate >= '2024-02-27'
-- AND ps.AdmittedDate <= '2024-03-01'
-- AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-03-01'
ORDER BY ps.AdmittedDate DESC, ps.PatientId DESC

SELECT 
COUNT(*) as Numberofpatients 
,SUM(ps.Tariff) as totaltariff
,MAX(ps.Tariff) as Maxtariff
,MIN(ps.tariff) as Mintariff
, AVG(ps.tariff) as AvgTariff
FROM PatientStay ps
GROUP BY ps.Hospital, ps.Ward
--ORDER BY ps.Hospital, ps.Ward
ORDER BY Numberofpatients DESC

SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.Hospital
    ,dh.HospitalType
    ,dh.HospitalSize
FROM
    PatientStay ps 
    INNER JOIN DimHospital dh 
    ON ps.Hospital = dh.Hospital
  --  WHERE DH.Hospital IS NULL


SELECT * FROM DimHospitalBad



-- SELECT * FROM airports

 