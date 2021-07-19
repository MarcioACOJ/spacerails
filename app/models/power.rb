class Power < ApplicationRecord

    has_many :alien_powers
    has_many :powers, through: :alien_powers

end
