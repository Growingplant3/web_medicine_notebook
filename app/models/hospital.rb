class Hospital < ApplicationRecord
    has_many :vacations, dependent: :destroy
    has_many :hospitals, through: :hospital_clinicaldepartment_relations
    accepts_nested_attributes_for :vacations
    enum emergency:{ok:true,ng:false}
    enum twenty_four:{correct:true,incorrect:false}
end