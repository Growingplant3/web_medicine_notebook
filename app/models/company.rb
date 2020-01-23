class Company < ApplicationRecord
    enum off: [:sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday]
end
