SATIŞ YÖNETİM TABLOLARI 

Kategoriler ---> LG_CATEGLISTS
Endüstri/Sektör	---> LG_INDUSTRY
Müşteri	---> LG_CSTVND
Müşteri-Endüstri Bağlantı ---> LG_CVINDASG
İlgili Kişiler ---> LG_CONTACTS
Satış Fırsatları ---> LG_SLSOPPOR
Satış Faaliyetleri ---> LG_SLSACTIV
Teklif	---> LG_003_PURCHOFFER
Satış Elemanı-İlgili Kişi Bağlantı ---> LG_CNTSLSMASG
Satış Faaliyetine Bağlı Kişiler	---> LG_ACTPEPL
Satış Dosyaları	---> LG_SLSFILES
Satış Temsilcisi-Müşteri Bağlantı (CRM Seti) ---> LG_SLSCLREL
Satış Faaliyetleri(m) Penceresi Genel ve Kişisel İşlemler ---> LG_SATI
Satış Faaliyetleri(m) Penceresi Genel ve Kişisel İşlemler Filtre Tanımları ---> LG_SATIFILTER

YARDIMCI BİLGİ TABLOLARI

Taşıma tipleri	---> L_FRGTYPES
Ticari işlem grubu ---> L_TRADGRP
Taşıyıcı firmalar ---> L_SHPAGENT
Taşıma şekli ---> L_SHPTYPES

ORGANİZASYON TABLOLARI

Organizasyon Şeması ---> L_ORGDEFS
Org.Şeması Pozisyonları	---> L_POSDEFS
Pozisyon açıklamalarının(uzun text) ---> L_ORGDOC

ADRES BİLGİLERİ

Ülke bilgileri	---> L_COUNTRY
İl bilgileri	---> L_CITY
Posta kodları	---> L_POSTCODE
İlçe bilgileri	---> L_TOWN
Semt bilgileri	---> L_DISTRICT

BANKA BİLGİLERİ  

Banka kodu ---> L_BANKCODE 
Şube kodu ---> L_BNBRANCH

VERGİ DAİRELERİ  ---> L_TAXOFFICE

GTIP KODLARI  ---> L_GTIP_CODE / L_GTIP_DEF

TAŞIYICI FİRMALAR  ---> L_SHPAGENT

TESLİM ŞEKLİ ---> L_SHPTYPES

TAŞIMA TİPLERİ  ---> L_FRGTYPES

ENDEKS TÜRLERİ  ---> L_PRICEINDEXTYP

FİYAT ENDEKSLERİ ---> L_PRICEINDEX

KULLANICI İZLEME TABLOSU ---> LG_000_SYSLOG

DOKÜMAN YÖNETİM TABLOLARI ---> L_LDOCFOLD (Doküman katalog bilgisi) / L_LDOCITEM (Doküman tanımları)

GTIP TABLOLARI ---> Gtip kodları L_GTIP_CODE / Gtip tanımları L_GTIP_DEF

KAYIT NUMARALAMA ŞABLONLARI ---> L_LDOCNUM

FİLTRE (Browser / Rapor) ---> L_RPFILTSFFF
(USERDEFAULT kolonu "Öndeğer Olarak Kaydet" dediğinde 1 değerini alır. "Tüm Kullanıcılar için Geçerli" işaretini atarsan tabloda bu filtre için 2. bir satır açar ve USERDEFAULTS ve USERNR kolonlarına 1 değerini atar. USERNR ye neden 1 atadı çünkü kullanıcı numarası 1 idi.) Aşağıdaki gibi 2 satır oluşturur...
USERDEFAULT   USERNR
    1           0
    1           1
Tüm kullanıcılar için geçerli seçeneği ilgili filtrenin tüm kullanıcılar tarafından görülebilmesine olanak sağlar. 
Öndeğer olarak kaydet işlemi kullanıcı bazında yapılabilen bir işlemdir. Tüm kullanıcılar için öndeğer yapılması gibi bir işlem, kullanıcıların filtreyi yükleyip öndeğer yapması ile mümkün olabilir.)

Rapor tasarımları ==> L_RPLAYS_FFF



****************************************************************************************************************************

