def seating_students(arr)
  all_seats = arr[0]
  # allSeats = [12]

  arr.delete_at(0) # 12
  # arr = [2, 6, 7]

  available_seats = (1..all_seats).to_a
  # _s = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

  arr.each do |x|
    available_seats.delete(x) if available_seats.include?(x)
  end
  # _s = [1, 3, 4, 5, 8, 9, 10, 11, 12]

  counter = 0
  available_seats.each do |seat|
    if seat.odd?
      if available_seats.include?(seat + 1) && available_seats.include?(seat + 2)
        counter += 2
        # puts "I add 2 while in seat #{seat}"
      elsif available_seats.include?(seat + 1) || available_seats.include?(seat + 2)
        counter += 1
        # puts "I add 1 while in seat #{seat}"
      end
    else
      counter += 1 if available_seats.include?(seat + 2)
      # puts "I add 1 while in seat #{seat}"
    end
  end
  "Possible combinations: #{counter}"
end

array1 = [12, 2, 6, 7]
puts seating_students(array1) # output should be 8
