class Vacation < ApplicationRecord
    belongs_to :Hospital
    enum sun:{holiday:true,consultation:false}
    enum mon:{holida:true,consultatio:false}
    enum tue:{holid:true,consultati:false}
    enum wed:{holi:true,consultat:false}
    enum thu:{hol:true,consulta:false}
    enum fri:{ho:true,consult:false}
    enum sat:{h:true,consul:false}
end