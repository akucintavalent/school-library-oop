class Corrector
  def correct_name(name)
    name = name.length > 1 ? name[0].capitalize + name[1..-1] : name.capitalize
    name.length > 10 ? name[0..9] : name
  end
end
