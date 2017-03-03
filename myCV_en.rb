# -*- coding: utf-8 -*-
require './cv'

cv = CV::Top.new()    
cv.language = :en

cv.firstName="Nicolas"
cv.lastName="Morey-Chaisemartin"
cv.title="Embedded Software Architect / Developer"
cv.address="103 Rue du Mont Blanc"
cv.city="74700 Sallanches"
cv.mobile="+33 6 95 20 31 74"
cv.email="nicolas@morey-chaisemartin.com"
cv.homepage="nicolas.morey-chaisemartin.com"
cv.extras << "29/06/1986"

#############
# Exp Pro
#############

entry = CV::Entry.new()
entry.date="April 2015!BR!upto Today"
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

entry = CV::Entry.new()
entry.date="August 2003"
entry.title="Intern"
entry.company="Xyalis"
entry.city="Grenoble"
entry.details << "Development of !B!non-regression tools!B! for Xyalis complete software suite."
entry.details << "Environment: Bash, Tcl, Tk."
cv.professional << entry

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
skill.content= "!B!C!B!, !B!Ruby!B!, Java, Assembleur, Ada, Php, C++"
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
skill.content="!B!Kernel!B!, Parallel programming, !B!Drivers!B!, Signals"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Version control"
skill.content="!B!Git!B!, !B!Gitolite!B!, !B!Hudson!B!, CVS, SVN, SCCS"
infoSkills << skill

skill = CV::Skill.new()
skill.type="System Administration"
skill.content="!B!Linux!B!, FreeBSD, Samba, Postfix, Apache, Shell scripting (Bash, Sed, Awk)"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Networking"
skill.content="Routage, Firewall, TCP/IP, Ethernet, !B!Sockets!B!, QoS, !B!Infiniband!B!, !B!ODP!B!"
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
<td class='header-cell'><a href='/cellreport.pdf'>Cell Broadband Engine</a></td>
<td class='header-cell'><a href='/Virt-K.pdf'>Virt-K: Hard Real Time Kernel for the Cell Broadband Engine</a></td></tr></table>"
cv.middleStuff="
                <a href=\"download.php?mirror=uk&id=cv-en.pdf\"> CV PDF in English </a><br>
                <a href=\"download.php?mirror=uk&id=cv-fr.pdf\"> CV PDF in French</a><br><br>
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
<div style=\"font-size:0px\">
<a class=\"user_link\" href=\"/morey-chaisemartin\">Morey-Chaisemartin</a>
<a class=\"user_link\" href=\"/morey-chaisemartin-cursus.html\">Morey-Chaisemartin Cursus</a>
<a class=\"user_link\" href=\"/morey-chaisemartin-cv.html\">Morey-Chaisemartin CV</a>
<a class=\"user_link\" href=\"/morey-chaisemartin-ensimag.html\">Morey-Chaisemartin ENSIMAG</a>
<a class=\"user_link\" href=\"/morey-chaisemartin-etudiant.html\">Morey-Chaisemartin Etudiant</a>
<a class=\"user_link\" href=\"/morey-chaisemartin-student.html\">Morey-Chaisemartin Student</a>
<a class=\"user_link\" href=\"/nicolas-morey-chaisemartin.html\">Nicolas Morey-Chaisemartin</a>
<a class=\"user_link\" href=\"/nicolas-morey-chaisemartin-cursus.html\">Nicolas Morey-Chaisemartin Cursus</a>
<a class=\"user_link\" href=\"/nicolas-morey-chaisemartin-cv.html\">Nicolas Morey-Chaisemartin CV</a>
<a class=\"user_link\" href=\"/nicolas-morey-chaisemartin-ensimag.html\">Nicolas Morey-Chaisemartin ENSIMAG</a>
<a class=\"user_link\" href=\"/nicolas-morey-chaisemartin-etudiant.html\">Nicolas Morey-Chaisemartin Etudiant</a>
<a class=\"user_link\" href=\"/nicolas-morey-chaisemartin-student.html\">Nicolas Morey-Chaisemartin Student</a>

<a class=\"user_link\" href=\"embedded_systems.html\">Embedded Systems</a>
<a class=\"user_link\" href=\"systemes_embarques.html\">Systemes Embarques</a>
<a class=\"user_link\" href=\"real_time.html\">Real Time</a>
<a class=\"user_link\" href=\"temps_reel.html\">Temps Reel</a>

