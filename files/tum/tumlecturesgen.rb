

require 'rubygems'
require 'open-uri'
require 'pp'
require 'nokogiri'

class Lecture
  attr_accessor :module_id,:title,:ects, :cycle,:language,:area,:name
  attr_reader :urlimytum
  @@urlimytum_root = "https://drehscheibe.in.tum.de/myintum/kurs_verwaltung/"
  @@area_xpath =  "//*[@id='content']/table/tr[15]/td[2]"

  def urlimytum=(value)
    @urlimytum =  @@urlimytum_root  + value + "&lang=en"  if not value.nil?
  end

  def fetch_area
    doc = Nokogiri::HTML(open(self.urlimytum));
    self.area = doc.xpath(@@area_xpath).inner_html    
    
  end
  
end






main_catalog_uri = "https://drehscheibe.in.tum.de/myintum/kurs_verwaltung/cmall.html.en"
main_catalog_file = "catalog.html"
#First we parse the main catalog webpage using nokogir... for now only
#interested in the MSC-INF courses

doc = Nokogiri::HTML(open(main_catalog_file));

puts doc.xpath("//table[@id='result']/*").size


msc_courses = Array.new


doc.xpath("//table[@id='result']/*").each {  |item| #TR
#From experimenting we know that
# index 0 => Module and link
# index 1 => Name 
# index 5 => ECTS
# index 7 => Cycle 
# index 9 => language
# index 11 => Programs avaiable
  

  if(!item.children[11].nil? and  item.children[11].inner_html.include? "MS-INF") then #Only from MSC informatics
    
    lecture  = Lecture.new
    lecture.urlimytum =  item.children[0].children[0]["href"]
    lecture.module_id =  item.children[0].children[0].inner_html.strip
    lecture.name = item.children[1].inner_html.strip
    lecture.ects = item.children[5].inner_html.strip
    lecture.cycle = item.children[7].inner_html.strip.split.join
    lecture.language = item.children[9].inner_html.strip
    
    msc_courses << lecture

   # pp lecture
    
  end

 
}


puts msc_courses.size

#look for the application area  - this is slow
msc_courses.each { |c| c.fetch_area }

# HTML Generation

header = <<-HEADER

<html>
<head>
<title>M.Sc. Informatics Courses</title>




<style type="text/css" media="screen">

/*====================================================
	- HTML Table Filter stylesheet
=====================================================*/
@import "filtergrid.css";

/*====================================================
	- General html elements
=====================================================*/

</style>
<style>
/* "Winter Blues" CSS theme for CSS Table Gallery (http://icant.co.uk/csstablegallery/) by Gunta Klavina (http://www.klavina.com) */

table {font: 85% "Lucida Grande", "Lucida Sans Unicode", "Trebuchet MS", sans-serif;padding: 0; margin: 0; border-collapse: collapse; color: #333; background: #F3F5F7;}

table a {color: #3A4856; text-decoration: none; border-bottom: 1px solid #C6C8CB;}  

table a:visited {color: #777;}

table a:hover {color: #000;}  

table caption {text-align: left; text-transform: uppercase;  padding-bottom: 10px; font: 200% "Lucida Grande", "Lucida Sans Unicode", "Trebuchet MS", sans-serif;}

table thead th {background: #3A4856; padding: 15px 10px; color: #fff; text-align: left; font-weight: normal;}

table tbody, table thead {border-left: 1px solid #EAECEE; border-right: 1px solid #EAECEE;}

table tbody {border-bottom: 1px solid #EAECEE;}
                      
table tbody td, table tbody th {padding: 10px; background: url("td_back.gif") repeat-x; text-align: left;}

table tbody tr {background: #F3F5F7;}

table tbody tr.odd {background: #F0F2F4;}

table tbody  tr:hover {background: #EAECEE; color: #111;}

table tfoot td, table tfoot th, table tfoot tr {text-align: left; font: 120%
"Lucida Grande", "Lucida Sans Unicode", "Trebuchet MS", sans-serif;
text-transform: uppercase; background: #fff; padding: 10px;}
</style>






<script language="javascript" type="text/javascript" src="tablefilter.js"></script>
<script src="sorttable.js"></script>

</head>






<table  id="table1" class="sortable">

	<!-- Table header -->
	
		<thead>
			<tr>
				<th scope="col" >Module Id</th>
                                <th scope="col" >Name</th>
                                <th scope="col" >ECTS</th>
                                <th scope="col" >Language</th>
                                <th scope="col" >Cycle</th>
                                <th scope="col" >Area</th>
                                <th scope="col" >My inTUM</th>
                             				
			</tr>
		</thead>
	
	
	<!-- Table body -->
	
		<tbody>
		


  
HEADER



footer = <<-FOOTER

		</tbody>

</table>


<script language="javascript" type="text/javascript">
//<![CDATA[
        var tableFilters = {
		btn: true,
	        col_2: "select",
                col_3: "select",
                col_4: "select",
                col_5: "select",
                col_6: "none"
            	
	}


	setFilterGrid("table1",0,tableFilters);
//]]>
</script>

</body>
</html>

FOOTER





File.open("courses.html",'w') { |courses_file|

  courses_file.puts(header)
  
  msc_courses.each { |c|
    
    courses_file.puts "<tr>"

    courses_file.puts "<td>#{c.module_id}</td>\n"
    courses_file.puts "<td>#{c.name}</td>\n"
    courses_file.puts "<td>#{c.ects}</td>\n"
    courses_file.puts "<td>#{c.language}</td>\n"
    courses_file.puts "<td>#{c.cycle}</td>\n"
    courses_file.puts "<td>#{c.area}</td>\n"
    courses_file.puts "<td><a href='#{c.urlimytum}'>Link</a></td>\n"
    
    courses_file.puts  "</tr>"
    
   

  }

  courses_file.puts(footer)

}





  
  
  






