class ClinicalDepartment < ApplicationRecord
    has_many :hospital_clinical_department_relations, dependent: :delete_all
    has_many :hospitals, through: :hospital_clinical_department_relations

    # has_many :vacations, through:
    # accepts_nested_attributes_for :vacations
    enum classification:{other:0,
	    cardiology:1,
	    respiratory:2,
	    gastroenterology:3,
	    hematology:4,
	    metabolism:5,
	    neurology:6,
	    pediatrics:7,
	    psychiatry:8,
	    dermatology:9,
	    gastrointestinal:10,
	    orthopaedic:11,
	    neurosurgery:12,
	    otolaryngology:13,
	    urology:14,
	    ophthalmology:15,
	    anesthesiology:16,
	    plasticsurgery:17,
	    dentistry:18}
end
