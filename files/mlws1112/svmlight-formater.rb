require 'rubygems'
require 'faster_csv'

variables = Array.new
filter = false

if($ARGV[0]=="-f") then
  puts "-f is on"
  filter = true
  
  File.open("variables.txt").each_line { |line|
    variables << line.gsub("\"","").chomp
    
  }
puts variables

end

myfile = File.open("overfitting-svmlight-filtered.txt","w")    
 
 FasterCSV.foreach("overfitting.csv", :col_sep =>',', :row_sep =>:auto,
 :headers => true) do |row|
  str = ""
  cls = 0
 # puts row['train']
  if(row['train'].to_i == 1) then
     cls = row['Target_Practice'].to_i 
     cls = -1 if cls  == 0 
       
   end
  str = "#{cls} " 
  i = 1
  (1..200).each  { |x|
    rowid = "var_#{x}"
   # puts variables.include?(rowid)
    if(variables.include?(rowid)) then
      value = row[rowid]
      str = str + " #{i}:#{value}"
      i = i + 1
    end
        
  }
   
  myfile.puts(str)
  
 
end

