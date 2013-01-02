

File.open("outfile.txt").each_line { |line|
     if(line.to_f < 0.0)
       puts "0"
     else
       puts "1"
     end
}
