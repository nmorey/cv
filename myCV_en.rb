# -*- coding: utf-8 -*-
require './cv'

cv = CV::Top.new()    
cv.language = :en

cv.firstName="Nicolas"
cv.lastName="Morey-Chaisemartin"
cv.title="Senior Linux Developper"
cv.address="36 Impasse de la Terrasse"
cv.city="74190 Passy"
cv.mobile="+33 6 95 20 31 74"
cv.email="nicolas@morey-chaisemartin.com"
cv.homepage="nicolas.morey-chaisemartin.com"
cv.extras << "29/06/1986"

#############
# Exp Pro
#############

entry = CV::Entry.new()
entry.date="March 2017!BR!upto now"
entry.title="Senior Linux Developer"
entry.company="SUSE"
entry.city="Home Office"
entry.details << "Centralize, package and support !B!Infiniband!B! and !B!Omni-Path!B!"+
                 " userspace tools and HPC libraries"
entry.details << "Develop and support RDMA !B!Kernel!B! modules"
entry.details << "Develop testsuites for Software/Hardware validation."
entry.details << "Customer feature developments and support"
entry.details << "Environment: RPM, OBS, Infiniband, Omni-Path, Networking, MPI, !B!Kernel!B!."
cv.professional << entry

entry = CV::Entry.new()
entry.date="April 2015!BR!upto March 2017"
entry.title="Network solutions manager"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Conception of a 80Gb/s smartNIC product"
entry.details << "Port and optimization of !B!OpenDataPlane!B! on MPPA."
entry.details << "Management of a 5 engineer team"
entry.details << "!B!High-speed PCI and Ethernet!B! interfaces support"
entry.details << "In charge of all Linux drivers: !B!PCI, netdev, AF ALG, crypto, RoCE, DPDK!B!"
entry.details << "Environment: MPPA, C, ODP, Ethernet, PCI, !B!Linux Drivers!B!."
cv.professional << entry

entry = CV::Entry.new()
entry.date="July 2013!BR!upto April 2015"
entry.title="Video solutions manager"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Design and development of a flexible !B!HEVC!B! core encoder optimized for MPPA"
entry.details << "Technical leader and management of a small development team"
entry.details << "Port, parallelization and optimization of MainConcept 4K !B!HEVC!B! encoder on MPPA"
entry.details << "Environment: MPPA, C, C++, Ruby, Parallel programming, HEVC."
cv.professional << entry

entry = CV::Entry.new()
entry.date="July 2009!BR!upto July 2013"
entry.title="Embedded software architect and developer"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Development of an embedded operating system and runtime libraries."
entry.details << "Development of a front-end !B!compiler!B! for a highly parallel streaming language."
entry.details << "Development of !B!scheduling, placing and routing!B! tools for streaming applications"
entry.details << "In charge of !B!continuous integration!B! using Git/Hudson."
entry.details << "IT Co-administrator."
entry.details << "!B!Agile/Scrum!B! Project Management."
entry.details << "Environment: !B!Embedded systems!B!, MPPA, C, Assembly, Ruby, Parallel programming."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Octobre 2008!BR!upto July 2009"
entry.title="Embedded System Engineer"
entry.company="Coframi"
entry.city="Meylan"
entry.details << "Consulting for Bull in the R\&D HPC Team: !B!Infiniband!B! expert."
entry.details << "Development of fault-tolerant !B!routing algorithms!B! (patents)."
entry.details << "Development of network monitoring solutions for large clusters."
entry.details << "Environment: Infiniband, Routage, QoS, !B!Linux drivers!B!, !B!HPC!B!."
cv.professional << entry

entry = CV::Entry.new()
entry.date="May 2008!BR!upto Septembre 2008"
entry.title="MSc Project"
entry.company="Northumbria University"
entry.city="Newcastle"
entry.country="UK"
entry.details << "Design and development of a !B!hard real-time micro-Kernel!B! for the Cell Broadband Engine."
entry.details << "Environment: !B!Multicore!B!, Real-Time, !B!Scheduling!B!, Synchronization, C, Assembly."
cv.professional << entry

entry = CV::Entry.new()
entry.date="June 2007!BR!upto August 2007"
entry.title="IT Intern"
entry.company="Allibert-Trekking"
entry.city="Montmélian"
entry.details << "User and server support on a Mac OS X infrastructure."
entry.details << "Deployment of !B!monitoring tools!B!."
entry.details << "Development of synchronization tools between inventory, administration and monitoring tools."
entry.details << "Environment: Mac OS X, Php, Perl, Python, Bash, MySQL, openDirectory."
cv.professional << entry

