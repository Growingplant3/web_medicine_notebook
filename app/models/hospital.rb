class Hospital < ApplicationRecord
    has_many :vacations, dependent: :destroy
    has_many :hospital_clinical_department_relations, dependent: :delete_all
    has_many :clinical_departments, through: :hospital_clinical_department_relations
    accepts_nested_attributes_for :vacations
    accepts_nested_attributes_for :clinical_departments
    enum emergency:{ok:true,ng:false}
    enum twenty_four:{correct:true,incorrect:false}
end