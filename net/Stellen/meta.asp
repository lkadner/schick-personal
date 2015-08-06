<table border="0" cellpadding="2" style="border-collapse: collapse" bordercolor="#111111" width="98%">
  <tr>
    <td width="100%">
<%

' Konstanten fuer AspTear definieren
atPost = 1
atGet = 2
atHead = 3

'Dim objAspTear, strWebDatei, strDateiInhalt

' Objektinstanz von AspTear erstellen
Set objAspTear = Server.CreateObject("SOFTWING.ASPtear")      

' Zu ladende Datei
strWebDatei = "http://www.offene-stellen.ch/tar/schickmeta3.asp?frm=" & session("frm") 

' Inhalt der Datei laden und speichern
' Syntax: Retrieve(URL, Methode, Daten_Zur_Webseite, 
'                        Benutzername, Passwort)
strDateiInhalt = objAspTear.Retrieve(strWebDatei, atGet, "", "", "")

' Objektresourcen freigeben
Set objAspTear = Nothing

' Inhalt von http://www.... ist nun in
'  strDateiInhalt gespeichert
Response.Write strDateiInhalt
%>
</td>
  </tr>
</table>