L_SHPTYPES ---> Teslim şekilleri
L_SHPAGENT ---> Taşıyıcı firmalar
L_PAYTYPES ---> Ödeme şekli
L_REGIMETYP ---> Rejim şekilleri
L_PCKCODES ---> Ambalaj kodları
L_CTYCODES ---> Şehirlerin telefon kodları
L_PRICEINDEXTYP ---> Fiyat endeks türleri
L_PRICEINDEX ---> Fiyat endeksleri
L_CONSCODES ---> Konsolidasyon kodları
L_TRADGRP ---> Ticari işlem grubu
L_CAPIVERS ---> Versiyon bilgisi
LG_000_SYSLOG ---> Kullanıcı izleme tablosu
L_CAPISITE ---> Veri merkezleri
L_CAPIDMCONN ---> Döküman yönetim sistemi bağlantıları
L_LDOCNUM ---> Kayıt numaralama şablonları
L_ORGDEFS ---> Organizasyon şeması (Başlık bilgisi)
L_POSDEFS ---> Organizasyon şeması (Kırılım bilgileri)
L_LDOCFOLD ---> Döküman yönetimi klasör path'i
L_LDOCITEM ---> Döküman yönetimi dosya path'i
L_GTIP_CODE ---> GTIP kodları
L_GTIP_DEF ---> GTIP başlıkları

L_CAPIDRIGHT ---> Sys'de kullanıcılara ilgili kayıt türü için atanan yetki kodları.
L_CAPIRIGHT ---> Kullanıcı yetkileri

LG_FFF_ROUTE ---> Satış rotası
LG_FFF_TARGETS ---> Satış hedefleri
L_DEFNFLDSD ---> Tanımlı alanlar
L_MANDFLDS ---> Zorunlu alanlar
LG_CATEGLISTS ---> Listeden seçim alanlarının içeriği
LG_FFF_DD_TRANSAC ---> Dönem bilgisi

LG_FFF_LOGREP ---> Muhasebeleştir sonunda çıkan log ekranının tutulduğu tablo...

L_CAPISIGN ---> Web hesabı ayarları / Personel program kataloğu / 
MS SQL server Hint kullanımı / Veritabanı kullanım mimarisi / Logoconnect kullanıcı girişi

