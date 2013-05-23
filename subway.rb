@n_line = ['Times Square', 'N34th', 'N28th', 'N23rd', 'Union Square', 'N8th']
@l_line = ['L8th', 'L6th', 'Union Square', 'L3rd', 'L1st']
@six_line = ['Grand Central', '33rd6', '28th6', '23rd6', 'Union Square', 'Astor Place']

def get_traveler_data

  while true

    puts "What line are you getting on at: the (N) line, the (L) line, the (six)th line?"
    startlinechoice = gets.chomp.to_s.downcase

    case startlinechoice
    when "n"
      line1 = @n_line
      puts "What stop are you getting on at?: 'Times Square', 'N34th', 'N28th', 'N23rd', 'Union Square', 'N8th' ?"
      start_stop = gets.chomp.to_s
      break
    when "l"
      line1 = @l_line
      puts "What stop are you getting on at?: 'L8th', 'L6th', 'Union Square', 'L3rd', 'L1st' ?"
      start_stop = gets.chomp.to_s
      break
    when "six"
      line1 = @six_line
      puts "What stop are you getting on at?: 'Grand Central', '33rd6', '28th6', '23rd6', 'Union Square', 'Astor Place' ?"
      start_stop = gets.chomp.to_s
      break
    else
      puts "Please pick a possible option!"
    end
  end

  while true

    puts "What line are you getting off at: the (N) line, the (L) line, the (six)th line?"
    endlinechoice = gets.chomp.to_s.downcase

    case endlinechoice
    when "n"
      line2 = @n_line
      puts "What stop are you getting off at?: 'Times Square', 'N34th', 'N28th', 'N23rd', 'Union Square', 'N8th' ?"
      end_stop = gets.chomp.to_s
      break
    when "l"
      line2 = @l_line
      puts "What stop are you getting off at?: 'L8th', 'L6th', 'Union Square', 'L3rd', 'L1st' ?"
      end_stop = gets.chomp.to_s
      break
    when "six"
      line2 = @six_line
      puts "What stop are you getting off at?: 'Grand Central', '33rd6', '28th6', '23rd6', 'Union Square', 'Astor Place' ?"
      end_stop = gets.chomp.to_s
      break
    else
      puts "Please pick a possible option!"
    end
  end

  return line1, line2, start_stop, end_stop

end

def stops_calculate(line1, line2, start_stop, end_stop)

  if line1 == line2

    stops = (line1.index(end_stop) - line1.index(start_stop)).abs

  elsif line1 != line2

      stops_line1_us = (line1.index(start_stop) - line1.index('Union Square')).abs
      stops_line2_us = (line2.index(end_stop) - line2.index('Union Square')).abs
      stops = stops_line1_us + stops_line2_us

    end

    return stops
  end


  line1, line2, start_stop, end_stop = get_traveler_data

  stops = stops_calculate(line1, line2, start_stop, end_stop)

  puts stops






