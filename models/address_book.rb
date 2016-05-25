require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

def add_entry(name, phone_number, email)

  index = 0
  entries.each do |entry|

    if name < entry.name
      break
    end

def remove_entry(name, phone_number, email)

  entries.each_with_index do |entry, i|

    if name == entry.name
      entries.delete_at(i)
    end
  end
end
    index += 1
  end

  entries.insert(index, Entry.new(name, phone_number, email))
  end
end
