<%
' Modul Steuerung
session ("XI") = request("XI")
session("Pg") = request("Pg")
session("MFID") = request("FID")
' Inhalt Steuerung
session ("get") = request("get")
' Für Forms und Shop
session("File") = request("File")
session("frm") = request("frm")
session("lan") = request("lan")
session("Su") = request("Su")
' History in Veranstaltungen?
session("His") = 1

' Shop Steuerung
' Detailsatz
session("II") = request("II")
' Gruppen / Untergruppen
session("G1") = request("G1")
session("G2") = request("G2")
session("G3") = request("G3")
' Bestellung
session("BID") = request("BID")
session("Ac") = request("Ac")
session("Dr") = request("Dr")

' Gästebuch

session("Guestbook") = "j.schick@schick-personal.ch"

' Affiliate
If request("Aff") <> "" Then session("Aff") = request("Aff") End If

session("EMailMerchant") = "j.schick@yeah.ch"
session("EMailMerchant2") = "j.schick@yeah.ch"
session("EMailMerchantRei") = "j.schick@yeah.ch"
session("Konditionen") = "inkl. MWSt"
session("AbsenderAdr1") = "www.schick-personal.ch"
session("KKWerbung") = ""
session("KKWerbungRei") = "Das Schweizer Stellenportal: www.offene-stellen.ch"

' Generelle Parameter
%>
<!--#include virtual="include/1111/Reloader.asp"-->
<!--#include virtual="include/1111/init.asp"-->

<%
' Druckfunktion abfangen
%>

<html>
<head>
<meta http-equiv="Content-Language" content="de-ch">

<title>schick-personal.ch</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<!--#include virtual="include/1111/met.asp"-->
<link rel="stylesheet" type="text/css" href="http://www.schick-personal.ch/web/format.css">

<SCRIPT LANGUAGE="JavaScript">
<!--

function newImage(arg) {
	if (document.images) {
		rslt = new Image();
		rslt.src = arg;
		return rslt;
	}
}

function changeImages() {
	if (document.images && (preloadFlag == true)) {
		for (var i=0; i<changeImages.arguments.length; i+=2) {
			document[changeImages.arguments[i]].src = changeImages.arguments[i+1];
		}
	}
}

var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		top_01_top_03_over = newImage("Bilder/top_01-top_03_over.jpg");
		top_01_top_05_over = newImage("Bilder/top_01-top_05_over.jpg");
		top_02_top_03_over = newImage("Bilder/top_02-top_03_over.jpg");
		top_03_over = newImage("Bilder/top_03-over.jpg");
		top_04_top_03_over = newImage("Bilder/top_04-top_03_over.jpg");
		top_04_over = newImage("Bilder/top_04-over.jpg");
		top_04_top_05_over = newImage("Bilder/top_04-top_05_over.jpg");
		top_05_top_04_over = newImage("Bilder/top_05-top_04_over.jpg");
		top_05_over = newImage("Bilder/top_05-over.jpg");
		top_06_over = newImage("Bilder/top_06-over.jpg");
		top_06_top_05_over = newImage("Bilder/top_06-top_05_over.jpg");
		top_07_top_06_over = newImage("Bilder/top_07-top_06_over.jpg");
		top_07_over = newImage("Bilder/top_07-over.jpg");
		top_09_top_03_over = newImage("Bilder/top_09-top_03_over.jpg");
		top_09_top_07_over = newImage("Bilder/top_09-top_07_over.jpg");
		preloadFlag = true;
	}
}

// -->
</SCRIPT>

