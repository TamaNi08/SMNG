class Shelter < ApplicationRecord
    validates :shelter_name, presence: true, length: { minimum: 1, maximum: 20 } #1~20の文字列
    validates :capacity,numericality: { only_integer: true } #整数のみ
    validates :lat, numericality: true #小数点と数値
    validates :lon,numericality: true  #小数点と数値

    def shelter_percentage
        ((1.0*count)/capacity)*100
    end
    

    has_many :users
end