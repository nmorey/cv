#!/usr/bin/ruby
# -*- coding: utf-8 -*-
require 'rubygems'
require 'htmlentities'

module CV
    PROF_EXP={:en => "Work Experience", :fr => "Expérience Professionelle"}
    DEGREES ={:en=> "Education", :fr=>"Diplômes et Études"}
    PERSONAL ={:en=> "Personal Experience", :fr=>"Expérience Personnelle"}
    SKILLS ={:en=> "Skills", :fr=>"Compétences"}
    OTHERS ={:en=> "Others", :fr=>"Divers"}
    LANGUAGES ={:en=> "Languages", :fr=>"Langages"}
    PATENTS ={:en=> "Patents", :fr=>"Brevets"}

    def stringToTeX(str)
        return nil if str == nil
        return str.gsub(/!BR!/, "\\\\\\").gsub(/&/, '\\\&').gsub(/€/, '\\texteuro').gsub(/!B!.*!B!/) { |n|
            "\\textbf{" + n.gsub(/!B!/, "") +"}"
            }.gsub(/!I!(.*)!I!/) { |n|
            "$" + n.gsub(/!I!/, "") +"$"
            }
    end

    module_function :stringToTeX
    def stringToBasicHTML(str)
        return nil if str == nil
        coder = HTMLEntities.new
        return coder.encode(str, :named)
    end
    module_function :stringToBasicHTML
    def stringToText(str)
        return nil if str == nil
        return str.gsub(/!BR!/, "").gsub(/!B!.*!B!/) { |n|
            n.gsub(/!B!/, "")
        }.gsub(/!I!(.*)!I!/) { |n|
            n.gsub(/!I!/, "")
        }
    end
    module_function :stringToText

    def HTMLputs(file, str)
        str = str.gsub(/!BR!/, "<br />").gsub(/é/, "&eacute;").gsub(/è/, "&egrave;").gsub(/à/, "&agrave;").gsub(/!B!.*!B!/) { |n|
            "<b>" + n.gsub(/!B!/, "") +"</b>"
            }.gsub(/!I!(.*)!I!/) { |n|
            "<i>" + n.gsub(/!I!/, "") +"</i>"
            }
        file.puts str
    end
    module_function :HTMLputs

    class Top
        attr_accessor :firstName, :lastName, :title, :address, :city,
        :mobile, :email, :homepage, :extras, :professional, :degrees,
        :personal, :skills, :skill_cols, :languages,:other, :patents, :language, :pagetitle,
        :header, :footer, :middleStuff
        def initialize()
            @extras=[]
            @professional=[]
            @degrees=[]
            @personal=[]
            @skills={}
            @skills_cols = 2
            @other=[]
            @language = :fr
            @languages=[]
            @patents=[]
        end
        def toTeX(filename)
            file = File.open(filename, "w")
            file.puts "\\documentclass[10pt,a4paper]{moderncv}
\\moderncvstyle{classic}
\\moderncvcolor{blue}
\\moderncvicons{awesome}
\\usepackage[scale=0.8]{geometry}
"
            file.puts "\\name{#{@firstName.to_s()}}{#{@lastName.to_s()}}"
            file.puts "\\title{#{CV::stringToTeX(@title).gsub('\\\\', ' ')}}" if @title != nil
            file.puts "\\address{#{@address}}{#{@city}}" if @address != nil || @city != nil
            file.puts "\\phone[mobile]{#{@mobile}}" if @mobile != nil
            file.puts "\\email{#{@email}}" if @email != nil
            file.puts "\\homepage{#{@homepage}}" if @homepage != nil
            @extras.each() {|extra|
                file.puts "\\extrainfo{#{extra}}"
            }
            
            file.puts "
