require "test_helper"

# == Schema Information
#
# Table name: todos
#
#  id          :bigint           not null, primary key
#  description :text
#  due_date    :date
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
