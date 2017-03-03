# -*- coding: utf-8 -*-
require './cv'

cv = CV::Top.new()    
cv.language = :fr

cv.firstName="Nicolas"
cv.lastName="Morey-Chaisemartin"
cv.title="Architecte / Développeur logiciel embarqué"
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
entry.date="Avril 2015!BR!à Aujourd'hui"
entry.title="Responsable solutions réseaux"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Conception d'une solution SmartNIC 80Gb/s."
entry.details << "Portage et optimisation d'!B!OpenDataPlane!B! pour le MPPA."
entry.details << "Gestion d'une équipe de 5 personnes"
entry.details << "Support d'interfaces haut débit PCI, Ethernet"
entry.details << "Responsable de tous les drivers Linux: !B!PCI, netdev, AF ALG, crypto, RoCE, DPDK!B!"
entry.details << "Environnement: MPPA, C, ODP, Ethernet, PCI, !B!Drivers Linux!B!."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Juillet 2013!BR!à Avril 2015"
entry.title="Responsable solutions vidéos"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Design et développement d'un coeur d'encodage !B!HEVC!B! flexible et optimisé pour le MPPA."
entry.details << "Gestion du projet et d'une petite équipe en charge du développement."
entry.details << "Portage, parallélisation et optimisation de l'encodeur 4K !B!HEVC!B! MainConcept sur MPPA."
entry.details << "Environnement: MPPA, C, C++, Ruby, Programation parallèle, HEVC."
cv.professional << entry


entry = CV::Entry.new()
entry.date="Juillet 2009!BR!à Juillet 2013"
entry.title="Architecte et développeur logiciel embarqué"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Développement de système d'exploitation et de librairies runtime pour l'embarqué."
entry.details << "Développement d'un !B!compilateur!B! front-end pour un langage de Streaming hautement parallèle."
entry.details << "Développement d'outils de !B!cadencement, placement et routage!B! pour des applications de Streaming."
entry.details << "Responsable de l'!B!intégration continue!B! sous Git/Hudson."
entry.details << "Co-Administrateur IT."
entry.details << "Gestion de projet !B!AGILE/Scrum!B!."
entry.details << "Environnement; !B!Systèmes embarqués!B!, MPPA, C, Assembleur, Ruby, Programation parallèle."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Octobre 2008!BR!à Juillet 2009"
entry.title="Ingénieur en Systèmes embarqués"
entry.company="Coframi"
entry.city="Meylan"
entry.details << "Mission chez Bull dans l'équipe R\&D HPC: Expert !B!Infiniband!B!."
entry.details << "Développement d'!B!algorithmes de routage!B! fault-tolerant (dépot de brevets)."
entry.details << "Mise en place de solution de monitoring réseau pour grand clusters."
entry.details << "Environnement: Infiniband, Routage, QoS, !B!Drivers Linux!B!, !B!HPC!B!."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Mai 2008!BR!à Septembre 2008"
entry.title="Projet de fin d'études et de Master"
entry.company="Northumbria University"
entry.city="Newcastle"
entry.country="UK"
entry.details << "Design et implémentation d'un !B!OS temps-réel!B! pour le Cell Broadband Engine."
entry.details << "Environnement: !B!Multicore!B!, Temps-réel, !B!Scheduling!B!, Synchronisation, C, Assembleur."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Juin 2007!BR!à Aôut 2007"
entry.title="Stagiaire IT"
entry.company="Allibert-Trekking"
entry.city="Montmélian"
entry.details << "Support utilisateur et serveur sur un réseau Mac OS X."
entry.details << "Mise en place d'un !B!système de monitoring!B!."
entry.details << "Développement d'outils de synchronisation entres les outils d'inventaire, de monitoring et d'administration."
entry.details << "Environnement: Mac OS X, Php, Perl, Python, Bash, MySQL, openDirectory."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Janvier 2007"
entry.title="Intervenant Junior-Entreprise"
entry.company="MVA Limited"
entry.city="Grenoble"
entry.details << "Création d'un outil d'extraction de coordonnées GPS depuis Google Maps."
entry.details << "Environnement: !B!Java!B!, Swing."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Octobre 2006"
entry.title="Intervenant Junior-Entreprise"
entry.company="Institut Laue-Langevin"
entry.city="Grenoble"
entry.details << "Portage d'une application de démonstration de cristallographie d'objective-C vers Java."
entry.details << "Environnement: Java, Swing, HTML."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Aôut 2003"
entry.title="Stagiaire"
entry.company="Xyalis"
entry.city="Grenoble"
entry.details << "Réalisation d'un !B!programme de non régression!B! pour toute la gamme des outils Xyalis."
entry.details << "Environnement: Bash, Tcl, Tk."
cv.professional << entry

