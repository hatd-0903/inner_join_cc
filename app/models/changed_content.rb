class ChangedContent < ApplicationRecord
  belongs_to :signed_contract, -> do
    joins(:changed_contents).where "`changed_contents`.`changed_contentable_type` = '#{SignedContract.name}'"
  end, class_name: SignedContract.name, foreign_key: :changed_contentable_id
end