entry = CV::Entry.new()
entry.date="January 2007"
entry.title="Junior-Entreprise Consultant"
entry.company="MVA Limited"
entry.city="Grenoble"
entry.details << "Development of a GPS coordinate extraction tools using Google Maps."
entry.details << "Environment: !B!Java!B!, Swing."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Octobre 2006"
entry.title="Junior-Entreprise Consultant"
entry.company="Institut Laue-Langevin"
entry.city="Grenoble"
entry.details << "Porting of an objective-C crystallography demonstration application to Java."
entry.details << "Environment: Java, Swing, HTML."
cv.professional << entry

#entry = CV::Entry.new()
#entry.date="August 2003"
#entry.title="Intern"
#entry.company="Xyalis"
#entry.city="Grenoble"
#entry.details << "Development of !B!non-regression tools!B! for Xyalis complete software suite."
#entry.details << "Environment: Bash, Tcl, Tk."
#cv.professional << entry

# entry = CV::Entry.new()
# entry.date="July 2001"
# entry.title="Intern"
# entry.company="Xyalis"
# entry.city="Grenoble"
# entry.details << "Development of demonstration scripts for CAO tools."
# entry.details << "GUI integration of several tools."
# entry.details << "Live demonstration at an international micro-electronic exhibition in the USA.(DAC)."
# entry.details << "Environment: Tcl, Tk."
# entry.details << ""
# entry.details << ""
# entry.details << ""
# cv.professional << entry


#############
# Etudes
#############
entry = CV::Entry.new()
entry.date="2008"
entry.title="Computing Science Engineer"
entry.company="ENSIMAG"
entry.city="Grenoble"
cv.degrees << entry

entry = CV::Entry.new()
entry.date="2008"
entry.title="MSc in Embedded systems"
entry.company="Northumbria University"
entry.city="Newcastle"
entry.country="UK"
entry.details << "In parallel of the third year at ENSIMAG.."
cv.degrees << entry

#############
# Exp Perso
#############

entry = CV::Entry.new()
entry.date="2008!BR!upto Today"
entry.title="Contributions to Open Source projects"
entry.details << "Contribution to mailing list and development of !B!Linux!B!, !B!Git!B!, OpenSM, ODP."
entry.details << "!B!Maintainer!B! for rdma-core stable releases"
entry.details << "Occasional involvement in various projects: Sick-Beard, RBTools, libdbi..."
cv.personal << entry

entry = CV::Entry.new()
entry.date="2011!BR!upto Today"
entry.title="Damage (DAtabase MetA GEnerator)"
entry.details << "Development of a script toolset for custom database generation."
entry.details << "Generates a complete access and modification API for C, Java, Ruby to XML/YAML/Binary databases from a simple YAML description."
entry.details << "Environnement: Ruby, GPL."
cv.personal << entry

entry = CV::Entry.new()
entry.date="2006"
entry.title="Participation to  IBM Cell B.E. Contest"
entry.details << "Development of a generic Open Source !I!producer/consumer!I! framework for Cell clusters."
entry.details << "Environment: C++, sockets."
cv.personal << entry

entry = CV::Entry.new()
entry.date="2005!BR!upto 2007"
entry.title="IT Administrator of N'Sigma, ENSIMAG Junior-Entreprise"
entry.details << "Administration of a mixed Linux/Windows network."
entry.details << "Participation to cost assessments of N'Sigma contracts."
cv.personal << entry

# entry = CV::Entry.new()
# entry.date="2005"
# entry.title="Development of a micro-controller"
# entry.details << "Development and debug of an 8bit micro-controller with VGA output on a FPGA."
# cv.personal << entry

# entry = CV::Entry.new()
# entry.date="2004"
# entry.title="National programming contest Prologin"
# entry.details << "Development of an AI for a strategy game."
# entry.details << "Ranked !B!5th!B!."
# cv.personal << entry

#############
# Skills
#############
infoSkills=[]
skill = CV::Skill.new()
skill.type = "Languages"
skill.content= "!B!C!B!, !B!Ruby!B!, Java, Assembly, Ada, Php, C++, MPI"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Graphical Environment"
skill.content="!B!X11!B!, Gtk, Tk, Swing, !B!Qt!B!"
infoSkills << skill

skill = CV::Skill.new()
skill.type = "Tools"
skill.content= "Emacs, Netbeans, Eclipse, gcc, !B!gdb!B!"
infoSkills << skill