# entry = CV::Entry.new()
# entry.date="Juillet 2001"
# entry.title="Stagiaire"
# entry.company="Xyalis"
# entry.city="Grenoble"
# entry.details << "Développement de scripts de démonstrations d'outils de CAO."
# entry.details << "Intégration d'outils dans une même GUI."
# entry.details << "Démonstration des logiciels de l'entreprise à un salon international de micro-électronique aux USA (DAC)."
# entry.details << "Environnement: Tcl, Tk."
# cv.professional << entry

#############
# Etudes
#############
entry = CV::Entry.new()
entry.date="2008"
entry.title="Ingénieur en informatique"
entry.company="ENSIMAG"
entry.city="Grenoble"
cv.degrees << entry

entry = CV::Entry.new()
entry.date="2008"
entry.title="Master en Systèmes Embarqués"
entry.company="Université de Northumbria"
entry.city="Newcastle"
entry.country="UK"
entry.details << "En parallèle de la dernière année à l'ENSIMAG."
entry.details << "Année réalisée à Newcastle - Angleterre."
cv.degrees << entry

#############
# Exp Perso
#############

entry = CV::Entry.new()
entry.date="2008!BR!à Aujourd'hui"
entry.title="Participation à des projets Open Source"
entry.details << "Participations au mailing list et au développement de !B!Linux!B!, !B!Git!B!, OpenSM, ODP."
entry.details << "Participations ponctuelles sur divers projets: Sick-Beard, RBTools, libdbi..."
cv.personal << entry

entry = CV::Entry.new()
entry.date="2011!BR!à Aujourd'hui"
entry.title="Damage (DAtabase MetA GEnerator)"
entry.details << "Développement d'un ensemble de script de génération de formats intermédiaires."
entry.details << "Permet à partir d'une description YAML, de générer toutes les méthodes de!BR!"+
    " lecture/écriture/modification vers des formats XML/YAML/binaire depuis du C, Java ou Ruby."
entry.details << "Environnement: Ruby, GPL."
cv.personal << entry


entry = CV::Entry.new()
entry.date="2006"
entry.title="Participation au concours IBM sur le Cell Broadband Engine"
entry.details << "Développement d'un framework open-source pour les algorithmes de type"+
    " !I!producteur/consommateur!I! sur un cluster de Cell."
entry.details << "Environnement: C++, sockets."
cv.personal << entry

entry = CV::Entry.new()
entry.date="2005!BR!à 2007"
entry.title="Responsable informatique N'Sigma, Junior Entreprise de l'ENSIMAG"
entry.details << "Administration d'un réseau mixte Linux/Windows."
entry.details << "Participation au chiffrage des contrats N'Sigma."
cv.personal << entry

# entry = CV::Entry.new()
# entry.date="2005"
# entry.title="Réalisation d'un micro-processeur"
# entry.details << "Développement en VHDL d'un micro-processeur 8bits avec carte vidéo sur FPGA."
# cv.personal << entry

# entry = CV::Entry.new()
# entry.date="2004"
# entry.title="Concours national de programmation Prologin"
# entry.details << "Développement d'une IA pour un jeu de stratégie."
# entry.details << "Classé !B!5ème!B!."
# cv.personal << entry

#############
# Skills
#############
infoSkills=[]
skill = CV::Skill.new()
skill.type = "Langages"
skill.content= "!B!C!B!, !B!Ruby!B!, Java, Assembleur, Ada, Php, C++"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Environnements graphiques"
skill.content="!B!X11!B!, Gtk, Tk, Swing, !B!Qt!B!"
infoSkills << skill

skill = CV::Skill.new()
skill.type = "Outils" # de dévelopmment
skill.content= "Emacs, Netbeans, Eclipse, gcc, !B!gdb!B!" # SQLDevelopper, 
infoSkills << skill

