# == Schema Information
#
# Table name: documents
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Document < ActiveRecord::Base
end
