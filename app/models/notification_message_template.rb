class NotificationMessageTemplate
  ROLE_ID = 1263629681157214224
  def self.create(message_type, course, minute)
    template = case message_type
               when :create
                 File.read('config/message_template/minute_creation.md')
               else
                 File.read('config/message_template/minute_creation.md')
               end
    ERB.new(template).result_with_hash({ role_id: ROLE_ID, course_name: course.name, meeting_date: minute.meeting_date, url: "https://fjord_minutes/minutes/#{minute.id}/attendances/new" })
  end
end