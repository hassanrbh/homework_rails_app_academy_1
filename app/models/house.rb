# == Schema Information
#
# Table name: houses
#
#  id         :bigint           not null, primary key
#  address    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class House < ApplicationRecord
    
    has_many(
        :residents,
        class_name: 'Person',
        primary_key: :id,
        foreign_key: :house_id
    )
end