L_CAPIWEBCONN ---> Web hizmeti bağlantıları
L_WEBPAGE ---> Web sayfası tasarımları
L_LOG ---> Sistem bilgileri
L_CAPIROLE ---> Rol tanımları (Sys)
L_CAPITERMINAL ---> Terminaller
L_CAPIUSER ---> Kullanıcılar
L_CAPIROLE ---> Rol(ler)
L_CAPIGROUP ---> Gruplar
L_CAPIFIRM ---> Firmalar
L_CAPIPERIOD ---> Dönemler
L_CAPIFACTORY ---> Fabrikalar
L_CAPIFACTDIV ---> Fabrika Bölümleri
L_CAPIWHOUSE ---> Ambarlar
L_CAPIDIV ---> İşyerleri
L_CAPIDEPT ---> Bölümler
L_CAPIPROG ---> ?
L_CUSTOM --->
L_TAXOFFICE --->
L_CURRENCYLIST ---> Döviz tablosu
L_FREEZONE ---> Serbest bölgeler
L_NET ---> Ağ dosya kontrolü
L_GOUSERS ---> Bağlı kullanıcılar
L_DAILYEXCHANGES ---> Günlük döviz kurları tablosu  - Genel
LG_EXCHANGE_FFF ---> Firma bazında döviz kurları tablosu - Firma
LG_FFF_CHARCODE ---> Malzeme özelliği başlık bilgisi
LG_FFF_CHARVAL ---> Malzeme özelliği satır bilgisi
LG_FFF_CHARASGN ???
LG_FFF_UNITSETF ---> Birim seti başlıkları
LG_FFF_UNITSETL ---> Birim seti satırları
LG_FFF_UNITBARCODE ---> Barkod bilgileri
LG_FFF_ITMUNITA ---> Birim seti çarpanları
(EXTACCESSFLAGS --> sadece 2 seçili ise satış nokt. geçerlidir demek...)
LG_FFF_ITEMS ---> Malzeme kartları
(EXTACCESSFLAGS --> sadece 2 seçili ise satış nokt. geçerlidir demek...)
LG_FFF_ITMCLSAS ---> Malzeme sınıfı alt malzemeleri
LG_FFF_SPECODES ---> Grup kodu / Teslimat kodu / Özel kod / Yetki kodu / Hareket Özel Kodu / Pozisyon kodu ???
LG_FFF_LOCATION ---> Stok yeri bilgisi
LG_FFF_ADDTAX ---> Ek vergiler
LG_FFF_MARK ---> Marka tanımları
LG_FFF_ITEMCATEGORY ---> Ürün kategorileri başlık bilgisi
LG_FFF_ITEMCATEGORYLINE ---> Ürün kategorileri satır bilgisi
LG_FFF_PRCARDS ---> Ek malzeme kart ve satır bilgileri
LG_FFF_SRVCARD ---> Alınan ve Verilen hizmet kartları
LG_FFF_DECARDS ---> Alış indirim ve masraf kartları
LG_FFF_PRCLIST ---> Alış Satış ve Hizmet fiyatları
LG_FFF_PRCLSTDIV ---> Fiyat kartı işyerleri
LG_FFF_ASCOND ---> Alış koşulları (fiş satırları / Fiş geneli)
LG_FFF_CAMPAIGN ---> Alış ve satış kampanyaları
LG_003_CMPGNLINE ---> Kampanya satırları
LG_FFF_DISTVEHICLE ---> Dağıtım araçları
LG_FFF_DISTROUTLINE ---> Dağıtım rotaları
LG_FFF_DD_DISTORD ---> Dağıtım emirleri
LG_FFF_DD_INVOICEINTEL ---> Fatura istihbarat bilgileri
LG_CSTVND ---> Satış faaliyetleri ???
LG_FFF_DISTTEMP ---> Tablolu Malzeme Sınıfı F9 Dağıtım Şablonu
LG_SLSOPPOR --->
LG_001_PURCHOFFER ---> Satış Teklifi
LG_009_PURCHOFFERLN ---> Satış Teklifi Satırları
LG_SLSACTIV --->
LG_CNTSLSMASG --->
LG_INDUSTRY ---> Sektörler
LG_FFF_DD_APPROVE ---> Onay tablosu (modüllerin işyeri bazında onay satırları tutulur)
LG_006_RTNGLINE ---> Rota satırı
LG_006_ROUTING ---> Rota
LG_006_OPERTION ---> Operasyon
LG_003_WORKSTAT ---> iş istasyonları
LG_003_EMPLOYEE ---> Çalışanlar
LG_003_BOMLINE ---> ?
LG_006_EMUHACC ---> Muhasebe hesap kartları
LG_006_ACCCODES ---> Muhasebe bağlantı kodları
LG_FFF_EMCENTER ---> Masraf Merkezi
LG_FFF_DD_ACCDISTDETLN ---> Masraf Merkezi Dağıtım Satırları
LG_001_ACCDISTTEMPLN ---> Masraf Merkezi Dağıtım Şablonu Satırları ?
LG_001_ACCDISTTEMP ---> Masraf Merkezi Dağıtım Şablonu ?
LG_FFF_DD_COSTDISTFC ---> Maliyet Dağıtım Fişleri
LG_FFF_DD_COSTDISTLN ---> Maliyet Dağıtım Fiş Satırları
LG_FFF_DD_COSTDISTPEG ---> Maliyet Atama Satırları
LG_008_SUPPASGN --->
LG_003_SHIPINFO ---> Sevkiyat Adresleri
LG_003_CLINTEL ---> ?
LG_003_HISTORY ---> ?
LG_FFF_DD_ORDPEGGING ---> KARŞI SİPARİŞ oluştur dendiğinde etkilenen tablo.
LG_020_GENMODP ---> Cari Hesap kartındaki form tasarımları tabında bulunan tasarım bağlantısı.
LG_XXX_REFLECT		:Yansıtma Şablonu tablosudur.
LG_XXX_REFLECTTRANS	:Yansıtma Şablonu satırları tablosu.
LG_004_01_CLFLINE ---> Cari hesap hareketleri (fiş satırları)
LG_004_01_CLFICHE ---> Cari hesap fişleri
LG_004_01_PAYTRANS ---> Ödeme Tahsilat hareketleri (Borç takip satırları)
LG_020_01_INSTALCARD ---> Taksit Hareketleri (Ödenip ödenmediğine dair takip PAYTRANS tablosu üzerinden yapılır. Ödeme yapıldığında borç takipte ilgili toptan satış faturası hareketini CH tahsilat fişi ile kapatır yani PAID ve CROSSREF kolonları işlem görür.)
LG_003_01_DISCPAYTRANS --->
LG_003_01_CLRNUMS ---> Risk Bilgileri	
LG_FFF_DD_ GUARANTOR ---> Fatura ile ilgili muhasebe fişi arasındaki bağlantı tutulur 
LG_FFF_FAREGIST ---> Sabit kıymet kaydı
LG_FFF_FAYEAR ---> Sabit kıymet kaydı satırları (amortisman tablosu satırları)
(Amortisman tablosunda muhasebeleştirilmiş ilgili satıra ait M harfinin kaldırılabilmesi için
DACCFLAG ve RACCFLAG kolonlarının 1 yapılması gerekir...)
LG_003_02_DEMANDFICHE ---> Talep Fişi 
LG_003_02_DEMANDLINE ---> Talep Fişi Satırları
LG_003_01_PRDCOST ---> 
LG_FFF_STCOMPLN ---> mamul alt malzemeleri
LG_003_INVDEF ---> Ambar parametreleri
LG_001_PROJECT ---> Proje kartlara
LG_FFF_BNCARD ---> Banka kartları
LG_FFF_BANKACC ---> Banka hesap kartları
LG_FFF_BNCREPAYTR --> Banka kredileri ödeme satırı bilgileri
LG_FFF_BNCREDITCARD --> Banka kredileri (Kart bilgisi)
LG_SLSMAN ---> Satış Temsilcileri ve Plasiyerler
LG_FFF_SLSCLREL ---> Satıcı - CH bağlantısı
LG_FFF_LNGEXCSETS ---> Cari/Malzeme kartı ingilizce açıklaması.
LG_FFF_DD_INVOICE Tablosunda ENTEGSET Kolonunda Tutuyor (İndirimler/masraflar muhasebe hesabına)


