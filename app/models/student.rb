class Student < User
  belongs_to :mentor, class_name: 'Mentor', foreign_key: 'user_id', optional: true

  def moderator
    p "hello"
    true
  end
end
