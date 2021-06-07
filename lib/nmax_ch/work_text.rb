module WorkText

  module_function
  def get_numbers_from_string(text, numbers)
    digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    nextDigits = ""

    text.each_char do |ch|
      if digits.include?(ch)
        nextDigits += ch
      elsif nextDigits != ""
        numbers.append(nextDigits.to_i)
        nextDigits = ""
      end
    end

    if nextDigits != ""
      numbers.append(nextDigits.to_i)
    end

    return numbers
  end

  module_function
  def get_all_numbers_from_text(fromSource)
        numbers = []

    if fromSource.class == IO
      while line = fromSource.gets
        numbers = get_numbers_from_string(line, numbers)
      end
      elsif fromSource.class == String
        numbers = get_numbers_from_string(fromSource, numbers)
    end

    return numbers
  end

  module_function
  def get_sorted_numbers_array(nmax, numbers)
    numbers = numbers.uniq
    #сортируем массив по убыванию
    numbers = numbers.sort { |a, b| b <=> a  }
    #выбираем n чисел из массива
    numbers = numbers[0, nmax]

    return numbers
  end

  module_function
  def get_numbers(nmax, fromSource)
    return get_sorted_numbers_array(nmax, get_all_numbers_from_text(fromSource))
  end
end