LG_FFF_STDCOSTPERIOD ==> Maliyet Periyotları
LG_FFF_OVRHDCENTER ==> Maliyet Yerleri (Başlık)
LG_FFF_OVRHDCENTERLN ==> Maliyet Yerleri (Satır)

*************************************

Teminat Tabloları;

Teminat Kartları ==> LG_XXX_XX_COLLATRLCARD 
Teminat Bordroları ==> LG_XXX_XX_COLLATRLROLL 
Teminat Hareketleri ==> LG_XXX_XX_COLLATRLTRAN 
Teminat Risk Bilgileri ==> LG_XXX_YY_CLCOLLATRLRISK

*************************************

Dış Ticaret (İthalat - İhracat)

LG_001_01_INVOICE
LG_001_01_INVEXIMINFO   Operasyon fiş bilgileri 
LG_001_01_STLINE
LG_001_01_INVEXIMLINES  Operasyon fişi satırları    
LG_001_01_EXIMWHFC      Dolaşim ve Millileştirme  fişleri
LG_001_01_EXIMWHTRANS   Dolaşim ve Millileştirme  fişleri satırları
LG_001_01_EXIMDISTFC    Dağıtım fişi
LG_001_01_EXIMDISTLN    Dağitim fişi satırları 
LG_001_01_EXIMDISTPEG   Dağıtım fişi pegging tablosu ADDEXPENSE dağıtılan tutar
LG_001_SRVCARD          Alınan hizmet kartlarındaki ithalat masrafı IMPORTEXPNS
LG_001_01_IMPSRVREL     Dağıtım tipinin tutulduğu tablo


*************************************
* Proje Takibi Database Eklentileri