skill = CV::Skill.new()
skill.type="Vidéo"
skill.content="!B!H.265!B!, x265"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Systèmes d'exploitation"
skill.content="!B!Kernel!B!, Programmation concurrentielle, !B!Drivers!B!, Signaux"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Gestionnaires de versions"
skill.content="!B!Git!B!, !B!Gitolite!B!, !B!Hudson!B!, CVS, SVN, SCCS"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Administration Système"
skill.content="!B!Linux!B!, FreeBSD, Samba, Postfix, Apache, Shell scripting (Bash, Sed, Awk)"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Réseau"
skill.content="Routage, Firewall, TCP/IP, Ethernet, !B!Sockets!B!, QoS, !B!Infiniband!B!, !B!ODP!B!"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Bases de données"
skill.content="Oracle, MySQL, LDAP, !B!Conception!B!, Optimisation"
infoSkills << skill

# skill = CV::Skill.new()
# skill.type="Conception Logicielle"
# skill.content="!B!UML!B!"
# infoSkills << skill

# skill = CV::Skill.new()
# skill.type="Conception Electronique"
# skill.content="!B!VHDL!B!, Modelsim"
# infoSkills << skill

skill = CV::Skill.new()
skill.type="Outils mathématiques"
skill.content="Matlab, CoinOR, GPLK"
infoSkills << skill

cv.skills["Informatique"] = infoSkills

#############
# Lang
#############
lang= CV::Language.new()
lang.lang = "Anglais"
lang.level = "lu, parlé, écrit"
lang.more = "Score au TOEFL:100/120 - TOEIC: 935/990"
cv.languages << lang


#############
# Brevets
#############
patent= CV::Patent.new()
patent.reference = "WO2011001362"
patent.title = "Procédés et dispositifs destinés à évaluer une efficacité d'interconnexion de réseaux informatiques parallèles sur la base de systèmes de routage statiques"
cv.patents << patent
patent= CV::Patent.new()
patent.reference = "WO2011151569"
patent.title = "Procédé de routage pseudo-dynamique dans un cluster comprenant des liens de communication statiques et programme d'ordinateur mettant en oeuvre ce procédé"
cv.patents << patent
patent= CV::Patent.new()
patent.reference = "WO2011144848"
patent.title = "Procédé d'optimisation de routage dans un cluster comprenant des liens de communication statiques et programme d'ordinateur mettant en oeuvre ce procédé"
cv.patents << patent

#############
# Other
#############
ot = CV::Other.new()
ot.cat="Loisirs"
ot.more = "Montagne, photographie, voyages, guitare."
cv.other << ot

ot = CV::Other.new()
ot.cat="Sport"
ot.more = "Alpinisme, escalade, randonnée à pied et à ski"
cv.other << ot
# ot = CV::Other.new()
# ot.cat=""
# ot.more = "Ancien pilote deltaplance, membre de l'équipe de France Espoir."
# cv.other << ot

###############
# HTML STUFF
###############
cv.header= "
<table class='header-menu' cellpadding='5' cellspacing='2'>
<td class='header-cell'><a href=' index_fr.html'><img src='fr_flag.jpg' height='30' width='50' alt='FR'></a></td>
<td class='header-cell'><a href='index_en.html'><img  src='uk_flag.jpg' height='30' width='50' alt='EN'></a></td>
<td class='header-cell'><a href='/photos/'>Photos</a></td>
<td class='header-cell'><a href='https://github.com/nmorey/'>Mon GitHub</a></td>
<td class='header-cell'><a href='/cellreport.pdf'>Cell Broadband Engine</a></td>
<td class='header-cell'><a href='/Virt-K.pdf'>Virt-K: Kernel Temps Réel pour le Cell Broadband Engine</a></td></tr></table>"
cv.middleStuff="
                <a href=\"download.php?mirror=uk&id=cv-fr.pdf\"> CV PDF en Francais</a><br>
                <a href=\"download.php?mirror=uk&id=cv-en.pdf\"> CV PDF en Anglais </a><br><br>
                <a href=\"photos/\">Allez voir mes photos de vacances et randos!!</a><br>
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

cv.toTeX('cv-fr.tex')
cv.toHTML('index_fr.html')

