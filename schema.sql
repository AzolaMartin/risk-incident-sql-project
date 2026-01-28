-- Enterprise Risk & Incident Overview (Beginner SQL)
-- Schema + sample inserts (works in most SQL databases with minor tweaks)

DROP TABLE IF EXISTS incidents;
DROP TABLE IF EXISTS risk_scores;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
  department_id INTEGER PRIMARY KEY,
  department_name VARCHAR(100) NOT NULL
);

CREATE TABLE incidents (
  incident_id INTEGER PRIMARY KEY,
  department_id INTEGER NOT NULL,
  severity VARCHAR(20) NOT NULL,
  incident_date DATE NOT NULL,
  description VARCHAR(255),
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE risk_scores (
  department_id INTEGER PRIMARY KEY,
  risk_score INTEGER NOT NULL,
  risk_category VARCHAR(20) NOT NULL,
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Sample data
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Finance'),
(2, 'Operations'),
(3, 'IT'),
(4, 'HR'),
(5, 'Legal');

INSERT INTO incidents (incident_id, department_id, severity, incident_date, description) VALUES
(101, 1, 'High',   '2024-01-10', 'Unusual payment activity flagged'),
(102, 2, 'Medium', '2024-01-15', 'Vendor delay impacted delivery'),
(103, 3, 'Low',    '2024-02-02', 'Password reset spike'),
(104, 3, 'High',   '2024-02-20', 'System outage during peak hours'),
(105, 4, 'Medium', '2024-03-05', 'Policy acknowledgement overdue'),
(106, 2, 'Low',    '2024-03-18', 'Minor equipment issue resolved'),
(107, 5, 'High',   '2024-04-01', 'Contract compliance exception'),
(108, 1, 'Medium', '2024-04-12', 'Reconciliation variance investigation'),
(109, 2, 'High',   '2024-04-28', 'Safety incident reported'),
(110, 4, 'Low',    '2024-05-09', 'Training completion reminder');

INSERT INTO risk_scores (department_id, risk_score, risk_category) VALUES
(1, 85, 'High'),
(2, 70, 'Medium'),
(3, 78, 'High'),
(4, 55, 'Low'),
(5, 90, 'High');