LG_FFF_PROJECT 			Proje Kartları
LG_FFF_DD_ORFICHE 		Sipariş Fişi başlık bilgisi Proje kartı referansı PROJECTREF
LG_FFF_DD_INVOICE 		Fatura Proje başlık bilgisi proje kartı referansı PROJECTREF
LG_FFF_DD_STFICHE 		Stok Fişleri başlık bilgisi proje kartı referansı PROJECTREF
LG_FFF_DD_STLINE 		Stok Fiş Satırları Proje kartı referansı PROJECTREF
LG_FFF_DD_QPRODUCT 		Hızlı Üretim Fişleri Proje kartı referansı PROJECTREF
LG_FFF_PRODORD 			Üretim Emirleri Proje kartı referansı PROJECTREF
LG_FFF_DISPLINE 		İş Emirleri Proje kartı referansı PROJECTREF
LG_FFF_POLINE 			İş Emri Satırları Proje kartı referansı PROJECTREF
LG_FFF_DD_CLFICHE 		Cari Hesap Fişleri Proje Kartı referansı PROJECTREF
LG_FFF_DD_CLFLINE 		Cari Hesap Hareketleri Proje Kartı referansı CLPRJREF
LG_FFF_DD_CSCARD 		Çek Senet Kartları Proje Kartı referansı PROJECTREF
LG_FFF_DD_CSROLL 		Çek Senet Bordroları Proje Kartı referansı PROJECTREF
LG_FFF_DD_BNFICHE 		Banka Fişleri Proje Kartı referansı PROJECTREF
LG_FFF_DD_BNFLINE 		Banka Hareketleri Proje Kartı referansı PROJECTREF
LG_FFF_DD_KSLINES 		Kasa İşlemlemleri Proje Kartı Referansı PROJECTREF
LG_FFF_DD_DEMANDPEGGING 	Planlama Önerileri Gerçekleştirme (Proje Takibinde Talep Karsılama Ekranı) Proje Kartı Referansı PROJECTREF
LG_FFF_OFFALTER			Teklif / Sözleşme başlık bilgileri Proje Kartı referansı PROJECTREF
LG_FFF_OFFTRNS 			Teklif / Sözleşme satır bilgileri Proje Kartı referansı PROJECTREF
LG_FFF_GLASSGN			Sabit Kıymet Amortisman Tablosu Muhasebe Kodları penceresi Proje Kartı referansı PROJECTREF

************************************

Tablo yapısı

LG_XT001_FFF ---> Arayüz uyarlama ile eklenen alanların tutulduğu tablo

Arayüz uyarlama aracı ile eklenen alanlar direkt olarak olarak ilgili tabloya (Örneğin malzemeler için L_ITEMS) yazılmazlar. Ek alanlar için bu application table bağlantılı custom table oluşturulmakta bağlantılarıda application table logicalref aracılığı ile kurulmaktadır.
Ek alanları yer aldığı tablo ilgili browser üzerindeki uyarlama yapıldığı anda otomatik olarak oluşmaktadır. Tablo isimlendirme standartları aşaıdaki gibidir;
Firma bağımlı tablolar için;
LG_XT1<app. Table ID>_<firma_no>
(Örn: 2 numaralı firmadaki malzeme kartları uyarlaması için LG_XT1001_002)
Arayüz uyarlama aracı ile erişim ağacındaki uyarlamaya açık her bir seçenek için sadece bir tablo oluşturulmaktadır. İlgili seçeneğe yapacağımız tüm ek veri girişleri bu tablo içerisine yapılacaktır. (Örneğin malzeme kartları için sadece LG_XT1001_fff isimli bir tablo oluşur)
Arayüz uyarlama aracı ile oluşan tabloların isimleri aşağıdaki gibidir;
FFF : Firma numarasını


*************************************


LG_FFF_VARIANT Malzeme varyantları
LG_FFF_DD_VRNTINVTOT Malzeme varyant toplamları,

* Varyant ile ilgili bağlantıyı gösteren query *

SELECT * FROM LG_009_ITEMS I

      LEFT OUTER JOIN LG_009_VARIANT V ON I.LOGICALREF=V.ITEMREF

      LEFT OUTER JOIN LG_009_03_GNTOTVRNT G ON V.LOGICALREF=G.VARIANTREF

      LEFT OUTER JOIN LG_009_03_STLINE L ON V.LOGICALREF=L.VARIANTREF

WHERE I.CODE LIKE 'VARY%'     

************************************

Fişlerde Döviz Hesaplama :
LG_XXX_YY_INVOICE --->>> Fatura		
LG_XXX_YY_INVOICEEXCH --->>> İD Fatura
LG_XXX_YY_STFICHE --->>> İrsaliye
LG_XXX_YY_STFEXCH --->>> İD İrsaliye
LG_XXX_YY_STLINE --->>> Malzeme hareketleri
LG_XXX_YY_STLINEEXCH --->>> İD Malzeme hareketleri

Eski Hesaplama Şekli ;

