SELECT 
    ps.PatientId
    , ps.AdmittedDate 
    , ps.DischargeDate 
    , DATEDIFF(day, ps.AdmittedDate, ps.DischargeDate)AS LengthOfStay
    , DATEADD (Day, -14, ps.AdmittedDate) As ReminderDate
    , ps. Hospital
    , ps.Ward 
    , ps.Tariff
    , ps.Ethnicity
FROM PatientStay ps
WHERE ps.Hospital IN ('PRUH', 'Oxleas')
AND ps.Ward LIKE '%Surgery'
-- AND ps.AdmittedDate >= '2024-02-27'
-- AND ps.AdmittedDate <= '2024-03-01'
AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-03-01'






-- SELECT * FROM airports

 