lass Nameable
  def correct_name(name)
    name.capitalize!
    name[1, 10]
  end
end