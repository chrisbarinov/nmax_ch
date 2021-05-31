module WorkText

  def get_all_numbers_from_text(text)
    digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    numbers = []
    nextDigits = ""

    while line = text.gets
      line.each_char do |ch|
        if digits.include?(ch)
          nextDigits += ch
        elsif nextDigits != ""
          numbers.append(nextDigits.to_i)
          nextDigits = ""
        end
      end
    end

    return numbers
  end

  def get_sorted_numbers_array(nmax, numbers)
    numbers = numbers.uniq
    #сортируем массив по убыванию
    numbers = numbers.sort { |a, b| b <=> a  }
    #выбираем n чисел из массива
    numbers = numbers[0, nmax]

    return numbers
  end

  def get_numbers(nmax)
    return get_sorted_numbers_array(nmax, get_all_numbers_from_text(STDIN))
  end
end