</head>
<body ONLOAD="preloadImages();">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111">
  <tr>
    <td width="100%">
    <!-- ImageReady Slices (top.psd) -->
    <table BORDER="0" CELLPADDING="0" CELLSPACING="0">
      <tr>
        <td>
        <!-- ImageReady Slices (top.psd) -->
        <table BORDER="0" CELLPADDING="0" CELLSPACING="0">
          <tr>
            <td COLSPAN="7">
            <img NAME="top_01" SRC="web/Bilder/top_01.jpg" width="1030" height="117"></td>
          </tr>
          <tr>
            <td ROWSPAN="2">
            <img NAME="top_02" SRC="web/Bilder/top_02.jpg" width="42" height="100"></td>
            <td>
            <a ONMOUSEOVER="changeImages('top_01', 'Bilder/top_01-top_03_over.jpg', 'top_02', 'Bilder/top_02-top_03_over.jpg', 'top_03', 'Bilder/top_03-over.jpg', 'top_04', 'Bilder/top_04-top_03_over.jpg', 'top_09', 'Bilder/top_09-top_03_over.jpg'); return true;" ONMOUSEOUT="changeImages('top_01', 'Bilder/top_01.jpg', 'top_02', 'Bilder/top_02.jpg', 'top_03', 'Bilder/top_03.jpg', 'top_04', 'Bilder/top_04.jpg', 'top_09', 'Bilder/top_09.jpg'); return true;" href="http://www.schick-personal.ch/index2.asp?XI=Form&frm=122&lan=1">
            <img NAME="top_03" SRC="web/Bilder/top_03.jpg" BORDER="0" width="173" height="93"></a></td>
            <td>
            <a ONMOUSEOVER="changeImages('top_04', 'Bilder/top_04-over.jpg', 'top_05', 'Bilder/top_05-top_04_over.jpg'); return true;" ONMOUSEOUT="changeImages('top_04', 'Bilder/top_04.jpg', 'top_05', 'Bilder/top_05.jpg'); return true;" href="http://www.schick-personal.ch/index2.asp?get=1&FID=110&File=level01&Aff=">
            <img NAME="top_04" SRC="web/Bilder/top_04.jpg" BORDER="0" width="183" height="93"></a></td>
            <td>
            <a ONMOUSEOVER="changeImages('top_01', 'Bilder/top_01-top_05_over.jpg', 'top_04', 'Bilder/top_04-top_05_over.jpg', 'top_05', 'Bilder/top_05-over.jpg', 'top_06', 'Bilder/top_06-top_05_over.jpg'); return true;" ONMOUSEOUT="changeImages('top_01', 'Bilder/top_01.jpg', 'top_04', 'Bilder/top_04.jpg', 'top_05', 'Bilder/top_05.jpg', 'top_06', 'Bilder/top_06.jpg'); return true;" href="http://www.schick-personal.ch/index2.asp?get=1&FID=115&File=level01&Aff=">
            <img NAME="top_05" SRC="web/Bilder/top_05.jpg" BORDER="0" width="175" height="93"></a></td>
            <td>
            <a ONMOUSEOVER="changeImages('top_06', 'Bilder/top_06-over.jpg', 'top_07', 'Bilder/top_07-top_06_over.jpg'); return true;" ONMOUSEOUT="changeImages('top_06', 'Bilder/top_06.jpg', 'top_07', 'Bilder/top_07.jpg'); return true;" href="http://www.schick-personal.ch/index2.asp?XI=Stellen&frm=Z">
            <img NAME="top_06" SRC="web/Bilder/top_06.jpg" BORDER="0" width="191" height="93"></a></td>
            <td>
            <a ONMOUSEOVER="changeImages('top_07', 'Bilder/top_07-over.jpg'); return true;" ONMOUSEOUT="changeImages('top_07', 'Bilder/top_07.jpg'); return true;" href="http://www.schick-personal.ch/index2.asp?get=1&FID=113&File=level01&Aff=index2.asp?XI=Links">
            <img NAME="top_07" SRC="web/Bilder/top_07.jpg" BORDER="0" width="190" height="93"></a></td>
            <td ROWSPAN="2">
            <img SRC="web/Bilder/top_08.jpg" width="76" height="100"></td>
          </tr>
          <tr>
            <td COLSPAN="5">
            <img NAME="top_09" SRC="web/Bilder/top_09.jpg" width="912" height="7"></td>
          </tr>
        </table>
        <!-- ImageReady Slices beenden --></td>
      </tr>
    </table>
    <!-- ImageReady Slices beenden --></td>
  </tr>
  <tr>
    <td width="100%">
    <!-- ImageReady Slices (seite.psd) -->
    <table BORDER="0" CELLPADDING="0" CELLSPACING="0" width="1005">
      <tr>
        <td ROWSPAN="2" width="45">
        <img SRC="web/Bilder/seite_02.jpg" width="43" height="409"></td>
        <td background="web/Bilder/seite_03.jpg" width="919" height="301" align="left" valign="top">
        <table cellpadding="0" cellspacing="0" border="0" width="911" style="border-collapse: collapse" bordercolor="#111111">
          <tr>
            <td align="left" valign="top" width="173"><b><br>
            <br>
            &nbsp; Schick:Personal<br>
            </b><br>
            &nbsp; Bahnhofstrasse 21<br>
            &nbsp; 6304 Zug<br>
            <br>
            &nbsp;&nbsp;Tel. 041 790 88 80<br>
            &nbsp; <a href="mailto:j.schick@schick-personal.ch">j.schick@schick-personal.ch</a><br>
            <br>
            &nbsp;&nbsp;<a href="http://www.schick-personal.ch/index2.asp?XI=Form&frm=122&lan=1">» Kontaktformular</a><br>
&nbsp; » <a href="http://www.schick-personal.ch/index.asp">Home</a></td>
            <td align="left" valign="top" width="551"><br>
            <iframe name="Stellen" src="include/1111/komponenten.asp?XI=<%=session ("XI")%>&Pg=<%=session ("Pg")%>&MFID=<%=session ("MFID")%>&FID=<%=session ("MFID")%>&get=<%=session ("get")%>&File=<%=session ("File")%>&frm=<%=session ("frm")%>&lan=<%=session ("lan")%>&Su=<%=session ("Su")%>&II=<%=session ("II")%>&G1=<%=session ("G1")%>&G2=<%=session ("G2")%>&G3=<%=session ("G3")%>&BID=<%=session ("BID")%>&Ac=<%=session ("Ac")%>&Dr=<%=session ("Dr")%>" frameborder="0" width="708" height="279"></iframe>          
            
            </td>
          </tr>
        </table>
&nbsp;</td>
        <td ROWSPAN="2" width="41">
        &nbsp;</td>
      </tr>
      <tr>
        <td width="919"><img SRC="web/Bilder/seite_05.jpg" width="911" height="108"></td>
      </tr>
    </table>
    <!-- ImageReady Slices beenden -->
    </td>
  </tr>
  </table>

</div>

</body>

</html>