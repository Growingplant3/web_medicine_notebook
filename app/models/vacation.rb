class Vacation < ApplicationRecord
    belongs_to :hospital
    enum week_day:{sunday:0,monday:1,tuesday:2,wednesday:3,thursday:4,friday:5,saturday:6}
    enum is_closed:{kyushin:true, sninsatsu:false}
end
