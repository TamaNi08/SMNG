class User < ApplicationRecord

    validates :name, presence: true, length: { minimum: 1, maximum: 15 } #1~15の文字列
    # validates :login_id, presence: true, uniqueness: true #入力必須とユニーク
    enum sex: { man: 1 , woman: 2 }
    # enum inout: { in: 1 , out: 2 }
    validates :age,numericality: { only_integer: true } #整数のみ
    
    belongs_to :shelter
end

