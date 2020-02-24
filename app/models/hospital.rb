class Hospital < ApplicationRecord
    has_many :vacations, dependent: :destroy
    accepts_nested_attributes_for :vacations
    enum week_day:{sunday:0,monday:1,tuesday:2,wednesday:3,thursday:4,friday:5,saturday:6}
    enum emergency:{ok:true,ng:false}
    enum twenty_four:{correct:true,incorrect:false}
end