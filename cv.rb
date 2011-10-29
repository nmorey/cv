#!/usr/bin/ruby
# -*- coding: utf-8 -*-
module CV
    def stringToTeX(str)
        return str.gsub(/!BR!/, "\\newline{}").gsub(/!B!.*!B!/) { |n|
            "\\textbf{" + n.gsub(/!B!/, "") +"}"
            }.gsub(/!I!(.*)!I!/) { |n|
            "$" + n.gsub(/!I!/, "") +"}"
            }
    end
    module_function :stringToTeX
    def stringToBasicHTML(str)
        str.gsub(/é/, "&eacute;"
    end
    class Top
        attr_accessor :firstName, :lastName, :title, :address, :city,
        :mobile, :email, :homepage, :extras, :professional, :degrees,
        :personnal, :skills, :other
        def initialize()
            @extras=[]
            @professional=[]
            @degrees=[]
            @personnal=[]
            @skills=[]
            @other=[]
        end
        def toTeX(filename)
            file = File.open(filename, "w")
            file.puts "\\documentclass[10pt,a4paper]{moderncv}
\\moderncvtheme[blue]{classic}                
\\usepackage[utf8]{inputenc}
\\usepackage[scale=0.8]{geometry}

"
            file.puts "\\firstname{#{@firstName}}" if @firstName != nil
            file.puts "\\familyname{#{@lastName}}" if @lastName != nil
            file.puts "\\title{#{@title}}" if @title != nil
            file.puts "\\address{#{@address}}{#{@city}}" if @address != nil || @city != nil
            file.puts "\\mobile{#{@mobile}}" if @mobile != nil
            file.puts "\\email{#{@email}}" if @email != nil
            file.puts "\\homepage{#{@homepage}}" if @homepage != nil
            @extras.each() {|extra|
                file.puts "\\extrainfo{#{extra}}"
            }
            
            file.puts "
\\begin{document}
\\maketitle"
            file.puts "\\section{Expérience professionelle}" if @professional.length != 0
            @professional.each() {|prof|
                prof.toTeX(file)
            }
            file.puts "\\end{document}"
            file.close()
        end
        def toHTML(filename)
            file = File.open(filename, "w")
            file.puts "
<body>
<table><tr>
<td>
 <span class='cv-name'>#{@firstName} #{lastName}</span><br />
 <span class='cv-title'>#{@title}</span>
</td>
<td>"
            file.puts "<span class='cv-coord'>#{@address}</span><br />" if @address != nil
            file.puts "<span class='cv-coord'>#{@city}</span><br />" if @city != nil
            file.puts "<span class='cv-coord'>#{@mobile}</span><br />" if @mobile != nil
            file.puts "<span class='cv-coord'>#{@email.gsub(/\./, " DOT ").gsub(/@/, " AT ")}</span><br />" if @email != nil
            file.puts "<span class='cv-coord'><a href='http://#{@homepage}'>#{@homepage}</a></span><br />" if @homepage != nil
            @extras.each() {|extra|
                file.puts "<span class='cv-coord'>#{extra}</span><br />"
            }
file.puts"</td>
</tr>
</table>
</body>"
            file.close()
        end
    end


    class Entry
        attr_accessor :date, :title, :company, :city, :country, :details
        def initialize()
            @details=[]
        end
        def toTeX(file)
            file.puts "\\cventry{#{@date}}{#{@title}}{#{@company}}{#{@city}}{#{@country}}{"
            if @details.length > 0 then
                file.puts "\\begin{itemize}"
                @details.each() {|detail|
                    file.puts "\\item[-]{#{CV::stringToTeX(detail)}}"
                }
                file.puts "\\end{itemize}"
            end
            file.puts "}"
        end
    end
end
cv = CV::Top.new()    
cv.firstName="Nicolas"
cv.lastName="Morey-Chaisemartin"
cv.title="Développeur Logiciel et !BR!Systèmes Embarqués"
cv.address="8 Rue Tristan Corbière"
cv.city="38400 Saint Martin d'Hères"
cv.mobile="+33 6 78 31 51 62"
cv.email="nicolas@morey-chaisemartin.com"
cv.homepage="nicolas.morey-chaisemartin.com"
cv.extras << "29/06/1986"

entry = CV::Entry.new()
entry.date="Juillet 2009 à Aujourd'hui"
entry.title="Architecte et développeur logiciel embarqué"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Développement de système d'exploitation et de librairies runtime pour l'embarqué."
entry.details << "Développement d'un !B!compilateur!B! front-end pour un langage de Streaming hautement parallèle"
entry.details << "Responsable de l'!B!intégration continue!B! sous Git/Hudson"
entry.details << "Co-Administrateur IT"
entry.details << "Environnement; !B!Systèmes embarqués!B!, MPPA, C, Assembleur, Ruby, Programation parallèle" 
cv.professional << entry

cv.toTeX("output.tex")
cv.toHTML("output.html")
