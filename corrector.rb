class Corrector

  def correct_name(name)
    name = name.capitalize
    name.length > 10 ? name[0..10] : name
  end
end