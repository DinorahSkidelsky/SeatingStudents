def SeatingStudents(arr)
  allSeats = arr[0]
  # allSeats = [12]

  arr.delete_at(0) # 12
  # arr = [2, 6, 7]

  availableSeats = (1..allSeats).to_a
  # availableSeats = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

  arr.each do |x|
    if availableSeats.include?(x)
      availableSeats.delete(x)
    end
  end
  # availableSeats = [1, 3, 4, 5, 8, 9, 10, 11, 12]

  counter = 0
  availableSeats.each do |seat|
    if seat % 2 == 1
      if availableSeats.include?(seat+1) && availableSeats.include?(seat+2)
        counter += 2
        # puts "I add 2 while in seat #{seat}"
      elsif availableSeats.include?(seat+1) || availableSeats.include?(seat+2)
        counter += 1
        # puts "I add 1 while in seat #{seat}"
      end
    else
      counter += 1 if availableSeats.include?(seat+2)
      # puts "I add 1 while in seat #{seat}"
    end
  end
  return "Possible combinations: #{counter}"
end

array1 = [12, 2, 6, 7]
puts SeatingStudents(array1) # output should be 8
