-- Beginner Queries: Enterprise Risk & Incident Overview

-- 1) View all incidents with department names
SELECT d.department_name,
       i.severity,
       i.incident_date,
       i.description
FROM incidents i
JOIN departments d
  ON i.department_id = d.department_id
ORDER BY i.incident_date;

-- 2) Count incidents by department
SELECT d.department_name,
       COUNT(i.incident_id) AS incident_count
FROM incidents i
JOIN departments d
  ON i.department_id = d.department_id
GROUP BY d.department_name
ORDER BY incident_count DESC;

-- 3) Count incidents by severity
SELECT severity,
       COUNT(*) AS severity_count
FROM incidents
GROUP BY severity
ORDER BY severity_count DESC;

-- 4) High-risk departments (risk_score > 70)
SELECT d.department_name,
       r.risk_score,
       r.risk_category
FROM risk_scores r
JOIN departments d
  ON r.department_id = d.department_id
WHERE r.risk_score > 70
ORDER BY r.risk_score DESC;

-- 5) Combine risk + incident counts (simple "risk overview")
SELECT d.department_name,
       r.risk_score,
       COALESCE(COUNT(i.incident_id), 0) AS incident_count
FROM departments d
JOIN risk_scores r
  ON d.department_id = r.department_id
LEFT JOIN incidents i
  ON d.department_id = i.department_id
GROUP BY d.department_name, r.risk_score
ORDER BY r.risk_score DESC, incident_count DESC;
