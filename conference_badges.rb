def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map { |attendee| badge_maker(attendee) }
end

def assign_rooms(speakers) 
  speakers.each_with_index.map { |s, i| "Hello, #{s}! You'll be assigned to room #{i + 1}!" }
end

def printer(speakers)
  batch_badge_creator(speakers).each { |s| puts s }
  assign_rooms(speakers).each { |s| puts s }
end