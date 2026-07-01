# GermanSwordModules

This repository contains several German Sword modules (for AndBible, BibleTime, Xiphos, ...) created from public domain and free sources. 

All modules are sorted into the following categories:

* Stable. These modules are either proofread or built from stable sources.
* Alpha. These modules are finished, but lack a careful proofreading (you may find missing links, spelling mistakes or OCR errors).
* Beta. These modules are a first draft after OCR.

This repository contains the sources for these modules. Feel free to raise an issue or help with these resources.

To use the modules, include the following url to you application:

```
https:/sword.luki.org/[stable/alpha/beta]
```

Please also visit the LUKI homepage. We are grateful for their support in hosting the repositories!

[![LUKI](https://luki.org/wp-content/uploads/2016/01/lukiweblogo.png)](https://luki.org/) 

# Helfen?

Diese Arbeit kann auf verschiedene Arten unterstützt werden.

* Haben Sie ***Fehler gefunden?*** Dann öffnen Sie gerne ein Ticket!
* Sie können aber auch ***selber Fehler korrigieren***, indem Sie die xml-Dateien unter alpha/ oder beta bearbeiten.
* Es werden immer ***Korrekturleser und Tester*** benötigt. 

Weitere Informationen finden Sie im CrossWire developers' wiki unter https://wiki.crosswire.org/Main_Page. 

# Building modules

This repository contains a build script (``buildAll.sh``) which builds all modules into ``/build``.

# Alpha


## Maps

| Name                      | Titel                      | Year |Source                                              | Quality | Remarks |
|---------------------------|----------------------------|------|-------------------------------------------------|---------|---------|
| deuGutheHermannBibelatlas | Hermann Guthe: Bibelatlas | 1926 |https://opendata.uni-halle.de/handle/1981185920/41567 |    ✓    |         |
| deuMenkeTheodorBibelatlas | Theodor Menke: Bibelatlas | 1868 |archive.org |    ✓    |         |

## Commentaries 

| Name                       | Titel                                    | Source                                        | Quality | Remarks                       | License                                                                      |
|----------------------------|------------------------------------------|-----------------------------------------------|---------|-------------------------------|------------------------------------------------------------------------------|
| deuCalvinKommentare        | Calvin Kommentare                        | https://lesekammer.de/2023/06/09/jean-calvin/ |    ✓    | Not all OT and NT books       | Gemeinfrei                                                                   |
| deuStreitenbergerKommentar | NT Kommentar von Peter M. Streitenberger | Sermon                                        |    ✓    | Only NT and Robinson-Pierpont | Die Arbeit ist frei verfügbar und kann kostenlos genutzt und kopiert werden. |
| deuMacDonaldKommentar | Kommentar zum Alten und Neuen Testament (William MacDonald)| CrossLoad                                        |    ✓    |  | CC BY-NC-ND  |
| deuGaebeleinAltesTestament | Kommentar zum Alten Testament(Arno C. Gaebelein) | CrossLoad                                        |        | Only OT | CC BY-NC-ND  |
| deuMacArthurKommentar | Kommentar (John F. MacArthur) | CrossLoad                                        |        | Only some Letters | CC BY-NC-ND  |



## Bible Texts

| Name              | Titel             | Source               | Quality | Remarks                       | License                                                                      |
|-------------------|-------------------|----------------------|---------|-------------------------------|------------------------------------------------------------------------------|
| deuVOLX           | VOLX-Bibel        | http://volxbibel.de/ |    ✓    |                               | CC BY-NC-SA                                                                  |
| deuStreitenberger | Streitenberger NT | Sermon               |    ✓    | Only NT and Robinson-Pierpont | Die Arbeit ist frei verfügbar und kann kostenlos genutzt und kopiert werden. |

## Dictionaries 

| Name                                 | Titel                                             | Source                                              | Quality | Remarks | License                                                             |
|--------------------------------------|---------------------------------------------------|-----------------------------------------------------|---------|---------|---------------------------------------------------------------------|
| deuPapeWilhelmGriechisch             | Wilhelm Pape: Griechisch-deutsches Handwörterbuch (1914) | http://www.zeno.org/Pape-1880                       |    ✓    |         | Public Domain, Source: http://www.zeno.org - Contumax GmbH & Co. KG |
| deuCalwerBibellexikon1912            | Calwer Bibellexikon 1912                          | https://crossload.org/bibellexikon                  |    ✓    |         | PD                                                                  |
| deuMenzelWolfgangChristlicheSymbolik | Christliche Symbolik. (Wolfgang Menzel, 1856)           | https://de.wikisource.org/wiki/Christliche_Symbolik |    ✓    |         | PD                                                                  |
| deuMuhlHebrew | Hebräisches Wortverzeichnis (Daniel Muhl)          | https://bibelwissen.ch |    ✓    |         | -      
| deuMuhlGreek | Griechisches Wortverzeichnis (Daniel Muhl)           | https://bibelwissen.ch |    ✓    |         | -      

## Greek Patristic Texts (grc)

OSIS GenBook modules in ancient Greek with Strong's G-numbers and Robinson morphology tagging (via spaCy `grc_proiel_lg`). Sources: [Bibliothek der Kirchenväter](https://bkv.unifr.ch). Tools for regeneration in `tools/`.

### Apostolic Fathers

| Name | Titel | CPG | Source | License |
|------|-------|-----|--------|---------|
| grBarnabas | Epistula Barnabae | cpg-1050 | J. B. Lightfoot ed. – bkv.unifr.ch | Public Domain |
| grClemensEpistulaAdCorinthios | Clemens Rom – Epistula ad Corinthios (1 Clem) | cpg-1001 | Kirsopp Lake, Loeb 1912 – bkv.unifr.ch | Public Domain |
| grClemensEpistulaAltera | II Clemens – Epistula altera ad Corinthios | cpg-1003 | Kirsopp Lake, Loeb 1912 – bkv.unifr.ch | Public Domain |
| grDidache | Didache – Διδαχὴ τῶν δώδεκα ἀποστόλων | cpg-1753 | bkv.unifr.ch | Public Domain |
| grEpistulaAdDiognetum | Epistula ad Diognetum | cpg-1112 | bkv.unifr.ch | Public Domain |
| grEpistulaEcclesiaeSmyrnensis | Martyrium Polycarpi | cpg-1045 | Kirsopp Lake, Loeb 1913 – bkv.unifr.ch | Public Domain |
| grIgnatiusEpistulae | Ignatius Antiochenus – Epistulae VII genuinae | cpg-1025 | Kirsopp Lake, Loeb 1912 – bkv.unifr.ch | Public Domain |
| grPastorHermae | Pastor Hermae | cpg-1052 | Kirsopp Lake, Loeb 1913 – bkv.unifr.ch | Public Domain |
| grPolycarpusEpistulaAdPhilippenses | Polycarpus – Epistula ad Philippenses | cpg-1040 | Kirsopp Lake, Loeb 1913 – bkv.unifr.ch | Public Domain |

### Apologists (2nd century)

| Name | Titel | CPG | Source | License |
|------|-------|-----|--------|---------|
| grJustinusApologiaPrima | Justinus Martyr – Apologia prima | cpg-1073a | bkv.unifr.ch | Public Domain |
| grJustinusApologiaSecunda | Justinus Martyr – Apologia secunda | cpg-1073b | bkv.unifr.ch | Public Domain |
| grJustinusDialogusCumTryphone | Justinus Martyr – Dialogus cum Tryphone | cpg-1076 | bkv.unifr.ch | Public Domain |
| grTatianusOratioAdGraecos | Tatianus – Oratio ad Graecos | cpg-1104 | bkv.unifr.ch | Public Domain |
| grTheophilusAdAutolycum | Theophilus Antiochenus – Ad Autolycum | cpg-1107 | bkv.unifr.ch | Public Domain |

### Alexandrian Fathers

| Name | Titel | CPG | Source | License |
|------|-------|-----|--------|---------|
| grClemensAlexandrinusQuidDives | Clemens Alexandrinus – Quis dives salvetur? | cpg-1397 | bkv.unifr.ch | Public Domain |
| grOrigenContraCelsum | Origenes – Contra Celsum | cpg-1476 | bkv.unifr.ch | Public Domain |

### Eusebius of Caesarea

| Name | Titel | CPG | Source | License |
|------|-------|-----|--------|---------|
| grEusebiusHistoriaEcclesiastica | Eusebius – Historia Ecclesiastica | cpg-3495 | bkv.unifr.ch | Public Domain |
| grEusebiusVitaConstantini | Eusebius – Vita Constantini et Oratio | cpg-3496 | bkv.unifr.ch | Public Domain |

### Epiphanius of Salamis

| Name | Titel | CPG | Source | License |
|------|-------|-----|--------|---------|
| grEpiphaniusAnakephalaiosis | Epiphanius – Anakephalaiosis | cpg-3765 | bkv.unifr.ch | Public Domain |
| grEpiphaniusAncoratus | Epiphanius – Ancoratus | cpg-3744 | bkv.unifr.ch | Public Domain |

### Pseudo-Dionysius Areopagita

| Name | Titel | CPG | Source | License |
|------|-------|-----|--------|---------|
| grDionysiusCaelestisHierarchia | Dionysius Areopagita – De caelesti hierarchia | cpg-6600 | bkv.unifr.ch | Public Domain |
| grDionysiusDivinisNominibus | Dionysius Areopagita – De divinis nominibus | cpg-6602 | bkv.unifr.ch | Public Domain |
| grDionysiusMysticaTheologia | Dionysius Areopagita – De mystica theologia | cpg-6603 | bkv.unifr.ch | Public Domain |

### Other Greek Patristic Works

| Name | Titel | CPG | Source | License |
|------|-------|-----|--------|---------|
| grCyrillusAlexandrinus | Cyrillus Alexandrinus / Maximus Confessor – Ep. 55 Ad Anastasium | cpg-5355 | bkv.unifr.ch | Public Domain |
| grCyrilusScythopolisHistoriaEcclesiastica | Cyrilus Scythopolitanus – Historia Ecclesiastica | cpg-6222-2 | bkv.unifr.ch | Public Domain |
| grMakariosApocriticus | Makarios Magnes – Apocriticus (Kritik des NT) | x-48 | Ed. A. Harnack 1911 – bkv.unifr.ch | Public Domain |
| grNemesiusDeNaturaHominis | Nemesius Emesae – De natura hominis | cpg-3550 | Ed. C. F. Matthaei 1802 – bkv.unifr.ch | Public Domain |

## Books

| Name                                         | Year | Titel                                                                                                          | Source                        | Quality | Remarks | License |
|----------------------------------------------|-------|---------------------------------------------------------------------------------------------------------|-------------------------------|---------|---------|---------|
| deuBlumhardtChristophAndachtenAltesTestament | | Blumhardt, Christoph: Andachten zu biblischen Büchern – Altes Testament                                        | http://www.licht-und-recht.de |    ✓    |         | PD      |
| deuBlumhardtChristophAndachtenBergpredigt    | | Blumhardt, Christoph: Übersichtliche Auslegung der Bergpredigt                                                 |                               |    ✓    |         | PD      |
| deuBlumhardtChristophAndachtenNeuesTestament | | Blumhardt, Christoph: Andachten zu biblischen Büchern – Neues Altes Testament                                  |                               |    ✓    |         | PD      |
| deuBöhlEduardDogmatik                        | 1882| Eduard Böhl: CHRISTOLOGIE des ALTEN TESTAMENTES                                                                |                               |    ✓    |         | PD      |
| deuBöhlEduardDogmatik                        | 1887 | Eduard Böhl: Dogmatik                                                                                          |                               |    ✓    |         | PD      |
| deuHarmsTheodor3Mo                           |  |Harms, Theodor: Das dritte Buch Mose, kurz ausgelegt.                                                          | www.lesekammer.de             |    ✓    |         | PD      |
| deuHarmsTheodorHoh                           | | Harms, Theodor: Das Hohelied, kurz ausgelegt.                                                                  |                               |    ✓    |         | PD      |
| deuHartensteinKarlOffb                       | | Der wiederkommende Herr. Eine Auslegung der Offenbarung des Johannes für die Gemeinde (Karl Hartenstein, 1954) |                               |    ✓    |         | PD      |
| deuKählerCarlNicolausPhil                    | | Carl Nikolaus Kähler: Auslegung des Philipperbriefes                                                           |                               |    ✓    |         | PD      |
| deuKohlbrüggeHermannFriedrichJona            | 1848 | Hermann Friedrich Kohlbrügge: Sieben Predigten über den Propheten Jona 1848                                    | http://www.licht-und-recht.de |    ✓    |         | PD      |
| deuKohlbrüggeHermannFriedrichWozudasAT       | 1855 | Hermann Friedrich Kohlbrügge: Wozu das Alte Testament?                                                         |                               |    ✓    |         | PD      |
| deuLutherMartinDergroßeKatechismus           | | Martin Luther: Der große Katechismus - nach der Fassung des deutschen Konkordienbuches (Dresden 1580)          | Sermon                        |    ✓    |         | PD      |
| deuLutherMartinKirchenjahr                   | | Luther, Martin: Mit Luther durchs Kirchenjahr                                                                  | www.lesekammer.de             |    ✓    |         | PD      |
| deuLutherMartinVaterunser                    | | Luther, Martin: Auslegung deutsch des Vater Unsers, für die einfältigen Laien                                  |                               |    ✓    |         | PD      | 
| deuLutherMartinVorreden             	      | | Luther, Martin: Vorreden auf biblische Bücher				  |                               |    ✓    |         | PD      | 
| deuRiggenbachChristophJohannesAmosHosea	| | Riggenbach, Christoph Johannes:  Amos und Hosea	  |                               |    ✓    |         | PD      | 
| deuSchlatterAdolfEinleitung |  | Schlatter, Adolf: Einleitung in die Bibel |                               |    ✓    |         | PD      | 
| deuSchlatterAdolfJak | | Schlatter, Adolf: Der Brief des Jakobus|                               |    ✓    |         | PD      | 
| deuSchlatterAdolfRöm | | Schlatter, Adolf: Römerbrief, Kapitel 1-6 |                               |    ✓    |         | PD      | 
| deuSpurgeonCharlesAndachten1-10 | |  Spurgeon, Charles Haddon – Andachten 1 - 10 |                               |    ✓    |         | PD      | 
| deuvonderHeydtKarlExegetischerKommentar | 1882 |  Karl von der Heydt: Exegetischer Kommentar zu neun Briefen des Apostels Paulus | http://www.licht-und-recht.de |    ✓    |         | PD      |
| deuWichelhausJohannesVorlesungAT1 | 1891| Johannes Wichelhaus: Mitteilungen aus den Vorlesungen über das Alte Testament 1 |                               |    ✓    |         | PD      | 
| deuWichelhausJohannesVorlesungAT2 | 1891| Johannes Wichelhaus: Mitteilungen aus den Vorlesungen über das Alte Testament 2  |                               |    ✓    |         | PD      | 
| deuWichelhausJohannesVorlesungAT3 | 1891| Johannes Wichelhaus: Mitteilungen aus den Vorlesungen über das Alte Testament 3  |                               |    ✓    |         | PD      |  
| deuWichelhausJohannesVorlesungNT1 | 1875| Johannes Wichelhaus, Akademische Vorlesungen über das Neue Testament, Band I  |                               |    ✓    |         | PD      | 
| deuWichelhausJohannesVorlesungNT2 | 1876| Johannes Wichelhaus, Akademische Vorlesungen über das Neue Testament, Band II  |                               |    ✓    |         | PD      | 
| deuWichelhausJohannesVorlesungNT3 | 1884| Johannes Wichelhaus, Akademische Vorlesungen über das Neue Testament, Band IIII |                               |    ✓    |         | PD      | 
| deuBlassGrammatik | 1896 | Friedrich Blass: Grammatik des Neutestamentlichen Griechisch |                               |        |         | PD      | 


# Beta



## Books

### Kroeker, Jakob

Auslegungsreihe "Das lebendige Wort". Public domain. Source: https://blog.erweckungsprediger.de/buecher/das-lebendige-wort-jakob-kroeker/

Todo: Korrekturlesen. 

### Spurgeon, C. H. 

#### Die Schatzkammer Davids. Eine Auslegung der Psalmen 
Original:
* https://mdz-nbn-resolving.de/details:bsb11604720
* https://mdz-nbn-resolving.de/details:bsb11604721
