class Company < ApplicationRecord
    enum off: [:日曜日, :月曜日, :火曜日, :水曜日, :木曜日, :金曜日, :土曜日]
end