İD Euro = 1,7692 YTL
RD USD = 1,3364 YTL
Dövizli Birim Fiyat Euro = 2,29 Euro
Miktar = 10700 Adet
2.29 * 1,7692 = 4,051468 ?? Birim fiyat kesir hanesi 5 olduğu için 4,05147 hesaplanmaktadır.
4,05147 * 10700 = 43350,729 ? Yerel para birimi kesir hanesi 2 olduğu için 43350,73
hesaplanmaktadır.
43350,73 / 1,7692 = 24503,01 Euro

Yeni Hesaplama Şekli ;

İD Euro = 1,7692 YTL
RD USD = 1,3364 YTL
Dövizli Birim Fiyat Euro = 2,29 Euro
Miktar = 10700 Adet
2,29 * 10700 = 24503.00 Euro


Satış Faturaları Dökümüne "ID Fatura Toplamı" ve "ID Birim Fiyat" getirilebilir..!

ID Fatura Toplamı : Türü (sayı) >>> R20.grossTotalX
ID Birim Fiyat : Türü (sayı) >>> R21.priceX


***********************************

TANIMLI ALANLAR

Tanımlı alanlar L_DEFNFLDSD, listeden secilecek bilgiler ise LG_CATEGLISTS tablosunda
saklanmaktadır.

L_DEFNFLDSD : Tanımlı Alanlar

MODULENR 
2 – Malzeme Fisleri
3 – Hesap Kartları
4 – Fatura
5 – Cari Hesap Kartları
6 – Malzeme Kartları
7 – Muhasebe Fisleri
8 – Siparis Fisleri
9 – İrsaliyeler
10- Sabit Kıymet Kaydı

LEVEL_ 
0 – Baslık
1 – Satır

NR 
Tanımlı Alan Numarası

TYP 
1 – Metin
2 – Sayısal
3 – Liste
4 – Tarih

L_MANDFLDS : Zorunlu Alanlar

MODULENR 
2 – Malzeme Fisleri
3 – Hesap Kartları
4 – Fatura
5 – Cari Hesap Kartları
6 – Malzeme Kartları
7 – Muhasebe Fisleri
8 – Siparis Fisleri
9 – İrsaliyeler
10- Sabit Kıymet Kaydı

MANDOTARY 
0 – Zorunlu Alan Değil
1 – Zorunlu Alan

NR 
Zorunlu Alan Numarası

LG_CATEGLISTS : Listeden seçim olarak yapılan tanımlı alan listeleri
LG_XXX_DEFNFLDSCARDV : Kartlara girilen tanımlı alan bilgileri
LG_XXX_YY_DEFNFLDSTRANV : Fislere girilen tanımlı alan bilgileri

***********************************

GÖREV ZAMANLAYICI
Tablo Yapısı:
LG_XXX_WFTASK ---> Zamanlanmıs gorevler baslık bilgileri
LG_XXX_TSKSHELN ---> Zamanlanmıs gorevler satır bilgileri
LG_FFF_DD_HISTORY ---> Kayıt bilgisi

**********************************



****************************************************************************************************************

--- MALZ. ALIM HAREKETLERİ DÖKÜMÜNE FİŞİN OLUŞTURULMA TRH'NİN GETİRİLMESİ ---

SELECT CAPIBLOCK_CREADEDDATE,* FROM LG_003_01_STFICHE
SELECT * FROM LG_003_01_STLINE

SELECT 
	F.CAPIBLOCK_CREADEDDATE 
FROM 
	LG_003_01_STFICHE AS F , LG_003_01_STLINE AS L
WHERE 
	F.LOGICALREF=L.STFICHEREF AND F.LOGICALREF='763'

*****************************************************************************************************************

--- Malzeme kartlarının son iki karakterinin select edilmesi ---

SELECT SUBSTRING(CODE,LEN(CODE)-1,2), CODE FROM LG_003_ITEMS ---WHERE CODE LIKE '150%'

***************************************************************************************************************