\\begin{document}
\\maketitle"
            file.puts "\\section{#{CV::PROF_EXP[@language]}}" if @professional.length != 0
            @professional.each() {|prof|
                prof.toTeX(file)
            }

            file.puts "\n\\section{#{CV::DEGREES[@language]}}" if @degrees.length != 0
            @degrees.each() {|prof|
                prof.toTeX(file)
            }

            file.puts "\n\n\\section{#{CV::PERSONAL[@language]}}" if @personal.length != 0
            @personal.each() {|prof|
                prof.toTeX(file)
            }

            file.puts "\n\n\\section{#{CV::SKILLS[@language]}}" if @skills.length != 0  ||
                @languages.length != 0
            @skills.each() {|skill_type, skill_list|

                cat = skill_type
                cols = @skills_cols
                if skill_type.kind_of?(Hash) then
                    cat = skill_type[:name]
                    cols = skill_type[:cols] if skill_type[:cols].to_s() != ""
                end

                file.puts "\n\n\\subsection{#{CV::stringToTeX(cat)}}"
                inLine = 0

                case cols
                when 1
                    skill_list.each(){|skill|
                        CV::HTMLputs(file, "\n\n\\cvline")
                        skill.toTeX(file)
                    }
                when 2
                    skill_list.each(){|skill|
                        CV::HTMLputs(file, "\n\n\\cvcomputer") if inLine == 0
                        skill.toTeX(file)
                        inLine += 1
                        inLine = 0 if inLine == 2
                    }
                    file.puts "{}{}" if inLine != 0
                else
                    raise("Invalid # of skill columns")
                end
            }
            file.puts "\n\n\\subsection{#{CV::LANGUAGES[@language]}}" if @languages.length != 0
            @languages.each(){|lang|
                lang.toTeX(file)
            }
            file.puts "\n\n\\section{#{CV::PATENTS[@language]}}" if @patents.length != 0
            @patents.each(){|lang|
                lang.toTeX(file)
            }
            file.puts "\n\n\\section{#{CV::OTHERS[@language]}}" if @other.length != 0
            @other.each(){|ot|
                ot.toTeX(file)
            }
            file.puts "\\end{document}"
            file.close()
        end



        def toHTML(filename)
            file = File.open(filename, "w")
            CV::HTMLputs(file, "
<html>
<head><title>#{@firstName} #{@lastName}</title>
<meta name='description' content=\"#{@firstName} #{@lastName}'s Web Page\" >
<meta name='keywords' content='#{@firstName}, @{lastName}, CV, #{@keywords}' >
<meta name='robots' content='all'>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<link rel='stylesheet' type='text/css' href='cv.css'> 
</head>
<body>
#{@header}
<table width='100\%'><tr>
<td><img src='cv-pic.jpg' alt='MyPicture' height='300' ></td><td >
 <span class='cv-name'>#{@firstName} #{lastName}</span><br /><br />
 <span class='cv-title'>#{@title}</span>
</td>
<td>")

            CV::HTMLputs(file, "<span class='cv-coord'>#{@address}</span><br />") if @address != nil
            CV::HTMLputs(file, "<span class='cv-coord'>#{@city}</span><br />") if @city != nil
            CV::HTMLputs(file, "<span class='cv-coord'>#{@mobile}</span><br />") if @mobile != nil
            if @email != nil
                CV::HTMLputs(file, "<span class='cv-coord'>#{@email.gsub(/\./, " DOT ").gsub(/@/, " AT ")}</span><br />")
            end
            if @homepage != nil
                CV::HTMLputs(file, "<span class='cv-coord'><a href='http://#{@homepage}'>#{@homepage}</a></span><br />") 
            end
            @extras.each() {|extra|
                CV::HTMLputs(file, "<span class='cv-coord'>#{extra}</span><br />")
            }
            CV::HTMLputs(file,"</td>\n</tr>\n</table><br />#{middleStuff}")

            CV::HTMLputs(file, "<br /> <br /><table width='100%'>")

            #Professional
            CV::HTMLputs(file, "<tr><td class='section-filler'></td>" +
                         "<td colspan=3 class='section-title'>" +
                         "#{CV::stringToBasicHTML(CV::PROF_EXP[@language])}</td></tr>"
                         ) if @professional.length != 0

           @professional.each() {|prof|
                CV::HTMLputs(file, "<tr class='entry-padding'></tr>")
                prof.toHTML(file)
            }

            # Degress
            CV::HTMLputs(file, "<tr class='padding-tr'></tr>")

            CV::HTMLputs(file, "<tr><td class='section-filler'></td>" +
                         "<td class='section-title'>" +
                         "#{CV::stringToBasicHTML(CV::DEGREES[@language])}</td></tr>"
                         ) if @degrees.length != 0
           @degrees.each() {|prof|
                CV::HTMLputs(file, "<tr class='entry-padding'></tr>")
               prof.toHTML(file)
            }

            CV::HTMLputs(file, "<tr class='padding-tr'></tr>")

            # Personal
            CV::HTMLputs(file, "<tr class='padding-tr'></tr>")

            CV::HTMLputs(file, "<tr><td class='section-filler'></td>" +
                         "<td class='section-title'>" +
                         "#{CV::stringToBasicHTML(CV::PERSONAL[@language])}</td></tr>"
                         ) if @personal.length != 0
           @personal.each() {|prof|
                CV::HTMLputs(file, "<tr class='entry-padding'></tr>")
                prof.toHTML(file)
            }
            CV::HTMLputs(file, "<tr class='padding-tr'></tr>")


            # Skills
            CV::HTMLputs(file, "<tr><td class='section-filler'></td><td colspan=3 class='section-title'>" +
                         "#{CV::stringToBasicHTML(CV::SKILLS[@language])}</td></tr>"
                         ) if @skills.length != 0 || @languages.length != 0
            @skills.each() {|skill_type, skill_list|
                CV::HTMLputs(file, "<tr><td></td><td class='skill-title'>" +
                             "#{skill_type}</td></tr>")
                inLine = 0
                skill_list.each(){|skill|
                    CV::HTMLputs(file, "<tr>") if inLine == 0
                    skill.toHTML(file)
                    inLine +=1
                    if inLine == 2
                        CV::HTMLputs(file, "</tr>") 
                        inLine = 0
                    end
                    
                }
                if(inLine  != 0)
                    CV::HTMLputs(file, "</tr>") 
                end
                CV::HTMLputs(file, "<tr class='skill-padding'></tr>")
            }

            CV::HTMLputs(file, "<tr><td></td><td class='skill-title'>" +
                         "#{CV::LANGUAGES[@language]}</td></tr>") if @languages.length != 0
            @languages.each() {|lang|
                lang.toHTML(file)
            }


            CV::HTMLputs(file, "<tr class='padding-tr'></tr>")
            CV::HTMLputs(file, "<tr><td class='section-filler'></td>" +
                         "<td class='section-title'>" +
                         "#{CV::stringToBasicHTML(CV::PATENTS[@language])}</td></tr>"
                         ) if @patents.length != 0
            @patents.each() {|patent|
                patent.toHTML(file)
            }

           # Other
            CV::HTMLputs(file, "<tr class='padding-tr'></tr>")

            CV::HTMLputs(file, "<tr><td class='section-filler'></td>" +
                         "<td class='section-title'>" +
                         "#{CV::stringToBasicHTML(CV::OTHERS[@language])}</td></tr>"
                         ) if @other.length != 0
           @other.each() {|prof|
                prof.toHTML(file)
            }

            CV::HTMLputs(file, "<tr class='padding-tr'></tr>")
            CV::HTMLputs(file, "<tr class='padding-tr'></tr>")
            CV::HTMLputs(file, "<tr class='padding-tr'></tr>")
            CV::HTMLputs(file,"</table>#{@footer}</body>")
            file.close()
        end

        def keywords()
            @skills.map() {|skill_type, skill_list|
                skill_list.map() {|skill|
                    skill.content.split(",").map(){|unique_skill|
                        CV::stringToText(unique_skill).strip().gsub(/\s+/, "-").gsub('/', "-").downcase
                    }
                }
            }.flatten().uniq() + [ "cv", "cursus" ]
        end
        def categories()
             categories = [
                @firstName.downcase() + "-" + @lastName.downcase(),
                @lastName.downcase(),
                @title.downcase().gsub(/\s+/, "-"),
            ]
            categories += (professional.map(){|entry| entry.company.gsub(/\s+/, "-").downcase() } +
              degrees.map(){|entry| entry.company.gsub(/\s+/, "-").downcase() }).uniq()
            return categories
        end

        def fuzzy_block(categories, keywords, max_depth, prefix="", depth=0, used_keywords=[], &block)
            keywords.each(){|keyword|
                next if used_keywords.index(keyword) != nil
                yield(prefix, keyword)
            }
            if depth < max_depth then
                (categories + keywords).each(){|sub_cat|
                    next if used_keywords.index(sub_cat) != nil
                    fuzzy_block(categories, keywords, max_depth,
                                  prefix + "/" + sub_cat,
                                  depth + 1, used_keywords + [sub_cat], &block)
                }
            end
        end
        def fuzzy(fuzzy_dir, target, url, max_depth)
            keywords=keywords()
            categories = categories()

            `rm -Rf #{fuzzy_dir}; mkdir #{fuzzy_dir}`

            here = Dir.pwd()

            Dir.chdir(fuzzy_dir)
            categories.each(){|cat|
                `ln -s . #{cat}`
            }
            keywords.each(){|keyword|
                `ln -s . #{keyword}`
                `ln -s #{target} #{keyword}.html`
            }
            xml_handle = File.open("sitemap.xml", "w+")
            html_handle = File.open("sitemap.html", "w+")
            d = Time.new()

            xml_handle.puts('<?xml version="1.0" encoding="UTF-8"?>')
            xml_handle.puts('<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">')

            html_handle.puts("<html><head><title>Sitemap</title></head><body>")
            fuzzy_block(categories, keywords, max_depth) {|prefix, keyword|
                xml_handle.puts("<url>")
                xml_handle.puts("\t<loc>" + url + prefix + "/" + keyword + ".html</loc>")
                xml_handle.puts("\t<lastmod>" + d.strftime("%Y-%m-%d") + "</lastmod>")
                xml_handle.puts("</url>")

                html_handle.puts("<a href=\"" + url + prefix + "/" + keyword + ".html\">" +
                                 (prefix.gsub(/[-\/]/, " ") + " " + keyword).strip() + "</a><br />")
            }
            xml_handle.puts('</urlset>')
            xml_handle.close()

            html_handle.puts("</body></html>")
            html_handle.close()

            Dir.chdir(here)
        end
    end

    class Language
        attr_accessor :lang, :level, :more
        def initialize()
        end
        def toTeX(file)
               file.puts "\\cvlanguage{#{@lang}}{#{@level}}{#{CV::stringToTeX(@more)}}"
        end
        def toHTML(file)
               CV::HTMLputs(file, "<tr><td class='lang'>#{@lang}</td>\n" +
                            "<td>#{CV::stringToBasicHTML(@level)}</td>\n" +
                            "<td></td><td>#{CV::stringToBasicHTML(more)}</td></tr>")
        end
    end
    class Other
        attr_accessor :cat, :more
        def initialize()
        end
        def toTeX(file)
               file.puts "\\cvline{#{@cat}}{#{CV::stringToTeX(@more)}}"
        end
        def toHTML(file)
               CV::HTMLputs(file, "<tr><td class='entry-other'>#{@cat}</td>\n" +
                            "<td colspan=3>#{CV::stringToBasicHTML(@more)}</td></tr>")
        end
    end
    class Entry
        attr_accessor :date, :title, :company, :city, :country, :details
        def initialize()
            @details=[]
        end
        def toTeX(file)
            file.printf "\\cventry{#{CV::stringToTeX(@date)}}"+
                "{#{CV::stringToTeX(@title)}}{#{@company}}{#{@city}}{#{@country}}{"
            if @details.length > 0 then
                file.puts "\\begin{itemize}"
                @details.each() {|detail|
                    file.puts "\\item[#{detail != "" ? "-" : ""}]{#{CV::stringToTeX(detail)}}"
                }
                file.puts "\\end{itemize}"
            end
            file.puts "}"
        end
        def toHTML(file)
            CV::HTMLputs(file, "<tr><td>#{CV::stringToBasicHTML(@date)}</td>"+
                         "<td colspan=3><b>#{@title}</b>")
            CV::HTMLputs(file, ", <i>#{@company}</i>") if @company != nil
            CV::HTMLputs(file, ", #{@city}") if @city != nil
            CV::HTMLputs(file, ", #{@country}") if @country != nil
#            CV::HTMLputs(file, ".<br />")
            @details.each() {|detail|
                next if detail == ""
                CV::HTMLputs(file, "<li>#{detail}<br />")
            }
                CV::HTMLputs(file, "</td></tr>")
        end
    end

    class Skill
        attr_accessor :type, :content
        def initialize()
        end
        def toTeX(file)
            file.puts "{#{CV::stringToTeX(@type)}}{#{CV::stringToTeX(@content)}}"
        end
        def toHTML(file)
            CV::HTMLputs(file, "<td class='skill-name'>#{@type}</td><td>#{@content}</td>")
        end
    end
    class Patent
        attr_accessor :reference, :title
         def initialize()
        end
        def toTeX(file)
            file.puts "\\cvline{#{@reference}}{#{CV::stringToTeX(@title)}}"
        end
        def toHTML(file)
            CV::HTMLputs(file, "<tr><td class='entry-other'>#{@reference}</td>\n" +
                         "<td colspan=3>#{CV::stringToBasicHTML(@title)}</td></tr>")
        end
    end

end
