class Hospital < ApplicationRecord
    has_many :Telphones
    enum holiday:{sunday:0,monday:1,tuesday:2,wednesday:3,thursday:4,friday:5,saturday:6}
    enum emergency:{ok:true,ng:false}
end