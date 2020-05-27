
# Reference: https://www.data.gv.at/katalog/dataset/c0a5a8e6-ed89-3ad2-bf19-7d79d11e7896

# ------ Detusch ----------------------------------------


Hinweise zu den Downloads der Klassifikationsdatenbank
--------------------------------------------------------------------------------
Die Downloads der Klassifikationsdatenbank sind UTF8-Textdateien im Format von 
CSV-Dateien.

Aufbau: Die einzelnen Felder sind durch Strichpunkt getrennt, Textfelder sind 
mit Doppelhochkomma (") begrenzt. Ist das Doppelhochkomma selbst Teil des 
Datenelements, so wird es verdoppelt. Die erste Zeile jeder Datei enthält die 
Feldnamen.

Aufbau der jeweiligen Dateientypen
--------------------------------------------------------------------------------
Je nach Typ des Downloads enthalten die Dateien unterschiedliche Felder. Bei den 
Typen "Klassifikationsstruktur" und "Alphabetikum" können zum allgemeinen Aufbau 
– klassifikationsabhängig - noch weitere Felder inkludiert sein (wie zum 
Beispiel das Feld "Maßeinheit"). Dies sind Textfelder mit einer Feldlänge von 
unter 255 Zeichen. Der dreistellige Typ des Downloadfiles ist im Dateinamen 
enthalten.

Klassifikationsstruktur (Typ "CTI")
--------------------------------------------------------------------------------
Ebene ... integer(2) ... Hierarchische Ebene
EDV-Code ... char(16) ... Elementcode ohne Zusatzzeichen
Code ... char(16) ... Aufbereiteter Elementcode 
Titel ... char(1984) ... Titel
Kurztitel ... char(999) ... Kurztitel

Kurztitel (Typ "CKT")
--------------------------------------------------------------------------------
Ebene ... integer(2) ... Hierarchische Ebene
EDV-Code ... char(16) ... Elementcode ohne Zusatzzeichen
Code ... char(16) ... Aufbereiteter Elementcode
Kurztitel ... char(999) ... Kurztitel

Struktur & Erläuterungen (Typ "COT")
--------------------------------------------------------------------------------
Ebene ... integer(2) ... Hierarchische Ebene
EDV-Code ... char(16) ... Elementcode ohne Zusatzzeichen 
Code ... char(16) ... Aufbereiteter Elementcode
Ebene Erl. ... char(20) ... Hierarchie des Erläuterungsbausteins (000 steht für 
den Titel)
Erläuterungstext ... char(1984) ... Erläuterungsbaustein bzw. Titel

Alphabetikum (Typ "CAL")
--------------------------------------------------------------------------------
Ebene ... integer(2) ... Hierarchische Ebene
EDV-Code ... char(16) ... Elementcode ohne Zusatzzeichen
Code ... char(16) ... Aufbereiteter Elementcode
Alphabetikumsbegriff ... char(248) ... Alphabetikumsbegriff

Korrespondenzen (Typ "12B")
--------------------------------------------------------------------------------
Ebene ... integer(2) ... Hierarchische Ebene
EDV-Code ... char(16) ... Elementcode ohne Zusatzzeichen
Code ... char(16) ... Aufbereiteter Elementcode
Titel ... char(1984) ... Titel
korrespondierende Ebene ... integer(2) ... Hierarchische Ebene
korrespondierender EDV-Code ... char(16) ... Elementcode ohne Zusatzzeichen
korrespondierender Code ... char(16) ... Aufbereiteter Elementcode
korrespondierender Titel ... char(1984) ... Titel
Korrespondenz-Beschreibung ... char(1984) ... zusätzliche Beschreibungen









# ------ English ----------------------------------------

Notes on the downloads of the classification database
-------------------------------------------------- ------------------------------
The classification database downloads are UTF8 text files in the format of
CSV files.

Structure: The individual fields are separated by semicolons, text fields are
delimited with double quotation marks ("). Is the double quotation mark itself part of the
Data element, it is doubled. The first line of each file contains the
Field names.

Structure of the respective file types
-------------------------------------------------- ------------------------------
Depending on the type of download, the files contain different fields. Both
Types "classification structure" and "alphabet" can be used for general structure
- depending on classification - additional fields should be included (such as
Example the field "unit of measure"). These are text fields with a field length of
under 255 characters. The three-digit type of the download file is in the file name
contain.

Classification structure (type "CTI")
-------------------------------------------------- ------------------------------
Level ... integer (2) ... hierarchical level
EDP ??code ... char (16) ... element code without additional characters
Code ... char (16) ... Prepared element code
Title ... char (1984) ... title
Short title ... char (999) ... short title

Short title (type "CKT")
-------------------------------------------------- ------------------------------
Level ... integer (2) ... hierarchical level
EDV-Code ... char (16) ... element code without additional characters
Code ... char (16) ... Prepared element code
Short title ... char (999) ... short title

Structure & explanations (type "COT")
-------------------------------------------------- ------------------------------
Level ... integer (2) ... hierarchical level
EDV-Code ... char (16) ... element code without additional characters
Code ... char (16) ... Prepared element code
Level Erl. ... char (20) ... hierarchy of the explanation block (000 stands for
the title)
Explanatory text ... char (1984) ... Explanatory note or title

Alphabetical (type "CAL")
-------------------------------------------------- ------------------------------
Level ... integer (2) ... hierarchical level
EDV-Code ... char (16) ... element code without additional characters
Code ... char (16) ... Prepared element code
Alphabetical term ... char (248) ... Alphabetical term

Correspondence (type "12B")
-------------------------------------------------- ------------------------------
Level ... integer (2) ... hierarchical level
EDV-Code ... char (16) ... element code without additional characters
Code ... char (16) ... Prepared element code
Title ... char (1984) ... title
corresponding level ... integer (2) ... hierarchical level
Corresponding EDP code ... char (16) ... element code without additional characters
Corresponding code ... char (16) ... Prepared element code
corresponding title ... char (1984) ... title
Correspondence description ... char (1984) ... additional descriptions