skill = CV::Skill.new()
skill.type = "Video"
skill.content= "!B!H.265!B!, x265"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Operating Systems"
skill.content="!B!Kernel!B!, Parallel programming, !B!Drivers!B!, Signals, RPM packaging"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Version control"
skill.content="!B!Git!B!, !B!Gitolite!B!, !B!Jenkins!B!, OBS, CVS, SVN, SCCS"
infoSkills << skill

skill = CV::Skill.new()
skill.type="System Administration"
skill.content="!B!Linux!B!, FreeBSD, Samba, Postfix, Apache, Shell scripting, Bash, Sed, Awk"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Networking"
skill.content="Routage, TCP/IP, Ethernet, !B!Sockets!B!, QoS, !B!Infiniband!B!, !B!Omni-Path!B!, ODP"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Databases"
skill.content="!B!SQL!B!, Oracle, MySQL, LDAP, !B!Design!B!, Optimisation"
infoSkills << skill

# skill = CV::Skill.new()
# skill.type="Software Design"
# skill.content="!B!UML!B!"
# infoSkills << skill

# skill = CV::Skill.new()
# skill.type="Hardware Design"
# skill.content="!B!VHDL!B!, Modelsim"
# infoSkills << skill

skill = CV::Skill.new()
skill.type="Mathematic Tools"
skill.content="Matlab, CoinOR, GPLK"
infoSkills << skill

cv.skills["Computer"] = infoSkills

#############
# Lang
#############
lang= CV::Language.new()
lang.lang = "French"
lang.level = "Native speaker"
cv.languages << lang

lang= CV::Language.new()
lang.lang = "English"
lang.level = "Bilingual"
lang.more = "TOEFL Score:100/120"
cv.languages << lang

#############
# Patents
#############
patent= CV::Patent.new()
patent.reference = "WO2011001362"
patent.title = "Methods and devices for evaluating interconnection efficiency of parallel computer networks based upon static routing schemes"
cv.patents << patent
patent= CV::Patent.new()
patent.reference = "WO2011151569"
patent.title = "Method of pseudo-dynamic routing in a cluster comprising static communication links and computer program implementing this method"
cv.patents << patent
patent= CV::Patent.new()
patent.reference = "WO2011144848"
patent.title = "Method of optimizing routing in a cluster comprising static communication links and computer program implementing this method"
cv.patents << patent

#############
# Other
#############
ot = CV::Other.new()
ot.cat="Hobbies"
ot.more = "Mountains, photography, traveling, guitar."
cv.other << ot

ot = CV::Other.new()
ot.cat="Sport"
ot.more = "Mountaineering, rock climbing, hiking, ski and ski touring."
cv.other << ot

# ot = CV::Other.new()
# ot.cat="Sport"
# ot.more = "Former hang-glider pilot, member of the French Youth National team."
# cv.other << ot

###############
# HTML STUFF
###############
cv.header= "
<table class='header-menu' cellpadding='5' cellspacing='2'>
<td class='header-cell'><a href=' index_fr.html'><img src='fr_flag.jpg' height='30' width='50' alt='FR'></a></td>
<td class='header-cell'><a href='index_en.html'><img  src='uk_flag.jpg' height='30' width='50' alt='EN'></a></td>
<td class='header-cell'><a href='/photos/'>Photos</a></td>
<td class='header-cell'><a href='https://github.com/nmorey/'>My GitHub Stuff</a></td>
<td class='header-cell'><a href='cv-en.pdf'> CV</a></td>
</tr></table>"
cv.middleStuff="
                <a href=\"cv-en.pdf\"> CV PDF in English </a><br>
                <a href=\"cv-fr.pdf\"> CV PDF in French</a><br><br>
                <a href=\"photos/\">Take a look at my pictures from hikes and holidays!!</a><br>
"
cv.footer = "
<script type=\"text/javascript\">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-21010187-1']);
  _gaq.push(['_setDomainName', 'morey-chaisemartin.com']);
  _gaq.push(['_setAllowLinker', true]);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<div style=\"font-size:0px\">"

cv.fuzzy_block(cv.categories(), cv.keywords(), 1) {|prefix, keyword|
     cv.footer += "<a class=\"user_link\" href=\"" + prefix + "/" + keyword + ".html\">" +
        keyword + "</a>"
}


#############
# THE END
#############
@EN_CV = cv

cv.fuzzy("fuzzy_dir", "index.html", "https://nicolas.morey-chaisemartin.com", 1)
cv.toTeX('cv-en.tex')
cv.toHTML('index.html')

