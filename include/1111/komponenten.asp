        
<link rel="stylesheet" type="text/css" href="http://www.schick-personal.ch/web/format.css">
<body background="http://www.schick-personal.ch/web/Bilder/seite_03.jpg">
        <%
        
        session ("XI") = request("XI")
		session("Pg") = request("Pg")
		session("MFID") = request("MFID")
		session("FID") = request("FID")
		session ("get") = request("get")
		session("File") = request("File")
		session("frm") = request("frm")
		session("lan") = request("lan")
		session("Su") = request("Su")
		
		session("II") = request("II")
		session("G1") = request("G1")
		session("G2") = request("G2")
		session("G3") = request("G3")

		session("BID") = request("BID")
		session("Ac") = request("Ac")
		session("Dr") = request("Dr")
        
        Select Case session("XI")                                              
  
        Case "News"
        %>
        <!--#include virtual="net/news/1111/lang.asp"-->
        <%      
        Case "Form"
        %>
        <!--#include virtual="net/forms/formstat.asp"-->                                                       
        <%          
        Case "Form2"
        %>
        <!--#include virtual="net/forms/dankeformb.asp"-->
        <%          
        Case "Smp"
        %>
        <!--#include virtual="net/d/sitemap.asp"-->   
        <%          
        Case "Links"
        %>
        <!--#include virtual="net/Linkliste/kurz.asp"--> 
        <%          
        Case "Stellen"
        %>
        <!--#include virtual="net/Stellen/meta.asp"-->               
        <%          
        Case "Stellen2"
        %>
        <!--#include virtual="net/Stellen/kurz.asp"-->   
        <%          
        Case "Stellen3"
        %>
        <!--#include virtual="net/Stellen/lang.asp"-->                                                           
        <%          
        Case "CMS"
        %>
        <!--#include virtual="net/impressum2.asp"-->                   
        <%
        Case Else
        %><div align="left">
          <table width="96%" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0"><tr>
            <td width="98%" align="left" valign="top"><!--#include virtual="net/d/inc-inhaltl.asp"--></td></tr></table> 
        </div>
        <%        
        End Select
        %>