class Company < ApplicationRecord
    enum holiday:{sunday:0,monday:1,tuesday:2,wednesday:3,thursday:4,friday:5,saturday:6}
    enum emergency:{ok:true,ng:false}

    belongs_to :prefecture

    def prefecture_name
      prefecture.try(:name)
    end
  
    def prefecture_name=(prefecture_name)
      self.prefecture = Prefecture.find_by(name: prefecture_name)
    end
end