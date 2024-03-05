class StringCalculator
  def self.add(numbers)
    raise "negative numbers not allowed: #{numbers.scan(/-\d+/).join(', ')}" if numbers.include?('-')

    delimiter = ','
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    end

    compute_numbers = numbers.split("#{delimiter}").map do |elem| 
      if elem.include?("\n")
        elem.split("\n")
      else
        elem
      end
    end

    compute_numbers.flatten.map(&:to_i).sum
  end
end
