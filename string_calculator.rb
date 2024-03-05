class StringCalculator
  def self.add(numbers)
    raise "negative numbers not allowed: #{numbers.scan(/-\d+/).join(', ')}" if numbers.include?('-')

    delimiter = ','
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    end

    numbers.split(/#{delimiter}|\n/).map(&:to_i).sum
  end
end