Alış/Satış fiyatları					LG_XXX_PRCLIST
Alış/Satış koşulları					LG_XXX_ASCOND
Araç ihtiyacları					LG_XXX_TOOLREQ
Aylık hizmet toplamları					LG_XXX_XX_SRVNUMS
Aylık hizmrt alış/satış toplamları			LG_XXX_XX_SRVTOT
Banka aylık toplamları					LG_XXX_XX_BNTOTFIL
Banka fişleri						LG_XXX_XX_BNFICHE
Banka hareketleri					LG_XXX_XX_BNFLINE
Banka hesapları						LG_XXX_BANKACC
Bankalar						LG_XXX_BNCARD
Bazı kayıtların diğer dillerdeki açıklamaları		LG_XXX_LNGEXCSETS
Birim setleri						LG_XXX_UNITSETF
Birim setleri arası çevrim katsayıları			LG_XXX_UNITSETC
Birimler						LG_XXX_UNITSETL
Cari hesap aylık toplamları				LG_XXX_XX_CLTOTFIL
Cari hesap fişeri					LG_XXX_XX_CLFICHE
Cari hesap hareketleri					LG_XXX_XX_CLFLINE
Cari hesap istihbarat bilgileri				LG_XXX_CLINTEL
Cari hesap kartları					LG_XXX_CLCARD
Cari hesap risk tabloları				LG_XXX_XX_CLRNUMS
Çalışan grubu						LG_XXX_EMPGROUP
Çalışan ihtiyaçları					LG_XXX_LABORREQ
Çalışan-Grup ataması					LG_XXX_EMGRPASS
Çalışanlar						LG_XXX_EMPLOYEE
Çek/Senet bordroları					LG_XXX_XX_CSROLL
Çek/Senet hareketleri					LG_XXX_XX_CSTRANS
Çek/Senet kartları					LG_XXX_XX_CSCARD
Dağıtım şablonları					LG_XXX_DISTTEMP
Dağıtım şablonu satırları				LG_XXX_DISTLINE
Döküman bilgileri (örnek malzeme resmi)			LG_XXX_XX_PERDOC
Döküman katalog  bilgileri (watermark varsa)		LG_XXX_XX_FOLDER
Döküman katalog girişi(watermark)			LG_XXX_FIRMDOC
Döküman numaralama şablonları				L_LDOCNUM
Entegrasyon bağlantı kodları				LG_XXX_ACCCODES
Faturalar						LG_XXX_XX_INVOICE
Firma dönem bilgileri					LG_XXX_XX_TRANSAC
Form boyutları						L_CDBTMP
Günlük döviz kurları					L_DAILYEXCHANGES
Günlük malzeme ambar toplamları				LG_XXX_XX_STINVTOT
Hizmet kartları						LG_XXX_SRVCARD
Hizmet kaydı-Birim ataması				LG_XXX_SRVUNITA
İndirim/Masraf kartları					LG_XXX_DECARDS
İş emirleri						LG_XXX_DISPLINE
İş ist.-Özellik ataması					LG_XXX_WSATTASG
İş ist.-Özellik değeri ataması				LG_XXX_WSATTVAS
İş istasyonları						LG_XXX_WORKSTAT
İş istasyonu grupları					LG_XXX_WSGRPF
İş istasyonu özellik değerleri				LG_XXX_WSCHVAL
İş istasyonu özellikleri				LG_XXX_WSCHCODE
İş istasyonu-grup ataması				LG_XXX_WSGRPASS
İşlem bağlantıları (üretim emri, sipariş)		LG_XXX_PEGGING
Kalite kontrol değerleri				LG_XXX_QCLVAL
Kalite kontrol hareketi- Kalite kontrol ataması		LG_XXX_QASGN
Kalite kontrol hareketleri				LG_XXX_XX_SLQCASGN
Kalite kontrol satırları				LG_XXX_QCSLINE
Kalite kontrol setleri					LG_XXX_QCSET
Karma koli satırları					LG_XXX_STCOMPLN
Kart-Muhasbe kodları					LG_XXX_CRDACREF
Kasa aylık toplamları					LG_XXX_XX_CSHTOTS
Kasa işlemleri						LG_XXX_XX_KSLINES
Kasalar							LG_XXX_KSCARD
Kaydedilen rapor filtreleri				L_RPFILTSXXX
Kaydedilen rapor tasarımları				L_RPLAYS_XXX
Kaynak kullanımları (üretim)				LG_XXX_OCCUPATN
Kullanıcılar						L_GOUSERS
Kuruluş bilgileri (ambar, işyer, fabrika vb.)		L_CAPIDEF (Artık kullanımı yok)
LOG (izleme) kaydı					LG_XXX_LOGREP
Maliyet dönem kapama kayıtları				LG_XXX_XX_PRDCOST
Malzeme alış/satış aylık toplamları			LG_XXX_XX_STINVENS
Malzeme alternatifleri					LG_XXX_ITEMSUBS
Malzeme hareketleri					LG_XXX_XX_STLINE
Malzeme özellik ataması					LG_XXX_CHARASGN
Malzeme seri lot no. Bilgileri				LG_XXX_XX_SERILOTN
Malzeme-Ambar bilgileri					LG_XXX_INVDEF
Malzeme-Birim ataması					LG_XXX_ITMUNITA
Malzeme-Fabrika bilgileri				LG_XXX_ITMFACTP
Malzeme-İş ist. bilgileri				LG_XXX_ITMWSDEF
Malzeme-İş ist. Toplamları (günlük)			LG_XXX_ITMWSTOT
Malzemeler						LG_XXX_ITEMS
Malzeme-Malzeme sınıfı ataması				LG_XXX_ITMCLSAS
Malzeme-Özellik değerleri				LG_XXX_SELCHVAL
Malzeme-Tedarikçi ataması				LG_XXX_SUPPASGN
Malzeme-Ürecetesi ataması				LG_XXX_ITMBOMAS
Masraf malzemeleri					LG_XXX_EMCENTER
Muhasebe aylık toplamları				LG_XXX_XX_EMUHTOT
Muhasebe fişleri					LG_XXX_XX_EMFICHE
Muhasebe hareketleri					LG_XXX_XX_EMFLINE
Muhasebe hesapları					LG_XXX_EMUHACC
Mühendislik değişikliği işlemi				LG_XXX_ENGCLINE
Müstahsil faturası					LG_XXX_XX_PRODUCER
Network kontrolü 					L_NET (kimlerin hangi firma ve dönemle çalıştığı)
Operasyon ihtiyacları					LG_XXX_OPRTREQ
Operasyonlar						LG_XXX_OPERTION
Operasyon-Malzeme ilişkisi				LG_XXX_LNOPASGN
Operasyon-Özellik ataması				LG_XXX_OPATTASG
Öceki operasyon ilişkileri				LG_XXX_PRVOPASG
Ödeme plan satırları					LG_XXX_PAYLINES
Ödeme planları						LG_XXX_PAYPLANS
Ödeme/Tahsilat hareketleri				LG_XXX_XX_PAYTRANS
Özel kodlar						LG_XXX_SPECODES
Özellik değerleri					LG_XXX_CHARVAL
Özellik kodları						LG_XXX_CHARCODE
Posta kodları						L_POSTCODE
Promosyon kartları					LG_XXX_PRCARDS
Reçete-ek ürün ataması					LG_XXX_COPRDBOM
Sabit kıymet kayıtları					LG_XXX_FAREGIST
Sabit kıymet yıllık kaydı				LG_XXX_FAYEAR
Satış elemanı hareketleri				LG_XXX_TARGETS
Satış elemanı-Cari hesap ilişkisi			LG_XXX_SLSCLREL
Satış elemanları					LG_XXX_SLSMAN
Satış rota satırları					LG_XXX_ROUTETRS
Satış yönetim raporları					LG_XXX_ROUTE
Seri/Lot hareketleri					LG_XXX_XX_SLTRANS
Sevkiyat firmaları					L_SHPAGENT
Sevkiyat türleri					L_SHPTYPES
Sipariş fişleri						LG_XXX_XX_ORFICHE
Sipariş hareketleri					LG_XXX_XX_ORFLINE
Stok fişleri						LG_XXX_XX_STFICHE
Stok yerleri						LG_XXX_LOCATION
Şehirler						L_CITY
Ticari işlem grupları					L_TRADGRP
Trigger parametreleri					LG_XXX_TRGPAR
Ülkeler							L_COUNTRY
Üretim emirleri						LG_XXX_PRODORD
Üretim rota stırları					LG_XXX_RTNGLINE
Üretim rotaları						LG_XXX_ROUTING
Ürün reçete revizyonları				LG_XXX_BOMREVSN
Ürün reçete satırları					LG_XXX_BOMLINE
Ürün reçeteleri						LG_XXX_BOMASTER

************************************************************************************************************

LG_FFF_DD_DATAEXCHHISTORY ==> LOGO CONNECT HAREKETLERİ











