# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  house_id   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Person < ApplicationRecord
    belongs_to(
        :house,
        class_name: 'House',
        primary_key: :id,
        foreign_key: :house_id
    )
end