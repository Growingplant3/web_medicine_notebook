class Hospital < ApplicationRecord
    has_many :vacations, dependent: :destroy
    accepts_nested_attributes_for :vacations
    enum emergency:{ok:true,ng:false}
    enum twenty_four:{correct:true,incorrect:false}
end