<a class=\"user_link\" href=\"c_developper.html\">C Developper</a>
<a class=\"user_link\" href=\"java_developper.html\">Java Developper</a>
<a class=\"user_link\" href=\"ada_developper.html\">Ada Developper</a>
<a class=\"user_link\" href=\"tcl_developper.html\">TCL Developper</a>
<a class=\"user_link\" href=\"assembler_developper.html\">Assembler Developper</a>
<a class=\"user_link\" href=\"php_developper.html\">Php Developper</a>
<a class=\"user_link\" href=\"c++_developper.html\">C++ Developper</a>
<a class=\"user_link\" href=\"netbeans.html\">Netbeans</a>
<a class=\"user_link\" href=\"netbeans_ide.html\">Netbeans IDE</a>
<a class=\"user_link\" href=\"sqldevelopper.html\">SQLDevelopper</a>
<a class=\"user_link\" href=\"glade.html\">Glade</a>
<a class=\"user_link\" href=\"eclipse.html\">Eclipse</a>
<a class=\"user_link\" href=\"emacs.html\">Emacs</a>
<a class=\"user_link\" href=\"cvs.html\">CVS</a>
<a class=\"user_link\" href=\"svn.html\">SVN</a>
<a class=\"user_link\" href=\"sccs.html\">SCCS</a>
<a class=\"user_link\" href=\"gtk_developper.html\">GTK Developper</a>
<a class=\"user_link\" href=\"tk_developper.html\">Tk Developper</a>
<a class=\"user_link\" href=\"swing_developper.html\">Swing Developper</a>
<a class=\"user_link\" href=\"awt_developper.html\">AWT Developper</a>
<a class=\"user_link\" href=\"Samba.html\">Samba</a>
<a class=\"user_link\" href=\"postfix.html\">Postfix</a>
<a class=\"user_link\" href=\"apache.html\">Apache</a>
<a class=\"user_link\" href=\"bash.html\">Bash</a>
<a class=\"user_link\" href=\"sed.html\">Sed</a>
<a class=\"user_link\" href=\"awk.html\">Awk</a>
<a class=\"user_link\" href=\"shell.html\">Shell</a>
<a class=\"user_link\" href=\"sql.html\">SQL</a>
<a class=\"user_link\" href=\"Oracle.html\">Oracle</a>
<a class=\"user_link\" href=\"mysql.html\">mySQL</a>
<a class=\"user_link\" href=\"ldap.html\">LDAP</a>
<a class=\"user_link\" href=\"routing.html\">Routing</a>
<a class=\"user_link\" href=\"firewall.html\">Firewall</a>
<a class=\"user_link\" href=\"tcp_ip.html\">TCP/IP</a>
<a class=\"user_link\" href=\"ethernet.html\">Ethernet</a>
<a class=\"user_link\" href=\"sockets.html\">Sockets</a>
<a class=\"user_link\" href=\"qos.html\">QoS</a>
<a class=\"user_link\" href=\"kernel.html\">Kernel</a>
<a class=\"user_link\" href=\"scheduling.html\">Scheduling</a>
<a class=\"user_link\" href=\"drivers.html\">Drivers</a>
<a class=\"user_link\" href=\"uml.html\">UML</a>
<a class=\"user_link\" href=\"design_patterns.html\">Design Patterns</a>
<a class=\"user_link\" href=\"vhdl.html\">VHDL</a>
<a class=\"user_link\" href=\"xilinx.html\">Xilinx</a>
<a class=\"user_link\" href=\"modelsim.html\">Modelsim</a>
<a class=\"user_link\" href=\"mapple.html\">Mapple</a>
<a class=\"user_link\" href=\"matlab.html\">Matlab</a>
<a class=\"user_link\" href=\"scilab.html\">Scilab</a>
<a class=\"user_link\" href=\"fpga.html\">FPGA</a>
<a class=\"user_link\" href=\"compiler.html\">Compiler</a>
<a class=\"user_link\" href=\"cell.html\">Cell</a>
<a class=\"user_link\" href=\"cell_broadband_engine.html\">Cell Broadband Engine</a>
<a class=\"user_link\" href=\"/sitemap.html\">Sitemap</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/apache.html\">apache</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/awk.html\">awk</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/bash.html\">bash</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/cell.html\">cell</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/compiler.html\">compiler</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/cv.html\">cv</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/cvs.html\">cvs</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/drivers.html\">drivers</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/eclipse.html\">eclipse</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/emacs.html\">emacs</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/ethernet.html\">ethernet</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/firewall.html\">firewall</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/fpga.html\">fpga</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/git.html\">git</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/glade.html\">glade</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/index.html\">index</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/kalray.html\">kalray</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/kernel.html\">kernel</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/ldap.html\">ldap</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/mapple.html\">mapple</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/matlab.html\">matlab</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/modelsim.html\">modelsim</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/mysql.html\">mysql</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/netbeans.html\">netbeans</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/Oracle.html\">Oracle</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/postfix.html\">postfix</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/qos.html\">qos</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/routing.html\">routing</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/Samba.html\">Samba</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/sccs.html\">sccs</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/scheduling.html\">scheduling</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/scilab.html\">scilab</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/sed.html\">sed</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/shell.html\">shell</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/sitemap.html\">sitemap</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/sockets.html\">sockets</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/sqldevelopper.html\">sqldevelopper</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/sql.html\">sql</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/svn.html\">svn</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/uml.html\">uml</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/vhdl.html\">vhdl</a>
<a class=\"user_link\" href=\"http://nicolas.morey-chaisemartin.com/xilinx.html\">xilinx</a>"


#############
# THE END
#############

cv.toTeX('cv-en.tex')
cv.toHTML('index.html')

