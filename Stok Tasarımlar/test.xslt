<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
	xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
	xmlns:ccts="urn:un:unece:uncefact:documentation:2"
	xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001"
	xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988"
	xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001"
	xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:link="http://www.xbrl.org/2003/linkbase"
	xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:DespatchAdvice-2"
	xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2"
	xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2"
	xmlns:xbrldi="http://xbrl.org/2006/xbrldi"
	xmlns:xbrli="http://www.xbrl.org/2003/instance"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi">
	<xsl:character-map name="a">
		<xsl:output-character character="&#128;" string=""/>
		<xsl:output-character character="&#129;" string=""/>
		<xsl:output-character character="&#130;" string=""/>
		<xsl:output-character character="&#131;" string=""/>
		<xsl:output-character character="&#132;" string=""/>
		<xsl:output-character character="&#133;" string=""/>
		<xsl:output-character character="&#134;" string=""/>
		<xsl:output-character character="&#135;" string=""/>
		<xsl:output-character character="&#136;" string=""/>
		<xsl:output-character character="&#137;" string=""/>
		<xsl:output-character character="&#138;" string=""/>
		<xsl:output-character character="&#139;" string=""/>
		<xsl:output-character character="&#140;" string=""/>
		<xsl:output-character character="&#141;" string=""/>
		<xsl:output-character character="&#142;" string=""/>
		<xsl:output-character character="&#143;" string=""/>
		<xsl:output-character character="&#144;" string=""/>
		<xsl:output-character character="&#145;" string=""/>
		<xsl:output-character character="&#146;" string=""/>
		<xsl:output-character character="&#147;" string=""/>
		<xsl:output-character character="&#148;" string=""/>
		<xsl:output-character character="&#149;" string=""/>
		<xsl:output-character character="&#150;" string=""/>
		<xsl:output-character character="&#151;" string=""/>
		<xsl:output-character character="&#152;" string=""/>
		<xsl:output-character character="&#153;" string=""/>
		<xsl:output-character character="&#154;" string=""/>
		<xsl:output-character character="&#155;" string=""/>
		<xsl:output-character character="&#156;" string=""/>
		<xsl:output-character character="&#157;" string=""/>
		<xsl:output-character character="&#158;" string=""/>
		<xsl:output-character character="&#159;" string=""/>
	</xsl:character-map>
	<xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
	<xsl:output version="4.0" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd" use-character-maps="a"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:template match="/">
		<html>
			<head>
				<!-- KAREKOD OLUŞUMUNU SAĞLAYAN KOD ALANI BAŞLANGIÇ -->
			<!-- TASARIMDA <HEAD> </HEAD> BAŞLIKLARI ARASINA EKLENİR. <SCRİPT ... TYPE=...> İLE BAŞLAYAN ALANDAN </script> BİTEN ALAN KOPYALANARAK BU ALANA YERLEŞTİRİLMELİDİR. --> 
				<script type="text/javascript">
                   <![CDATA[var QRCode;!function(){function a(a){this.mode=c.MODE_8BIT_BYTE,this.data=a,this.parsedData=[];
				   for(var b=[],d=0,e=this.data.length;e>d;d++){var f=this.data.charCodeAt(d);f>65536?(b[0]=240|(1835008&f)>>>18,
				   b[1]=128|(258048&f)>>>12,b[2]=128|(4032&f)>>>6,b[3]=128|63&f):f>2048?(b[0]=224|(61440&f)>>>12,b[1]=128|(4032&f)>>>6,
				   b[2]=128|63&f):f>128?(b[0]=192|(1984&f)>>>6,
				   b[1]=128|63&f):b[0]=f,this.parsedData=this.parsedData.concat(b)}
				   this.parsedData.length!=this.data.length&&(this.parsedData.unshift(191),this.parsedData.unshift(187),
				   this.parsedData.unshift(239))}function b(a,b){this.typeNumber=a,this.errorCorrectLevel=b,this.modules=null,this.moduleCount=0,this.dataCache=null,
				   this.dataList=[]}function i(a,b){if(void 0==a.length)throw new Error(a.length+"/"+b);for(var c=0;c<a.length&&0==a[c];)c++;
				   this.num=new Array(a.length-c+b);for(var d=0;d<a.length-c;d++)this.num[d]=a[d+c]}function j(a,b){this.totalCount=a,this.dataCount=b}
				   function k(){this.buffer=[],this.length=0}function m(){return"undefined"!=typeof CanvasRenderingContext2D}function n(){var a=!1,b=navigator.userAgent;return/android/i.test(b)&&(a=!0,aMat=b.toString().match(/android ([0-9]\.[0-9])/i),aMat&&aMat[1]&&(a=parseFloat(aMat[1]))),a}function r(a,b){for(var c=1,e=s(a),f=0,g=l.length;g>=f;f++){var h=0;switch(b){case d.L:h=l[f][0];break;case d.M:h=l[f][1];break;case d.Q:h=l[f][2];break;case d.H:h=l[f][3]}if(h>=e)break;c++}if(c>l.length)throw new Error("Too long data");return c}function s(a){var b=encodeURI(a).toString().replace(/\%[0-9a-fA-F]{2}/g,"a");return b.length+(b.length!=a?3:0)}a.prototype={getLength:function(){return this.parsedData.length},write:function(a){for(var b=0,c=this.parsedData.length;c>b;b++)a.put(this.parsedData[b],8)}},b.prototype={addData:function(b){var c=new a(b);this.dataList.push(c),this.dataCache=null},isDark:function(a,b){if(0>a||this.moduleCount<=a||0>b||this.moduleCount<=b)throw new Error(a+","+b);return this.modules[a][b]},getModuleCount:function(){return this.moduleCount},make:function(){this.makeImpl(!1,this.getBestMaskPattern())},makeImpl:function(a,c){this.moduleCount=4*this.typeNumber+17,this.modules=new Array(this.moduleCount);for(var d=0;d<this.moduleCount;d++){this.modules[d]=new Array(this.moduleCount);for(var e=0;e<this.moduleCount;e++)this.modules[d][e]=null}this.setupPositionProbePattern(0,0),this.setupPositionProbePattern(this.moduleCount-7,0),this.setupPositionProbePattern(0,this.moduleCount-7),this.setupPositionAdjustPattern(),this.setupTimingPattern(),this.setupTypeInfo(a,c),this.typeNumber>=7&&this.setupTypeNumber(a),null==this.dataCache&&(this.dataCache=b.createData(this.typeNumber,this.errorCorrectLevel,this.dataList)),this.mapData(this.dataCache,c)},setupPositionProbePattern:function(a,b){for(var c=-1;7>=c;c++)if(!(-1>=a+c||this.moduleCount<=a+c))for(var d=-1;7>=d;d++)-1>=b+d||this.moduleCount<=b+d||(this.modules[a+c][b+d]=c>=0&&6>=c&&(0==d||6==d)||d>=0&&6>=d&&(0==c||6==c)||c>=2&&4>=c&&d>=2&&4>=d?!0:!1)},getBestMaskPattern:function(){for(var a=0,b=0,c=0;8>c;c++){this.makeImpl(!0,c);var d=f.getLostPoint(this);(0==c||a>d)&&(a=d,b=c)}return b},createMovieClip:function(a,b,c){var d=a.createEmptyMovieClip(b,c),e=1;this.make();for(var f=0;f<this.modules.length;f++)for(var g=f*e,h=0;h<this.modules[f].length;h++){var i=h*e,j=this.modules[f][h];j&&(d.beginFill(0,100),d.moveTo(i,g),d.lineTo(i+e,g),d.lineTo(i+e,g+e),d.lineTo(i,g+e),d.endFill())}return d},setupTimingPattern:function(){for(var a=8;a<this.moduleCount-8;a++)null==this.modules[a][6]&&(this.modules[a][6]=0==a%2);for(var b=8;b<this.moduleCount-8;b++)null==this.modules[6][b]&&(this.modules[6][b]=0==b%2)},setupPositionAdjustPattern:function(){for(var a=f.getPatternPosition(this.typeNumber),b=0;b<a.length;b++)for(var c=0;c<a.length;c++){var d=a[b],e=a[c];if(null==this.modules[d][e])for(var g=-2;2>=g;g++)for(var h=-2;2>=h;h++)this.modules[d+g][e+h]=-2==g||2==g||-2==h||2==h||0==g&&0==h?!0:!1}},setupTypeNumber:function(a){for(var b=f.getBCHTypeNumber(this.typeNumber),c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[Math.floor(c/3)][c%3+this.moduleCount-8-3]=d}for(var c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[c%3+this.moduleCount-8-3][Math.floor(c/3)]=d}},setupTypeInfo:function(a,b){for(var c=this.errorCorrectLevel<<3|b,d=f.getBCHTypeInfo(c),e=0;15>e;e++){var g=!a&&1==(1&d>>e);6>e?this.modules[e][8]=g:8>e?this.modules[e+1][8]=g:this.modules[this.moduleCount-15+e][8]=g}for(var e=0;15>e;e++){var g=!a&&1==(1&d>>e);8>e?this.modules[8][this.moduleCount-e-1]=g:9>e?this.modules[8][15-e-1+1]=g:this.modules[8][15-e-1]=g}this.modules[this.moduleCount-8][8]=!a},mapData:function(a,b){for(var c=-1,d=this.moduleCount-1,e=7,g=0,h=this.moduleCount-1;h>0;h-=2)for(6==h&&h--;;){for(var i=0;2>i;i++)if(null==this.modules[d][h-i]){var j=!1;g<a.length&&(j=1==(1&a[g]>>>e));var k=f.getMask(b,d,h-i);k&&(j=!j),this.modules[d][h-i]=j,e--,-1==e&&(g++,e=7)}if(d+=c,0>d||this.moduleCount<=d){d-=c,c=-c;break}}}},b.PAD0=236,b.PAD1=17,b.createData=function(a,c,d){for(var e=j.getRSBlocks(a,c),g=new k,h=0;h<d.length;h++){var i=d[h];g.put(i.mode,4),g.put(i.getLength(),f.getLengthInBits(i.mode,a)),i.write(g)}for(var l=0,h=0;h<e.length;h++)l+=e[h].dataCount;if(g.getLengthInBits()>8*l)throw new Error("code length overflow. ("+g.getLengthInBits()+">"+8*l+")");for(g.getLengthInBits()+4<=8*l&&g.put(0,4);0!=g.getLengthInBits()%8;)g.putBit(!1);for(;;){if(g.getLengthInBits()>=8*l)break;if(g.put(b.PAD0,8),g.getLengthInBits()>=8*l)break;g.put(b.PAD1,8)}return b.createBytes(g,e)},b.createBytes=function(a,b){for(var c=0,d=0,e=0,g=new Array(b.length),h=new Array(b.length),j=0;j<b.length;j++){var k=b[j].dataCount,l=b[j].totalCount-k;d=Math.max(d,k),e=Math.max(e,l),g[j]=new Array(k);for(var m=0;m<g[j].length;m++)g[j][m]=255&a.buffer[m+c];c+=k;var n=f.getErrorCorrectPolynomial(l),o=new i(g[j],n.getLength()-1),p=o.mod(n);h[j]=new Array(n.getLength()-1);for(var m=0;m<h[j].length;m++){var q=m+p.getLength()-h[j].length;h[j][m]=q>=0?p.get(q):0}}for(var r=0,m=0;m<b.length;m++)r+=b[m].totalCount;for(var s=new Array(r),t=0,m=0;d>m;m++)for(var j=0;j<b.length;j++)m<g[j].length&&(s[t++]=g[j][m]);for(var m=0;e>m;m++)for(var j=0;j<b.length;j++)m<h[j].length&&(s[t++]=h[j][m]);return s};for(var c={MODE_NUMBER:1,MODE_ALPHA_NUM:2,MODE_8BIT_BYTE:4,MODE_KANJI:8},d={L:1,M:0,Q:3,H:2},e={PATTERN000:0,PATTERN001:1,PATTERN010:2,PATTERN011:3,PATTERN100:4,PATTERN101:5,PATTERN110:6,PATTERN111:7},f={PATTERN_POSITION_TABLE:[[],[6,18],[6,22],[6,26],[6,30],[6,34],[6,22,38],[6,24,42],[6,26,46],[6,28,50],[6,30,54],[6,32,58],[6,34,62],[6,26,46,66],[6,26,48,70],[6,26,50,74],[6,30,54,78],[6,30,56,82],[6,30,58,86],[6,34,62,90],[6,28,50,72,94],[6,26,50,74,98],[6,30,54,78,102],[6,28,54,80,106],[6,32,58,84,110],[6,30,58,86,114],[6,34,62,90,118],[6,26,50,74,98,122],[6,30,54,78,102,126],[6,26,52,78,104,130],[6,30,56,82,108,134],[6,34,60,86,112,138],[6,30,58,86,114,142],[6,34,62,90,118,146],[6,30,54,78,102,126,150],[6,24,50,76,102,128,154],[6,28,54,80,106,132,158],[6,32,58,84,110,136,162],[6,26,54,82,110,138,166],[6,30,58,86,114,142,170]],G15:1335,G18:7973,G15_MASK:21522,getBCHTypeInfo:function(a){for(var b=a<<10;f.getBCHDigit(b)-f.getBCHDigit(f.G15)>=0;)b^=f.G15<<f.getBCHDigit(b)-f.getBCHDigit(f.G15);return(a<<10|b)^f.G15_MASK},getBCHTypeNumber:function(a){for(var b=a<<12;f.getBCHDigit(b)-f.getBCHDigit(f.G18)>=0;)b^=f.G18<<f.getBCHDigit(b)-f.getBCHDigit(f.G18);return a<<12|b},getBCHDigit:function(a){for(var b=0;0!=a;)b++,a>>>=1;return b},getPatternPosition:function(a){return f.PATTERN_POSITION_TABLE[a-1]},getMask:function(a,b,c){switch(a){case e.PATTERN000:return 0==(b+c)%2;case e.PATTERN001:return 0==b%2;case e.PATTERN010:return 0==c%3;case e.PATTERN011:return 0==(b+c)%3;case e.PATTERN100:return 0==(Math.floor(b/2)+Math.floor(c/3))%2;case e.PATTERN101:return 0==b*c%2+b*c%3;case e.PATTERN110:return 0==(b*c%2+b*c%3)%2;case e.PATTERN111:return 0==(b*c%3+(b+c)%2)%2;default:throw new Error("bad maskPattern:"+a)}},getErrorCorrectPolynomial:function(a){for(var b=new i([1],0),c=0;a>c;c++)b=b.multiply(new i([1,g.gexp(c)],0));return b},getLengthInBits:function(a,b){if(b>=1&&10>b)switch(a){case c.MODE_NUMBER:return 10;case c.MODE_ALPHA_NUM:return 9;case c.MODE_8BIT_BYTE:return 8;case c.MODE_KANJI:return 8;default:throw new Error("mode:"+a)}else if(27>b)switch(a){case c.MODE_NUMBER:return 12;case c.MODE_ALPHA_NUM:return 11;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 10;default:throw new Error("mode:"+a)}else{if(!(41>b))throw new Error("type:"+b);switch(a){case c.MODE_NUMBER:return 14;case c.MODE_ALPHA_NUM:return 13;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 12;default:throw new Error("mode:"+a)}}},getLostPoint:function(a){for(var b=a.getModuleCount(),c=0,d=0;b>d;d++)for(var e=0;b>e;e++){for(var f=0,g=a.isDark(d,e),h=-1;1>=h;h++)if(!(0>d+h||d+h>=b))for(var i=-1;1>=i;i++)0>e+i||e+i>=b||(0!=h||0!=i)&&g==a.isDark(d+h,e+i)&&f++;f>5&&(c+=3+f-5)}for(var d=0;b-1>d;d++)for(var e=0;b-1>e;e++){var j=0;a.isDark(d,e)&&j++,a.isDark(d+1,e)&&j++,a.isDark(d,e+1)&&j++,a.isDark(d+1,e+1)&&j++,(0==j||4==j)&&(c+=3)}for(var d=0;b>d;d++)for(var e=0;b-6>e;e++)a.isDark(d,e)&&!a.isDark(d,e+1)&&a.isDark(d,e+2)&&a.isDark(d,e+3)&&a.isDark(d,e+4)&&!a.isDark(d,e+5)&&a.isDark(d,e+6)&&(c+=40);for(var e=0;b>e;e++)for(var d=0;b-6>d;d++)a.isDark(d,e)&&!a.isDark(d+1,e)&&a.isDark(d+2,e)&&a.isDark(d+3,e)&&a.isDark(d+4,e)&&!a.isDark(d+5,e)&&a.isDark(d+6,e)&&(c+=40);for(var k=0,e=0;b>e;e++)for(var d=0;b>d;d++)a.isDark(d,e)&&k++;var l=Math.abs(100*k/b/b-50)/5;return c+=10*l}},g={glog:function(a){if(1>a)throw new Error("glog("+a+")");return g.LOG_TABLE[a]},gexp:function(a){for(;0>a;)a+=255;for(;a>=256;)a-=255;return g.EXP_TABLE[a]},EXP_TABLE:new Array(256),LOG_TABLE:new Array(256)},h=0;8>h;h++)g.EXP_TABLE[h]=1<<h;for(var h=8;256>h;h++)g.EXP_TABLE[h]=g.EXP_TABLE[h-4]^g.EXP_TABLE[h-5]^g.EXP_TABLE[h-6]^g.EXP_TABLE[h-8];for(var h=0;255>h;h++)g.LOG_TABLE[g.EXP_TABLE[h]]=h;i.prototype={get:function(a){return this.num[a]},getLength:function(){return this.num.length},multiply:function(a){for(var b=new Array(this.getLength()+a.getLength()-1),c=0;c<this.getLength();c++)for(var d=0;d<a.getLength();d++)b[c+d]^=g.gexp(g.glog(this.get(c))+g.glog(a.get(d)));return new i(b,0)},mod:function(a){if(this.getLength()-a.getLength()<0)return this;for(var b=g.glog(this.get(0))-g.glog(a.get(0)),c=new Array(this.getLength()),d=0;d<this.getLength();d++)c[d]=this.get(d);for(var d=0;d<a.getLength();d++)c[d]^=g.gexp(g.glog(a.get(d))+b);return new i(c,0).mod(a)}},j.RS_BLOCK_TABLE=[[1,26,19],[1,26,16],[1,26,13],[1,26,9],[1,44,34],[1,44,28],[1,44,22],[1,44,16],[1,70,55],[1,70,44],[2,35,17],[2,35,13],[1,100,80],[2,50,32],[2,50,24],[4,25,9],[1,134,108],[2,67,43],[2,33,15,2,34,16],[2,33,11,2,34,12],[2,86,68],[4,43,27],[4,43,19],[4,43,15],[2,98,78],[4,49,31],[2,32,14,4,33,15],[4,39,13,1,40,14],[2,121,97],[2,60,38,2,61,39],[4,40,18,2,41,19],[4,40,14,2,41,15],[2,146,116],[3,58,36,2,59,37],[4,36,16,4,37,17],[4,36,12,4,37,13],[2,86,68,2,87,69],[4,69,43,1,70,44],[6,43,19,2,44,20],[6,43,15,2,44,16],[4,101,81],[1,80,50,4,81,51],[4,50,22,4,51,23],[3,36,12,8,37,13],[2,116,92,2,117,93],[6,58,36,2,59,37],[4,46,20,6,47,21],[7,42,14,4,43,15],[4,133,107],[8,59,37,1,60,38],[8,44,20,4,45,21],[12,33,11,4,34,12],[3,145,115,1,146,116],[4,64,40,5,65,41],[11,36,16,5,37,17],[11,36,12,5,37,13],[5,109,87,1,110,88],[5,65,41,5,66,42],[5,54,24,7,55,25],[11,36,12],[5,122,98,1,123,99],[7,73,45,3,74,46],[15,43,19,2,44,20],[3,45,15,13,46,16],[1,135,107,5,136,108],[10,74,46,1,75,47],[1,50,22,15,51,23],[2,42,14,17,43,15],[5,150,120,1,151,121],[9,69,43,4,70,44],[17,50,22,1,51,23],[2,42,14,19,43,15],[3,141,113,4,142,114],[3,70,44,11,71,45],[17,47,21,4,48,22],[9,39,13,16,40,14],[3,135,107,5,136,108],[3,67,41,13,68,42],[15,54,24,5,55,25],[15,43,15,10,44,16],[4,144,116,4,145,117],[17,68,42],[17,50,22,6,51,23],[19,46,16,6,47,17],[2,139,111,7,140,112],[17,74,46],[7,54,24,16,55,25],[34,37,13],[4,151,121,5,152,122],[4,75,47,14,76,48],[11,54,24,14,55,25],[16,45,15,14,46,16],[6,147,117,4,148,118],[6,73,45,14,74,46],[11,54,24,16,55,25],[30,46,16,2,47,17],[8,132,106,4,133,107],[8,75,47,13,76,48],[7,54,24,22,55,25],[22,45,15,13,46,16],[10,142,114,2,143,115],[19,74,46,4,75,47],[28,50,22,6,51,23],[33,46,16,4,47,17],[8,152,122,4,153,123],[22,73,45,3,74,46],[8,53,23,26,54,24],[12,45,15,28,46,16],[3,147,117,10,148,118],[3,73,45,23,74,46],[4,54,24,31,55,25],[11,45,15,31,46,16],[7,146,116,7,147,117],[21,73,45,7,74,46],[1,53,23,37,54,24],[19,45,15,26,46,16],[5,145,115,10,146,116],[19,75,47,10,76,48],[15,54,24,25,55,25],[23,45,15,25,46,16],[13,145,115,3,146,116],[2,74,46,29,75,47],[42,54,24,1,55,25],[23,45,15,28,46,16],[17,145,115],[10,74,46,23,75,47],[10,54,24,35,55,25],[19,45,15,35,46,16],[17,145,115,1,146,116],[14,74,46,21,75,47],[29,54,24,19,55,25],[11,45,15,46,46,16],[13,145,115,6,146,116],[14,74,46,23,75,47],[44,54,24,7,55,25],[59,46,16,1,47,17],[12,151,121,7,152,122],[12,75,47,26,76,48],[39,54,24,14,55,25],[22,45,15,41,46,16],[6,151,121,14,152,122],[6,75,47,34,76,48],[46,54,24,10,55,25],[2,45,15,64,46,16],[17,152,122,4,153,123],[29,74,46,14,75,47],[49,54,24,10,55,25],[24,45,15,46,46,16],[4,152,122,18,153,123],[13,74,46,32,75,47],[48,54,24,14,55,25],[42,45,15,32,46,16],[20,147,117,4,148,118],[40,75,47,7,76,48],[43,54,24,22,55,25],[10,45,15,67,46,16],[19,148,118,6,149,119],[18,75,47,31,76,48],[34,54,24,34,55,25],[20,45,15,61,46,16]],j.getRSBlocks=function(a,b){var c=j.getRsBlockTable(a,b);if(void 0==c)throw new Error("bad rs block @ typeNumber:"+a+"/errorCorrectLevel:"+b);for(var d=c.length/3,e=[],f=0;d>f;f++)for(var g=c[3*f+0],h=c[3*f+1],i=c[3*f+2],k=0;g>k;k++)e.push(new j(h,i));return e},j.getRsBlockTable=function(a,b){switch(b){case d.L:return j.RS_BLOCK_TABLE[4*(a-1)+0];case d.M:return j.RS_BLOCK_TABLE[4*(a-1)+1];case d.Q:return j.RS_BLOCK_TABLE[4*(a-1)+2];case d.H:return j.RS_BLOCK_TABLE[4*(a-1)+3];default:return void 0}},k.prototype={get:function(a){var b=Math.floor(a/8);return 1==(1&this.buffer[b]>>>7-a%8)},put:function(a,b){for(var c=0;b>c;c++)this.putBit(1==(1&a>>>b-c-1))},getLengthInBits:function(){return this.length},putBit:function(a){var b=Math.floor(this.length/8);this.buffer.length<=b&&this.buffer.push(0),a&&(this.buffer[b]|=128>>>this.length%8),this.length++}};var l=[[17,14,11,7],[32,26,20,14],[53,42,32,24],[78,62,46,34],[106,84,60,44],[134,106,74,58],[154,122,86,64],[192,152,108,84],[230,180,130,98],[271,213,151,119],[321,251,177,137],[367,287,203,155],[425,331,241,177],[458,362,258,194],[520,412,292,220],[586,450,322,250],[644,504,364,280],[718,560,394,310],[792,624,442,338],[858,666,482,382],[929,711,509,403],[1003,779,565,439],[1091,857,611,461],[1171,911,661,511],[1273,997,715,535],[1367,1059,751,593],[1465,1125,805,625],[1528,1190,868,658],[1628,1264,908,698],[1732,1370,982,742],[1840,1452,1030,790],[1952,1538,1112,842],[2068,1628,1168,898],[2188,1722,1228,958],[2303,1809,1283,983],[2431,1911,1351,1051],[2563,1989,1423,1093],[2699,2099,1499,1139],[2809,2213,1579,1219],[2953,2331,1663,1273]],o=function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){function g(a,b){var c=document.createElementNS("http://www.w3.org/2000/svg",a);for(var d in b)b.hasOwnProperty(d)&&c.setAttribute(d,b[d]);return c}var b=this._htOption,c=this._el,d=a.getModuleCount();Math.floor(b.width/d),Math.floor(b.height/d),this.clear();var h=g("svg",{viewBox:"0 0 "+String(d)+" "+String(d),width:"100%",height:"100%",fill:b.colorLight});h.setAttributeNS("http://www.w3.org/2000/xmlns/","xmlns:xlink","http://www.w3.org/1999/xlink"),c.appendChild(h),h.appendChild(g("rect",{fill:b.colorDark,width:"1",height:"1",id:"template"}));for(var i=0;d>i;i++)for(var j=0;d>j;j++)if(a.isDark(i,j)){var k=g("use",{x:String(i),y:String(j)});k.setAttributeNS("http://www.w3.org/1999/xlink","href","#template"),h.appendChild(k)}},a.prototype.clear=function(){for(;this._el.hasChildNodes();)this._el.removeChild(this._el.lastChild)},a}(),p="svg"===document.documentElement.tagName.toLowerCase(),q=p?o:m()?function(){function a(){this._elImage.src=this._elCanvas.toDataURL("image/png"),this._elImage.style.display="block",this._elCanvas.style.display="none"}function d(a,b){var c=this;if(c._fFail=b,c._fSuccess=a,null===c._bSupportDataURI){var d=document.createElement("img"),e=function(){c._bSupportDataURI=!1,c._fFail&&_fFail.call(c)},f=function(){c._bSupportDataURI=!0,c._fSuccess&&c._fSuccess.call(c)};return d.onabort=e,d.onerror=e,d.onload=f,d.src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==",void 0}c._bSupportDataURI===!0&&c._fSuccess?c._fSuccess.call(c):c._bSupportDataURI===!1&&c._fFail&&c._fFail.call(c)}if(this._android&&this._android<=2.1){var b=1/window.devicePixelRatio,c=CanvasRenderingContext2D.prototype.drawImage;CanvasRenderingContext2D.prototype.drawImage=function(a,d,e,f,g,h,i,j){if("nodeName"in a&&/img/i.test(a.nodeName))for(var l=arguments.length-1;l>=1;l--)arguments[l]=arguments[l]*b;else"undefined"==typeof j&&(arguments[1]*=b,arguments[2]*=b,arguments[3]*=b,arguments[4]*=b);c.apply(this,arguments)}}var e=function(a,b){this._bIsPainted=!1,this._android=n(),this._htOption=b,this._elCanvas=document.createElement("canvas"),this._elCanvas.width=b.width,this._elCanvas.height=b.height,a.appendChild(this._elCanvas),this._el=a,this._oContext=this._elCanvas.getContext("2d"),this._bIsPainted=!1,this._elImage=document.createElement("img"),this._elImage.style.display="none",this._el.appendChild(this._elImage),this._bSupportDataURI=null};return e.prototype.draw=function(a){var b=this._elImage,c=this._oContext,d=this._htOption,e=a.getModuleCount(),f=d.width/e,g=d.height/e,h=Math.round(f),i=Math.round(g);b.style.display="none",this.clear();for(var j=0;e>j;j++)for(var k=0;e>k;k++){var l=a.isDark(j,k),m=k*f,n=j*g;c.strokeStyle=l?d.colorDark:d.colorLight,c.lineWidth=1,c.fillStyle=l?d.colorDark:d.colorLight,c.fillRect(m,n,f,g),c.strokeRect(Math.floor(m)+.5,Math.floor(n)+.5,h,i),c.strokeRect(Math.ceil(m)-.5,Math.ceil(n)-.5,h,i)}this._bIsPainted=!0},e.prototype.makeImage=function(){this._bIsPainted&&d.call(this,a)},e.prototype.isPainted=function(){return this._bIsPainted},e.prototype.clear=function(){this._oContext.clearRect(0,0,this._elCanvas.width,this._elCanvas.height),this._bIsPainted=!1},e.prototype.round=function(a){return a?Math.floor(1e3*a)/1e3:a},e}():function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){for(var b=this._htOption,c=this._el,d=a.getModuleCount(),e=Math.floor(b.width/d),f=Math.floor(b.height/d),g=['<table style="border:0;border-collapse:collapse;">'],h=0;d>h;h++){g.push("<tr>");for(var i=0;d>i;i++)g.push('<td style="border:0;border-collapse:collapse;padding:0;margin:0;width:'+e+"px;height:"+f+"px;background-color:"+(a.isDark(h,i)?b.colorDark:b.colorLight)+';"></td>');g.push("</tr>")}g.push("</table>"),c.innerHTML=g.join("");var j=c.childNodes[0],k=(b.width-j.offsetWidth)/2,l=(b.height-j.offsetHeight)/2;k>0&&l>0&&(j.style.margin=l+"px "+k+"px")},a.prototype.clear=function(){this._el.innerHTML=""},a}();QRCode=function(a,b){if(this._htOption={width:256,height:256,typeNumber:4,colorDark:"#000000",colorLight:"#ffffff",correctLevel:d.H},"string"==typeof b&&(b={text:b}),b)for(var c in b)
				   this._htOption[c]=b[c];"string"==typeof a&&(a=document.getElementById(a)),
				   this._android=n(),this._el=a,
				   this._oQRCode=null,this._oDrawing=new q(this._el,this._htOption),this._htOption.text&&this.makeCode(this._htOption.text)},
				   QRCode.prototype.makeCode=function(a){this._oQRCode=new b(r(a,this._htOption.correctLevel),this._htOption.correctLevel),
				   this._oQRCode.addData(a),this._oQRCode.make(),this._el.title=a,this._oDrawing.draw(this._oQRCode),this.makeImage()},
				   QRCode.prototype.makeImage=function(){"function"==typeof this._oDrawing.makeImage&&(!this._android||this._android>=3)&&this._oDrawing.makeImage()},
				   QRCode.prototype.clear=function(){this._oDrawing.clear()},QRCode.CorrectLevel=d}();]]></script>
				   <!-- BİTİŞ -->
				<!-- TASARIMDA <HEAD> </HEAD> BAŞLIKLARI ARASINA EKLENİR. <SCRİPT ... TYPE=...> İLE BAŞLAYAN ALANDAN </script> BİTEN ALAN KOPYALANARAK BU ALANA YERLEŞTİRİLMELİDİR. -->
				
				<style type="text/css"> body { background-color: #FFFFFF; font-family: 'Tahoma', "Times New Roman", Times, serif; font-size: 11px; color: #666666; } h1, h2 { padding-bottom: 3px; padding-top: 3px; margin-bottom: 5px; text-transform: uppercase; font-family: Arial, Helvetica, sans-serif; } h1 { font-size: 1.4em; text-transform:none; } h2 { font-size: 1em; color: brown; } h3 { font-size: 1em; color: #000000; text-align: justify; margin: 0; padding: 0; } h4 { font-size: 1.1em; font-style: bold; font-family: Arial, Helvetica, sans-serif; color: #000000; margin: 0; padding: 0; } hr { height:2px; color: #000000; background-color: #000000; border-bottom: 1px solid #000000; } p, ul, ol { margin-top: 1.5em; } ul, ol { margin-left: 3em; } blockquote { margin-left: 3em; margin-right: 3em; font-style: italic; } a { text-decoration: none; color: #70A300; } a:hover { border: none; color: #70A300; } #despatchTable { border-collapse:collapse; font-size:11px; float:right; border-color:gray; } #ettnTable { border-collapse:collapse; font-size:11px; border-color:gray; } #customerPartyTable { border-width: 0px; border-spacing:; border-style: inset; border-color: gray; border-collapse: collapse; background-color: } #customerIDTable { border-width: 2px; border-spacing:; border-style: inset; border-color: gray; border-collapse: collapse; background-color: } #customerIDTableTd { border-width: 2px; border-spacing:; border-style: inset; border-color: gray; border-collapse: collapse; background-color: } #lineTable { border-width:2px; border-spacing:; border-style: inset; border-color: black; border-collapse: collapse; background-color:; } td.lineTableTd { border-width: 1px; padding: 1px; border-style: inset; border-color: black; background-color: white; } tr.lineTableTr { border-width: 1px; padding: 0px; border-style: inset; border-color: black; background-color: white; -moz-border-radius:; } #lineTableDummyTd { border-width: 1px; border-color:white; padding: 1px; border-style: inset; border-color: black; background-color: white; } td.lineTableBudgetTd { border-width: 2px; border-spacing:0px; padding: 1px; border-style: inset; border-color: black; background-color: white; -moz-border-radius:; } #notesTable { border-width: 2px; border-spacing:; border-style: inset; border-color: black; border-collapse: collapse; background-color: } #notesTableTd { border-width: 0px; border-spacing:; border-style: inset; border-color: black; border-collapse: collapse; background-color: ; vertical-align: top; } table { border-spacing:0px; } #budgetContainerTable { border-width: 0px; border-spacing: 0px; border-style: inset; border-color: black; border-collapse: collapse; background-color:; } td { border-color:gray; } </style>
				<title>e-İrsaliye</title>
			</head>
			<body style="margin-left=0.6in; margin-right=0.6in; margin-top=0.79in; margin-bottom=0.79in">
				<xsl:for-each select="$XML">
					<table style="border-color:blue; " border="0" cellspacing="0px" width="800" cellpadding="0px">
						<tbody>
							<tr valign="top">
								<td width="40%">
									<br/>
									<hr/>
									<table align="center" border="0" width="100%">
										<tbody>
											<tr align="left">
												<xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
													<td align="left">
														<xsl:if test="cac:PartyName">
															<xsl:value-of select="cac:PartyName/cbc:Name"/>
															<br/>
														</xsl:if>
													</td>
												</xsl:for-each>
											</tr>
											<tr align="left">
												<xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
													<td align="left">
														<xsl:for-each select="cac:PostalAddress">
															<xsl:for-each select="cbc:StreetName">
																<xsl:apply-templates/>
																<xsl:text>&#160;</xsl:text>
															</xsl:for-each>
															<xsl:for-each select="cbc:BuildingName">
																<xsl:apply-templates/>
															</xsl:for-each>
															<xsl:if test="cbc:BuildingNumber">
																<xsl:text> No:</xsl:text>
																<xsl:for-each select="cbc:BuildingNumber">
																	<xsl:apply-templates/>
																</xsl:for-each>
																<xsl:text>&#160;</xsl:text>
															</xsl:if>
															<br/>
															<xsl:for-each select="cbc:PostalZone">
																<xsl:apply-templates/>
																<xsl:text>&#160;</xsl:text>
															</xsl:for-each>
															<xsl:for-each select="cbc:CitySubdivisionName">
																<xsl:apply-templates/>
															</xsl:for-each>
															<xsl:text>/ </xsl:text>
															<xsl:for-each select="cbc:CityName">
																<xsl:apply-templates/>
																<xsl:text>&#160;</xsl:text>
															</xsl:for-each>
														</xsl:for-each>
													</td>
												</xsl:for-each>
											</tr>
											<xsl:if test="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
												<tr align="left">
													<xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
														<td align="left">
															<xsl:for-each select="cac:Contact">
																<xsl:if test="cbc:Telephone">
																	<xsl:text>Tel: </xsl:text>
																	<xsl:for-each select="cbc:Telephone">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:if>
																<xsl:if test="cbc:Telefax">
																	<xsl:text> Fax: </xsl:text>
																	<xsl:for-each select="cbc:Telefax">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:if>
																<xsl:text>&#160;</xsl:text>
															</xsl:for-each>
														</td>
													</xsl:for-each>
												</tr>
											</xsl:if>
											<xsl:for-each select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cbc:WebsiteURI">
												<tr align="left">
													<td>
														<xsl:text>Web Sitesi: </xsl:text>
														<xsl:value-of select="."/>
													</td>
												</tr>
											</xsl:for-each>
											<xsl:for-each select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
												<tr align="left">
													<td>
														<xsl:text>E-Posta: </xsl:text>
														<xsl:value-of select="."/>
													</td>
												</tr>
											</xsl:for-each>
											<tr align="left">
												<xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
													<td align="left">
														<xsl:text>Vergi Dairesi: </xsl:text>
														<xsl:for-each select="cac:PartyTaxScheme">
															<xsl:for-each select="cac:TaxScheme">
																<xsl:for-each select="cbc:Name">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
															<xsl:text>&#160; </xsl:text>
														</xsl:for-each>
													</td>
												</xsl:for-each>
											</tr>
											<xsl:for-each select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:PartyIdentification">
												<tr align="left">
													<td>
														<xsl:value-of select="cbc:ID/@schemeID"/>
														<xsl:text>: </xsl:text>
														<xsl:value-of select="cbc:ID"/>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									<td align="left">
											<b>Depo Adres:</b>
									
											<xsl:text> ASO 2. Ve 3. Organize Sanayi Bölgesi 2014. Cadde 100517 Ada-3. Parsel No: 15 Temelli Sincan/Ankara</xsl:text>
										</td>
									</table>
									<hr/>
								</td>
								<td width="20%" align="center" valign="middle">
									<br/>
									<br/>
									<img style="width:91px;" align="middle" alt="E-Fatura Logo" src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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"/>
									<h1 align="center">
										<span style="font-weight:bold; ">
											<xsl:text>e-İRSALİYE</xsl:text>
										</span>
									</h1>
								</td>
								<!-- logo -->
								<td width="40%" align="center" valign="middle">
									<img alt='logofliqa.jpg' width='245px' src='data:image/jpg;base64,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' />
								</td>
							</tr>
							              <tr style="height:118px; " valign="top">
                <td width="40%" align="right" valign="bottom">
                  <table id="customerPartyTable" align="left" border="0">
                    <tbody>
                      <tr style="height:71px; ">
                        <td>
                          <hr/>
                          <table align="center" border="0">
                            <tbody>
                              <tr>
                                <xsl:for-each select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party">
                                  <td style="width:469px; " align="left">
                                    <span style="font-weight:bold; ">
                                      <xsl:text>SAYIN</xsl:text>
                                    </span>
                                  </td>
                                </xsl:for-each>
                              </tr>
                              <tr>
                                <xsl:choose>
                                  <xsl:when test="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
                                    <xsl:for-each select="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party">
                                      <xsl:call-template name="Party_Title">
                                        <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                      </xsl:call-template>
                                    </xsl:for-each>
                                  </xsl:when>
                                  <xsl:otherwise>
                                    <xsl:for-each select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party">
                                      <xsl:call-template name="Party_Title">
                                        <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                      </xsl:call-template>
                                    </xsl:for-each>
                                  </xsl:otherwise>
                                </xsl:choose>
                              </tr>
                              <xsl:choose>
                                <xsl:when test="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
                                  <xsl:for-each select="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party">
                                    <tr>
                                      <xsl:call-template name="Party_Adress">
                                        <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                      </xsl:call-template>
                                    </tr>
                                    <xsl:call-template name="Party_Other">
                                      <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                    </xsl:call-template>
                                  </xsl:for-each>
                                </xsl:when>
                                <xsl:otherwise>
                                  <xsl:for-each select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party">
                                    <tr>
                                      <xsl:call-template name="Party_Adress">
                                        <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                      </xsl:call-template>
                                    </tr>
                                    <xsl:call-template name="Party_Other">
                                      <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                    </xsl:call-template>
                                  </xsl:for-each>
                                </xsl:otherwise>
                              </xsl:choose>
                            </tbody>
                          </table>
                          <hr/>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <br/>
                </td>
					<!-- KAREKOD OKUTULDUĞUNDA GÖSTERİLECEK BİLGİLER İÇİN EKLENECEK ALAN BAŞLANGIÇ-->
								<!-- BAŞLANGIÇ VE BİTİŞ ARALIĞINDAKİ ALAN KOPYALANIR. -->
								<td width='40%' valign='top' align='center'>
									<div id="qrcode"/>
									<div id="qrvalue" style="vissibility: hidden; height: 40px;width: 40px; display:none">
										{
										"vkntckn":"<xsl:value-of select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'TCKN' or @schemeID = 'VKN']"/>",
										"avkntckn":"<xsl:value-of select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'TCKN' or @schemeID = 'VKN']"/>",
										"senaryo":"<xsl:value-of select="n1:DespatchAdvice/cbc:ProfileID"/>",
										"tip":"<xsl:value-of select="n1:DespatchAdvice/cbc:DespatchAdviceTypeCode"/>",
										"tarih":"<xsl:value-of select="n1:DespatchAdvice/cbc:IssueDate"/>",
										"no":"<xsl:value-of select="n1:DespatchAdvice/cbc:ID"/>",
										"ettn":"<xsl:value-of select="n1:DespatchAdvice/cbc:UUID"/>",
										"sevktarihi":"<xsl:value-of select="n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchDate"/>",
										"sevkzamani":"<xsl:value-of select="n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchTime"/>",
										"tasiyicivkn":"<xsl:value-of select="n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:CarrierParty/cac:PartyIdentification/cbc:ID"/>",
										"plaka":"<xsl:value-of select="n1:DespatchAdvice/cac:Shipment/cac:ShipmentStage/cac:TransportMeans/cac:RoadTransport/cbc:LicensePlateID"/>"
										}
									</div>
									<script  type="text/javascript">
										var qrcode = new QRCode(document.getElementById("qrcode"), {
										width : 145,
										height : 145,
										correctLevel: QRCode.CorrectLevel.L,
										});
										var minifiedValues = JSON.stringify(JSON.parse(document.getElementById("qrvalue").innerHTML));
										qrcode.makeCode(minifiedValues)
									</script>
								</td>
								<!-- KAREKOD OKUTULDUĞUNDA GÖSTERİLECEK BİLGİLER İÇİN EKLENECEK ALAN BİTİŞ.. -->
                <td width="60%" align="center" valign="bottom" colspan="2">
                  <table border="1" id="despatchTable" align="right">
                    <tbody>
                      <tr>
                        <td style="width:105px;" align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Özelleştirme No:</xsl:text>
                          </span>
                        </td>
                        <td style="width:110px;" align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cbc:CustomizationID">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Senaryo:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cbc:ProfileID">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>İrsaliye Tipi:</xsl:text>
                          </span>
                        </td>
					<td align="left">
					  <xsl:for-each select="n1:DespatchAdvice/cbc:DespatchAdviceTypeCode">
						<xsl:apply-templates/>
					  </xsl:for-each>
					</td>
				  </tr>
				  <tr style="height:13px; ">
					<td align="left">
					  <span style="font-weight:bold; ">
						<xsl:text>İrsaliye No:</xsl:text>
					  </span>
					</td>
					<td align="left">
					  <xsl:for-each select="n1:DespatchAdvice/cbc:ID">
						<xsl:apply-templates/>
					  </xsl:for-each>
					</td>
				  </tr>
				  <tr style="height:13px; ">
					<td align="left">
					  <span style="font-weight:bold; ">
						<xsl:text>İrsaliye Tarihi:</xsl:text>
					  </span>
					</td>
					<td align="left">
					  <xsl:for-each select="n1:DespatchAdvice/cbc:IssueDate">
						<xsl:apply-templates select="."/>
					  </xsl:for-each>
					</td>
				  </tr>
				  <tr style="height:13px; ">
					<td align="left">
					  <span style="font-weight:bold; ">
						<xsl:text>İrsaliye Zamanı:</xsl:text>
					  </span>
					</td>
					<td align="left">
					  <xsl:for-each select="n1:DespatchAdvice/cbc:IssueTime">
						<xsl:apply-templates select="."/>
					  </xsl:for-each>
					</td>
				  </tr>
				  <tr style="height:13px; ">
					<td align="left">
					  <span style="font-weight:bold; ">
						<xsl:text>Sevk Tarihi:</xsl:text>
					  </span>
					</td>
					<td align="left">
					  <xsl:for-each select="n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchDate">
						<xsl:apply-templates select="."/>
					  </xsl:for-each>
					</td>
				  </tr>
				  <tr style="height:13px; ">
					<td align="left">
					  <span style="font-weight:bold; ">
						<xsl:text>Sevk Zamanı:</xsl:text>
					  </span>
					</td>
					<td align="left">
					  <xsl:for-each select="n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchTime">
						<xsl:apply-templates select="."/>
					  </xsl:for-each>
					</td>
				  </tr>

				  <xsl:if test="n1:DespatchAdvice/cac:OrderReference">
					<tr style="height:13px">
					  <td align="left">
						<span style="font-weight:bold; ">
						  <xsl:text>Sipariş No:</xsl:text>
						</span>
					  </td>
					  <td align="left">
						<xsl:for-each select="n1:DespatchAdvice/cac:OrderReference/cbc:ID">
						  <xsl:apply-templates/>
						</xsl:for-each>
					  </td>
					</tr>
				  </xsl:if>
				  <xsl:if	test="n1:DespatchAdvice/cac:OrderReference/cbc:IssueDate">
					<tr style="height:13px">
					  <td align="left">
						<span style="font-weight:bold; ">
						  <xsl:text>Sipariş Tarihi:</xsl:text>
						</span>
					  </td>
					  <td align="left">
						<xsl:for-each select="n1:DespatchAdvice/cac:OrderReference/cbc:IssueDate">
						  <xsl:apply-templates select="."/>
						</xsl:for-each>
					  </td>
					</tr>
				  </xsl:if>
				</tbody>
			  </table>
			</td>
		  </tr>

							<tr align="left">
								<xsl:for-each select="//n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DeliveryAddress">
									<td align="left">
										<b>Sevkiyat Adresi</b>
										<br/>
										<xsl:for-each select="cbc:StreetName">
											<xsl:apply-templates/>
											<xsl:text>&#160;</xsl:text>
										</xsl:for-each>
										<br/>
										<xsl:for-each select="cbc:CitySubdivisionName">
											<xsl:apply-templates/>
											<xsl:text>&#160;</xsl:text>
										</xsl:for-each>
										<br/>
										<xsl:for-each select="cbc:CityName">
											<xsl:apply-templates/>
											<xsl:text>&#160;</xsl:text>
										</xsl:for-each>
										<br/>
										<xsl:for-each select="cbc:PostalZone">
											<xsl:apply-templates/>
										</xsl:for-each>
									</td>
								</xsl:for-each>
							</tr>
							<tr align="left">
								<td align="left" valign="top" id="ettnTable">
									<span style="font-weight:bold; ">
										<br/>
										<xsl:text>ETTN:&#160;</xsl:text>
									</span>
									<xsl:for-each select="n1:DespatchAdvice/cbc:UUID">
										<xsl:apply-templates/>
									</xsl:for-each>
								</td>
							</tr>
						</tbody>
					</table>
					<div id="lineTableAligner">
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
					<table border="1" id="lineTable" width="800"  style="font-weight:bold;">
						<tbody>
							<tr class="lineTableTr">
								<td class="lineTableTd" style="width:5%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Sıra No</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:5%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Mal</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:40%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Malzeme Açıklaması</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:10%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Miktar</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:10%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Birim Fiyat</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:20%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Sonra Gönderilecek Miktar</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:20%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Tutar</xsl:text>
									</span>
								</td>
							</tr>
							<xsl:if test="count(//n1:DespatchAdvice/cac:DespatchLine) &gt;= 20" style="font-weight:bold; ">
								<xsl:for-each select="//n1:DespatchAdvice/cac:DespatchLine">
									<xsl:apply-templates select="."/>
								</xsl:for-each>
							</xsl:if>
							<xsl:if test="count(//n1:DespatchAdvice/cac:DespatchLine) &lt; 20">
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[1]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[1]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[2]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[2]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[3]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[3]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[4]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[4]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[5]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[5]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[6]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[6]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[7]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[7]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[8]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[8]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[9]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[9]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[10]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[10]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[11]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[11]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[12]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[12]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[13]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[13]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[14]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[14]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[15]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[15]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[16]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[16]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[17]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[17]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[18]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[18]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[19]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[19]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[20]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[20]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[21]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[21]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:DespatchAdvice/cac:DespatchLine[22]">
										<xsl:apply-templates select="//n1:DespatchAdvice/cac:DespatchLine[22]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:DespatchAdvice"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:if>
						</tbody>
					</table>
				</xsl:for-each>
				<table id="budgetContainerTable" width="800px">
					<tr align="right">
						<td/>
						<td class="lineTableBudgetTd" align="right" width="156px">
							<span style="font-weight:bold; ">
								<xsl:text>Toplam Tutar</xsl:text>
							</span>
						</td>
						<td class="lineTableBudgetTd" style="width:156px; " align="right">
							<xsl:text>&#160;</xsl:text>
							<!-- <xsl:for-each select="n1:DespatchAdvice/cac:Shipment/cac:GoodsItem/cbc:ValueAmount"><xsl:call-template name="Curr_Type"/></xsl:for-each> -->
						</td>
					</tr>
				</table>
				<br/>
				<xsl:if test="//n1:DespatchAdvice/cac:AdditionalDocumentReference">
					<table id="lineTable" width="800">
						<thead>
							<tr>
								<td align="left">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;İlgili Dokümanlar</span>
								</td>
								<td align="left">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;</span>
								</td>
								<td align="left">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;</span>
								</td>
								<td align="left">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;</span>
								</td>
							</tr>
						</thead>
						<tbody>
							<tr align="left" class="lineTableTr">
								<td class="lineTableTd">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Doküman No</span>
								</td>
								<td class="lineTableTd">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Tarih</span>
								</td>
								<td class="lineTableTd">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Doküman Tipi</span>
								</td>
								<td class="lineTableTd">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Açıklama</span>
								</td>
							</tr>
							<xsl:for-each select="//n1:DespatchAdvice/cac:AdditionalDocumentReference">
								<tr align="left" class="lineTableTr">
									<td class="lineTableTd"> &#160;&#160;&#160;&#160;&#160;   
										<xsl:value-of select="./cbc:ID"/>
									</td>
									<td class="lineTableTd"> &#160;&#160;&#160;&#160;&#160;   
										<xsl:for-each select="./cbc:IssueDate">
											<xsl:apply-templates select="."/>
										</xsl:for-each>
									</td>
									<td class="lineTableTd"> &#160;&#160;&#160;&#160;&#160;   
										<xsl:value-of select="./cbc:DocumentType"/>
									</td>
									<td class="lineTableTd"> &#160;&#160;&#160;&#160;&#160;   
										<xsl:value-of select="./cbc:DocumentDescription"/>
									</td>
								</tr>
							</xsl:for-each>
						</tbody>
					</table>
				</xsl:if>
				<br/>
				<table id="notesTable" width="800" align="left">
					<thead>
						<tr>
							<td align="left">
								<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Açıklamalar</span>
							</td>
							<td align="left">
								<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Taşıyıcı Bilgileri</span>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr align="left">
							<td id="notesTableTd" height="100">
								<xsl:for-each select="//n1:DespatchAdvice/cbc:Note">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Not: </b>
									<xsl:value-of select="."/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:SellerSupplierParty">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Satıcı VKN: </b>
									<xsl:value-of select="cac:Party/cac:PartyIdentification/cbc:ID"/>
									<br/>
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Satıcı Ünvan: </b>
									<xsl:value-of select="cac:Party/cac:PartyName/cbc:Name"/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:BuyerCustomerParty">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Alıcı VKN: </b>
									<xsl:value-of select="cac:Party/cac:PartyIdentification/cbc:ID"/>
									<br/>
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Alıcı Ünvan: </b>
									<xsl:value-of select="cac:Party/cac:PartyName/cbc:Name"/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:OriginatorCustomerParty">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;İşlemleri Başlatan Alıcı VKN: </b>
									<xsl:value-of select="cac:Party/cac:PartyIdentification/cbc:ID"/>
									<br/>
									<b>&#160;&#160;&#160;&#160;&#160;&#160;İşlemleri Başlatan Alıcı Ünvan: </b>
									<xsl:value-of select="cac:Party/cac:PartyName/cbc:Name"/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:DespatchSupplierParty/cac:DespatchContact/cbc:Name">
									<b>&#160;&#160;&#160;&#160;&#160; Teslim Eden: </b>
									<xsl:apply-templates/>
									<xsl:text>&#160;</xsl:text>
									<br/>
								</xsl:for-each>
							</td>
							<td id="notesTableTd" height="100">
								<xsl:for-each select="//cac:CarrierParty">
									<b>&#160;&#160;&#160;&#160;&#160;&#160; Taşıyıcı Firma: </b> VKN:   
									<xsl:value-of select="./cac:PartyIdentification/cbc:ID"/>,   
									<xsl:value-of select="./cac:PartyName/cbc:Name"/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:ShipmentStage/cac:TransportMeans/cac:RoadTransport/cbc:LicensePlateID">
									<b>&#160;&#160;&#160;&#160;&#160;&#160; Araç plaka numarası: </b>
									<xsl:value-of select="."/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:TransportHandlingUnit/cac:TransportEquipment/cbc:ID[@schemeID = 'DORSEPLAKA']">
									<b>&#160;&#160;&#160;&#160;&#160;&#160; Dorse plaka numarası: </b>
									<xsl:value-of select="."/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:ShipmentStage/cac:DriverPerson">
									<xsl:if test="cbc:FirstName">
										<b>&#160;&#160;&#160;&#160;&#160;&#160; Şoför: </b>
										<xsl:for-each select="cbc:Title">
											<xsl:apply-templates/>
											<xsl:text>&#160;</xsl:text>
										</xsl:for-each>
										<xsl:for-each select="cbc:FirstName">
											<xsl:apply-templates/>
											<xsl:text>&#160;</xsl:text>
										</xsl:for-each>
										<xsl:for-each select="cbc:MiddleName">
											<xsl:apply-templates/>
											<xsl:text>&#160;</xsl:text>
										</xsl:for-each>
										<xsl:for-each select="cbc:FamilyName">
											<xsl:apply-templates/>
											<xsl:text>&#160;</xsl:text>
										</xsl:for-each>, TCKN:   
										<xsl:for-each select="cbc:NationalityID">
											<xsl:apply-templates/>
										</xsl:for-each>
										<br/>
									</xsl:if>
								</xsl:for-each>
							</td>
						</tr>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="//n1:DespatchAdvice/cac:DespatchLine">
		<tr class="lineTableTr">
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="./cbc:ID"/>
			</td>
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="./cac:Item/cbc:Name"/>
			</td>
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="./cac:Item/cbc:Description"/>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="format-number(./cbc:DeliveredQuantity, '###.###,####', 'european')"/>
				<xsl:if test="./cbc:DeliveredQuantity/@unitCode">
					<xsl:for-each select="./cbc:DeliveredQuantity">
						<xsl:text></xsl:text>
						<xsl:choose>
							<xsl:when test="@unitCode = '26'">
								<xsl:text>ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'BX'">
								<xsl:text>Kutu</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'LTR'">
								<xsl:text>lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'C62'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'NIU'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KGM'">
								<xsl:text>kg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KJO'">
								<xsl:text>kJ</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'GRM'">
								<xsl:text>g</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MGM'">
								<xsl:text>mg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'NT'">
								<xsl:text>Net Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'GT'">
								<xsl:text>Gross Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MTR'">
								<xsl:text>m</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MMT'">
								<xsl:text>mm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KTM'">
								<xsl:text>km</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MLT'">
								<xsl:text>ml</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MMQ'">
								<xsl:text>mm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CLT'">
								<xsl:text>cl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CMK'">
								<xsl:text>cm2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CMQ'">
								<xsl:text>cm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CMT'">
								<xsl:text>cm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MTK'">
								<xsl:text>m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MTQ'">
								<xsl:text>m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'DAY'">
								<xsl:text> Gün</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MON'">
								<xsl:text> Ay</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'PA'">
								<xsl:text> Paket</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KWH'">
								<xsl:text> KWH</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'ANN'">
								<xsl:text> Yıl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'HUR'">
								<xsl:text> Saat</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D61'">
								<xsl:text> Dakika</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D62'">
								<xsl:text> Saniye</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CCT'">
								<xsl:text> Ton baş.taşıma kap.</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D30'">
								<xsl:text> Brüt kalori</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D40'">
								<xsl:text> 1000 lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'LPA'">
								<xsl:text> saf alkol lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'B32'">
								<xsl:text> kg.m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'NCL'">
								<xsl:text> hücre adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'PR'">
								<xsl:text> Çift</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'R9'">
								<xsl:text> 1000 m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'SET'">
								<xsl:text> Set</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'T3'">
								<xsl:text> 1000 adet</xsl:text>
							</xsl:when>
						</xsl:choose>
					</xsl:for-each>
				</xsl:if>
			</td>
			<!-- Birim Fiyat -->
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
				<!-- <xsl:value-of select="format-number(./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount, '###.##0,########', 'european')"/><xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID"><xsl:text></xsl:text><xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;"><xsl:text>TL</xsl:text></xsl:if><xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;"><xsl:value-of select="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID"/></xsl:if></xsl:if> -->
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="format-number(./cbc:OutstandingQuantity, '###.###,####', 'european')"/>
				<xsl:if test="./cbc:OutstandingQuantity/@unitCode">
					<xsl:for-each select="./cbc:OutstandingQuantity">
						<xsl:text></xsl:text>
						<xsl:choose>
							<xsl:when test="@unitCode = '26'">
								<xsl:text>ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'BX'">
								<xsl:text>Kutu</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'LTR'">
								<xsl:text>lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'C62'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'NIU'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KGM'">
								<xsl:text>kg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KJO'">
								<xsl:text>kJ</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'GRM'">
								<xsl:text>g</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MGM'">
								<xsl:text>mg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'NT'">
								<xsl:text>Net Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'GT'">
								<xsl:text>Gross Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MTR'">
								<xsl:text>m</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MMT'">
								<xsl:text>mm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KTM'">
								<xsl:text>km</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MLT'">
								<xsl:text>ml</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MMQ'">
								<xsl:text>mm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CLT'">
								<xsl:text>cl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CMK'">
								<xsl:text>cm2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CMQ'">
								<xsl:text>cm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CMT'">
								<xsl:text>cm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MTK'">
								<xsl:text>m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MTQ'">
								<xsl:text>m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'DAY'">
								<xsl:text> Gün</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MON'">
								<xsl:text> Ay</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'PA'">
								<xsl:text> Paket</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KWH'">
								<xsl:text> KWH</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'ANN'">
								<xsl:text> Yıl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'HUR'">
								<xsl:text> Saat</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D61'">
								<xsl:text> Dakika</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D62'">
								<xsl:text> Saniye</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CCT'">
								<xsl:text> Ton baş.taşıma kap.</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D30'">
								<xsl:text> Brüt kalori</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D40'">
								<xsl:text> 1000 lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'LPA'">
								<xsl:text> saf alkol lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'B32'">
								<xsl:text> kg.m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'NCL'">
								<xsl:text> hücre adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'PR'">
								<xsl:text> Çift</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'R9'">
								<xsl:text> 1000 m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'SET'">
								<xsl:text> Set</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'T3'">
								<xsl:text> 1000 adet</xsl:text>
							</xsl:when>
						</xsl:choose>
					</xsl:for-each>
				</xsl:if>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
				<!-- <xsl:value-of select="format-number(./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount, '###.##0,########', 'european')"/><xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID"><xsl:text></xsl:text><xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID = &quot;TRL&quot; or ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID = &quot;TRY&quot;"><xsl:text>TL</xsl:text></xsl:if><xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID != &quot;TRL&quot; and ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID != &quot;TRY&quot;"><xsl:value-of select="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID"/></xsl:if></xsl:if> -->
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="//cbc:IssueDate">
		<xsl:value-of select="substring(.,9,2)"/>-   
		<xsl:value-of select="substring(.,6,2)"/>-   
		<xsl:value-of select="substring(.,1,4)"/>
	</xsl:template>
	<xsl:template match="//cbc:ActualDespatchDate">
		<xsl:value-of select="substring(.,9,2)"/>-   
		<xsl:value-of select="substring(.,6,2)"/>-   
		<xsl:value-of select="substring(.,1,4)"/>
	</xsl:template>
	<xsl:template match="//n1:DespatchAdvice">
		<tr class="lineTableTr">
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
		</tr>
	</xsl:template>
	<xsl:template name="Party_Title" >
		<xsl:param name="PartyType" />
		<td style="width:469px; " align="left">
			<xsl:if test="cac:PartyName">
				<xsl:value-of select="cac:PartyName/cbc:Name"/>
				<br/>
			</xsl:if>
			<xsl:for-each select="cac:Person">
				<xsl:for-each select="cbc:Title">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:FirstName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:MiddleName">
					<xsl:apply-templates/>
					<xsl:text>&#160; </xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:FamilyName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:NameSuffix">
					<xsl:apply-templates/>
				</xsl:for-each>
				<xsl:if test="$PartyType='TAXFREE'">
					<br/>
					<xsl:text>Pasaport No: </xsl:text>
					<xsl:value-of select="cac:IdentityDocumentReference/cbc:ID"/>
					<br/>
					<xsl:text>Ülkesi: </xsl:text>
					<xsl:value-of select="cbc:NationalityID"/>
				</xsl:if>
			</xsl:for-each>
		</td>
	</xsl:template>
	<xsl:template name="Party_Adress" >
		<xsl:param name="PartyType" />
		<td style="width:469px; " align="left">
			<xsl:for-each select="cac:PostalAddress">
				<xsl:for-each select="cbc:StreetName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:BuildingName">
					<xsl:apply-templates/>
				</xsl:for-each>
				<xsl:for-each select="cbc:BuildingNumber">
					<xsl:text> No:</xsl:text>
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<br/>
				<xsl:for-each select="cbc:Room">
					<xsl:text>Kapı No:</xsl:text>
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<br/>
				<xsl:for-each select="cbc:PostalZone">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:CitySubdivisionName">
					<xsl:apply-templates/>
					<xsl:text>/ </xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:CityName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:if test="$PartyType='TAXFREE'">
					<br/>
					<xsl:value-of select="cac:Country/cbc:Name"/>
					<br/>
				</xsl:if>
			</xsl:for-each>
		</td>
	</xsl:template>
	<xsl:template name='Party_Other'>
		<xsl:param name="PartyType" />
		<xsl:for-each select="cbc:WebsiteURI">
			<tr align="left">
				<td>
					<xsl:text>Web Sitesi: </xsl:text>
					<xsl:value-of select="."/>
				</td>
			</tr>
		</xsl:for-each>
		<xsl:for-each select="cac:Contact/cbc:ElectronicMail">
			<tr align="left">
				<td>
					<xsl:text>E-Posta: </xsl:text>
					<xsl:value-of select="."/>
				</td>
			</tr>
		</xsl:for-each>
		<xsl:for-each select="cac:Contact">
			<xsl:if test="cbc:Telephone or cbc:Telefax">
				<tr align="left">
					<td style="width:469px; " align="left">
						<xsl:for-each select="cbc:Telephone">
							<xsl:text>Tel: </xsl:text>
							<xsl:apply-templates/>
						</xsl:for-each>
						<xsl:for-each select="cbc:Telefax">
							<xsl:text> Fax: </xsl:text>
							<xsl:apply-templates/>
						</xsl:for-each>
						<xsl:text>&#160;</xsl:text>
					</td>
				</tr>
			</xsl:if>
		</xsl:for-each>
		<xsl:if test="$PartyType!='TAXFREE'">
			<xsl:for-each select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
				<tr align="left">
					<td>
						<xsl:text>Vergi Dairesi: </xsl:text>
						<xsl:apply-templates/>
					</td>
				</tr>
			</xsl:for-each>
			<xsl:for-each select="cac:PartyIdentification">
				<tr align="left">
					<td>
						<xsl:value-of select="cbc:ID/@schemeID"/>
						<xsl:text>: </xsl:text>
						<xsl:value-of select="cbc:ID"/>
					</td>
				</tr>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="Curr_Type">
		<xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
		<xsl:if test="@currencyID">
			<xsl:text></xsl:text>
			<xsl:choose>
				<xsl:when test="@currencyID = 'TRL' or @currencyID = 'TRY'">
					<xsl:text>TL</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="@currencyID"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>