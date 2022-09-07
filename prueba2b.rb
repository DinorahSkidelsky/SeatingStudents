def SeatingStudents(arr)

  k = arr[0]
  # k = 12

  occupied = arr[1..k]
  # occupied = 2, 6, 7

  rows = (k/2).to_i
  # rows = 6

  seats = []
  x = 0
  for i in (0..rows)
    seats.push([])
    for j in (0..2)
      if (x + 1) == occupied
        full_seat = True
      else
        full_seat = False
      end
      seats[i].push(full_seat).to_s
      x+=1
    end
  end


  seating = 0
  for i in (rows..-1)
    if (seats[i][0] == False) && (seats[i][1] == False)
      seating+=1
    elsif (seats[i][0] == False) && (seats[i+1][0] == False)
      seating+=1
    else (seats[i][1] == False) && (seats[i + 1][1] == False)
      seating+=1
    end
  if (seats[rows - 1][0] == False) && (seats[rows - 1][1] == False)
    seating+=1
  end
  end

end


array1 = [12, 2, 6, 7]
puts SeatingStudents(array1)
