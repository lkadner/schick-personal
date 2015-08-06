
        <%

		Response.CharSet = "ISO-8859-1"
		Response.CodePage = 28591

'XI=Stellen&Pg=&MFID=&FID=&get=&File=&frm=&lan=&Su=&II=&G1=Z&G2=&G3=&BID=&Ac=&Dr=
'XI=Stellen &Pg= &MFID= &FID= &get= &File=  &frm= &lan= &Su= &II= &G1=Z &G2= &G3= &BID= &Ac= &Dr=
        
        session("XI") = "Stellen"
		session("Pg") = ""
		session("MFID") = ""
		session("FID") = ""
		session("get") = ""
		session("File") = ""
		session("frm") = ""
		session("lan") = ""
		session("Su") = ""
		
		session("II") = ""
		session("G1") = request("G1")
		session("G2") = request("G2")
		session("G3") = request("G3")

		session("BID") = ""
		session("Ac") = ""
		session("Dr") = ""
        
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
        %><!--#include virtual="net/d/inc-inhaltl.asp"-->
        <%        
        End Select
        %>
