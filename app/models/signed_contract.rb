class SignedContract < ApplicationRecord
    has_many :changed_contents, as: :changed_contentable, dependent: :destroy
end
