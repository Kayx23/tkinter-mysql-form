-- Patients(pid, name, address, telephone, care_centre_id)
CREATE TABLE RVH.Patients (
	pid INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(60) NOT NULL,
    address VARCHAR(100) NOT NULL,
    telephone VARCHAR(20) NOT NULL,
    care_centre_id INT
);

-- Care_centres(cid, name, location, nurse_charge_id)
CREATE TABLE RVH.Care_centres (
	cid INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(60) NOT NULL,
    location VARCHAR(100) NOT NULL,
    nurse_charge_id INT NOT NULL
);

ALTER TABLE RVH.Patients ADD 
CONSTRAINT care_centre_to_patient
FOREIGN KEY (care_centre_id) REFERENCES RVH.Care_centres(cid)
ON DELETE RESTRICT  -- prevents the deletion of a care centre if there are still patients in it
ON UPDATE CASCADE;   -- if a care centre id is updated, cascade the update to patients

-- Nurses(nid, name, care_centre_id, certificate_type, telephone, salary)
CREATE TABLE RVH.Nurses (
	nid INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(20) NOT NULL, 
    care_centre_id INT, 
    certificate_type VARCHAR(10) NOT NULL, 
    telephone VARCHAR(20) NOT NULL,
    salary INT
);

ALTER TABLE RVH.Care_centres ADD 
CONSTRAINT nurse_to_care_centre
FOREIGN KEY (nurse_charge_id) REFERENCES RVH.Nurses(nid)
ON DELETE RESTRICT  -- prevents the deletion of a nurse if they are still working in a care centre on the record
ON UPDATE CASCADE;   -- if a nurse id is updated, cascade the update to nurse_charge_id

-- Physicians(phid, name, pager_number, specialization, salary)
CREATE TABLE RVH.Physicians (
	phid INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(20) NOT NULL, 
    pager_number VARCHAR(20), 
    specialization VARCHAR(30) NOT NULL,
    salary INT
);

-- Treatments(tid, patient_id, physician_id, treatment_name, date)
CREATE TABLE RVH.Treatments (
	tid INT AUTO_INCREMENT PRIMARY KEY, 
    patient_id INT NOT NULL, 
    physician_id INT NOT NULL, 
    treatment_name VARCHAR(30) NOT NULL,
    date DATE NOT NULL
);

ALTER TABLE RVH.Treatments ADD (
CONSTRAINT patient_to_treatment
	FOREIGN KEY (patient_id) REFERENCES RVH.Patients(pid)
	ON DELETE CASCADE  -- if a patient is deleted, all the relevant treatmnet records are deleted as well
	ON UPDATE CASCADE,   -- if a patient id is updated, cascade the update to Treatments patient_id
CONSTRAINT physician_to_treatment
	FOREIGN KEY (physician_id) REFERENCES RVH.Physicians(phid)
	ON DELETE RESTRICT  -- prevents the deletion a physician if they are still in charge of a treatment
	ON UPDATE CASCADE   -- if a physician id is updated, cascade the update to Treatments physician_id
    );