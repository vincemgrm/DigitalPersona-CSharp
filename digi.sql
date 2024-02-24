CREATE DATABASE  IF NOT EXISTS `digi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `digi`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: digi
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fingerprintdata`
--

DROP TABLE IF EXISTS `fingerprintdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fingerprintdata` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Data` mediumblob,
  `Owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fingerprintdata`
--

LOCK TABLES `fingerprintdata` WRITE;
/*!40000 ALTER TABLE `fingerprintdata` DISABLE KEYS */;
INSERT INTO `fingerprintdata` VALUES (1,_binary '\0ø\È*\ãs\\ÀA:¡6«úŠ\×\Ýô$þ2K–\ÄÅ¨tþDi>\ä!\Þ4³yrž¦9\äNùTŠ¥\\tSŒ¿,­¤\nR	¯¢ñ­\Çð¨¿X\\KUÚšÈ¬ñw\ë\Û+›w\'\Òÿ\í\áŒ0¹DŸ¸©\éŽJðÀRø\r®\Îrzù{[<Ÿ \äfm©~Ï`	U}$F/ø<O\á\ß+¶\Ö\äM.\à.`xX?\Òm¦¥€„8aD5\Ó^\ã\ØföJt” ¸\ÊU=\ÐK\Ú~”i¡`J5$5g_5òÅµóô-	ž\×{\Û‘\Íy|˜E8o”6\Ù\åc¯\ÕFŠS\Ø+­»T«\Zµ˜ay‚¢\Z‰?D\à<fv@z»\Üi”0h2~\Ú\Ô\ÅþŠš±†]H1Ý’\\V\Øûø’ÄŠ\Ì\êeC9\Ü\ç—\Âo\æ\æ‚X&øF±j5\Ùð¤f0D+	?P[ªÞ¹\ÅI(÷ë¨‡\×bœf$Gq\ê8c˜5H•\'¬‹\0þ‘\È$\Ý{o\0ø~\È*\ãs\\ÀA:¡6«ú‰\×\Ýôþ:ûÁ´\Ã\èZ\Ðnô˜‹€OT\"³uvD•sk\Æ^D{œ§Z( 5|\Z]Ã£\Ý}\éK¶˜›ó\çü³ÐŽª\çv,å‹˜7~h,13¡‚\Û\0k!±qÙ“`Í¤vÀ\å\ÒR¦¨\\¢ðzq\Ë9\â\Å~Bù•`Ó‚_Tb\'õ»‘ÙO­©þEJj$øœl-:LQg¬\ë\Ã\å\nŒ>™2ð\Ã9o¶rC;\Þˆùf¿ø\â\åb&‰+\â#\Õ+Ú„E\ãx‰s.úŠ~Öœõo 3š\ÏYú¯X\\\Ùö­ñ\ÎuÝ•`\íF\ê\ï\éF\Ï6[5o\'Ið@•\ÐA`y¡Šù„¤÷ü\Ã\Ù3&\Êt}ý8U–\íR\àUbe\äœfŠ“fÙ“\\\Ä/Þ”Khó¬%@ \æ1¸Aw\ë±KÊ—þ¿7\ï~–\Ê#\\\ÄR´z\ä\Ë#¾A\Ýù\è97ð¬ý®\Þ*›]9\ê)zX\×ù‘©úz0»n™¤À°Yÿ\å,:o\0ø\È*\ãs\\ÀA8¬>\ÓG°\Æv\Ö&1f¤ç¾¨¾ø¿z²U”¦<GJUR‘«lG¾.<7±¸«¬]0mó[¤œ%l„.^¥ß‡8\ZjÿVŒL<\á‘eôxF\Å+x,\è³IeIº£%4¢›%ñ™?õ\Íh\Çq\à%·¨¼\Ã…‹R»K\á%wTü=\í0¬•\Ûk\É\Í\Û\Æi\Ø\ãyZ\ë¤\'9o¡q\Ó ’y\Ùpb\ïe-q\Ý\âëœ˜rô§\ë†R¾òÞž·µMw»ù“\ÊN>«\Êù¼—DM4%qJžžSÜQ¼N0\"5\áŠD¨†|2’´š÷þƒñ„\0Hd\ã]ý¿õ\î\Å0;\îH—c­wÆ°SüT\Éø7\×\Í\ÆJŒe ¶VÒŽ©kóSœhò\ÄÀi\îß›û–<Lºj<ðAo\Õ\ãÏ=\æ\ç?ON¯\ÅHvd\å\ê;3\ç °‡E¿\çÈŸõ\\|øA¥O…Wvý^ùS\Þb¥\0¢(GÇ±¥õ2‹ ¶\ÇÈ\Þ^’	m o\0\èf\È*\ãs\\ÀA7	«qpºU’}Om\Ø@˜‘)\î—D\nT\Î½\â\Ìü\å§™#z\ì\Ê+1\ìñ™Ð¡Yy‘·´ð÷\"iBmM\0üh}\æ³ø\ßuþ\âGYvL\ê\ÌW£¿M\ËõhwnñH÷\Ð\Ú\rm|I\æû\ÕEk _–ˆ\\¯-K+8Í›dvhAŠ8¨\ÅfÈ®MÿG½ÛJÿ\ËV†–6J$–¬\Zsó\îÎ¦Œ\nƒBSò[A\Ô\ËÇ»œcn\Ô\æˆD/v&Š2É\èux•\'“Mx)¿ù\â•pœ\è&‘…­y\Éýž\É(’\ä*#]2Ë‡`÷Á+;d}ÓŸll›q\ËTr¸/\Ý\È\ì¹òG³q12\ç7ÈÊ´\ê¤ù>þ‘\Îw0\Ô\ï\\’p ‚‰Ú„J>£¼WÀK^bôb†\éM•[ŒÃLY\Û}HL¬\\\ÒwžL~\é{`•÷©\Ü-x\Ðc\×l\ërCX_W:ï§º˜S6Ú-µoúðú(û`û¸ûpû¨û\0û\Ðû	û`	û¼\nûô\nûLûû\Èû \rû\rû\È\rû û@û\Äûüûû„û¼ûû','asdadasdad'),(2,_binary '\0ø}\È*\ãs\\ÀA7	«q0­U’$ƒ€Š	—\Ö\Æt¼‡\Ên\ì\çq¶ºm\à¹\Ødnˆì‚­E8‰ýb³€ñ½vy‚Žf~Ç‘ eR,§€½7Â¥ö«Cºu\ç\çC~e]M¡\\Wˆ\ç\ãµd¼\rW|\ÒXp£*¿ú7ˆ½!õ\Ùr%\çR»yE\Ç\Ýi0¦@@G\è:õ‚9\ÛÿÃ/«\ÔO\Ð~ÁÃ­TNˆ\Ì,IÙ¼˜gòlw\Ûþ\Ã&\Û÷\Ý.4e\ÐmÀHÿ‡€©_4ÀY\êe¤\ßÒ5\Ê\éÁ\æÀ\ËL•\éb.š¨\ëV\ä5\'B,·\ÚTƒ\àW¶˜\ZS]’iˆ\Ï\Ý(\ì’U¾ÍŒ\n\Í\Z*sõJ\Þ\Þ4r\àœ½\æc\ZIÍž\æ¬]8Ûª\Ò[7.,\ë);}ŠoZG\ï“]©_ÝƒA“ºÛ–©Yh´‚4–üµR\Ë$MTt%\ß\nxpl\Í\Ó6V#\è\ß\ÃPÿ2DGö\ÝA“š \Ï%d—ý\âøf<¢¿Ñ»Z»\Z³¶W1\×\ë\Õo\0ø€\È*\ãs\\ÀA7	«q°OU’a¯’Dµ„§ªM\È\Ý\àÜ‰õû\Ú+H\Û)»XVÿž]\×¡8-H 3Rv™n$J\Ç\ä.\ÚXÔ¥ „²vñ¢+?\Íd/£ÿ0\Ë~\Ñ$«cq!óÈ“_\È&Sò\âk®Ä£ÜŸ>!™‚ôoü‹<ž¡ !,¹ð%\çò\'JH\ržhûNU<D\Ë\ÍD\à\ã\'rfÅ¿º8!z4\Ærž$|\ã\à˜:49ä£‡œ\Üd.±¶‘I\Ã\ÂBÁ\Ôr\Ðc½I¸^2¨\ÈD-gD¨rJ\n]\âŒ\ËMÀ\Z¨\àT<þ\Åh@\×\Ö\ã\Ìy``QD¿®û÷¾1Z\ÞÅŠÀ¢d(Àûûƒz‰K<Tð¤ûA\Ãñ\×£€­§Í¹³pj8? Kž¯Tf\ÐÐ²-ƒ\íqŽK8^t\ë\0™­_«š9 ^¡\Ã1£OôpÓ±É†Åˆ\ì`ðH¬\É	\î{\Õ\åŠK<;/’¿R‡°s\ïiý“¸½-\Ýg\íD%˜–æ–o\0ø\È*\ãs\\ÀA7	«qp±U’\Ès.µÓ¦\ÓHþ\Å=$­|ˆ¨¨aÁ¬@eTU’\ÃG/[r1Á –|P²¯\Â’¤À0z)¤­¸„\"2>Uc´\ÎvŽR¶+{\Ä¾¢u\Ä\0@ÁB¥÷\Îú\é¼4|`2xZ\Ê\Ù\á\ËNHI‹À—ºHƒB¶+BÀ£\Ç\Ó\Ñ%(\Õ’BO1öµˆýVDôR1Ÿ%Œ¶GI“¬6UˆóŒö\ì·	ýr¬\Ü/q¶Z¬\ã\Å\\+\È@=A^†\×k¬ðR\å‘ù+-Þ†¼JM§Oj¨AÐŒpòW;¯*ê€HòC\îKù$‰N¾¯[‰¹š\"N¾\'±úõ§a\á]\í¥2¨VÎ²clXdú\Ì\ÛÉ¥ƒ\ÙL\à\ÏuN\Â\ë	‘¯ðvW\nYQ„»¬É´\ä\á˜.u²õ½Ì§­÷@\è%ù/ò³Z\â\ÖF\á\"\ía“ \Ëú[Y…(¹o~`‹0\í¢£2÷ž.™\Ü\Ð(\rXLd¼0¤4qrWZ©^V\é¦\Õ#0?Á\Â2\ëw_þ|Šo\0\èg\È*\ãs\\ÀA7	«qpœU’\àn¼¿p\ì\r¤T¶D\Øp¹\Âó\Z{{\Ú\ÄqÖ©\ç\Z›{ŸJª\×a’Œ\Ü\'\Â>…lù«HƒPµ÷ó\Õ\n—]6\ë’v\ím;†\î»öó­Œ>`;\ÞžM~i†.-Öµ®U³Õ†J…\Ê3õ¦\Ü¿c1YxC½[Š©“pÏƒ0\ÂmQ%	p\ß¿\Î\r&s?½´cX\n[¼Þ»\"’\ÔÂ¶Cc‰¶Q@<šHª÷ðK4P˜\ïlã—°—¸\Ê\ÆX²i¤®ý\Ã3©\Íl’¨x´Á*Œ\í\ÇÇ\Öy~5\ÂûI´~AC\'Jû*\ß#ÿb{lŸ\á\æ$,ly\âU(G]&[œ\ât»\'\ä“x-Z!—#±‚\Õ\ä¶68¨=\09NÉ™\Ð\ïbdûž8g!RbŠ\r¨kÜˆ~qõ`ù÷„ú\Ðm/X*ÿA\ã.Ï€7;;ú$¤.\èo\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\Ç\Þ\0\0\0\0\0\0\0\"\0\0\0\0\0\0\0\0\0:\0\0\0\0\0\0\0\0\0\0\0\0\0`%Ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„J\Í\0\0\0\0\0\0\0\0\0\0\0\0\0¤ÿÿÿ','123'),(3,_binary '\0øv\È*\ãs\\ÀA7	«q°ÿU’\áño$x(°	/„7žý`Ùƒ\Ð\îG‹\í}O\Â&KH›ý8aûõE=¹;^\à„\ä·þ\\F$†§•´­NX;x€ž.7Þ´!¼Qü\ÂCñ`… œ’œ³>{\ÉÖ™üò\ÌK´l¬ÁÖº/F‰x\ÃD\\\ÞS„OúÝ€­\î§\Ì!˜™7E\ìe\Ä\"úW¨~9¢‚QNf|\Ý9\Ïû\ÓPø{÷J¿U@=\r‰XŒa—,Œb\à<:·~ðý}²½kX:þ†m2-¦\ë.ùa³% ýP\Ü3b\ç‡Ç‡e0ñt7\È(:\Ò\é\'ó;m\æ«:/\Ò\æ†	oRI~ÁmP~¹6\ï\ÓX¥›\"<p\æ\ìº\È\r\âtU04XD±«ÿ¸mF)È†~=»\ÌH\Ï$À\ã\Ô	ð\àžò=™¯ôµ{º{\á‘\ï`*N\Å\æu\ÞlEÁÁ`\Þõh%˜¢\Ö\ÕFjª÷\0¾Ï¥\çf›\â_>Xo\0øv\È*\ãs\\ÀA7	«qððU’’\ç+\Ôý†\ëú†gv®\ß\Ò\'·ˆtŠ£e\Ñ¬\ÑÀ¼QHº¼\Í\Z—-/gCú\\<h. †NC—wÓžŠ‰S¸29\ä¤\È5óœ|ÿa6lþö\ÖA\Ç0sQ7A¼£ª	;¸Ð…{¯}\êÎƒn,™OV½_c»\Ðô 7\èr:\Ã@\"\äŸ\è-\Ë7ˆ7†\äC@Ã›\×o\ì ¤@v¯L]Á{„\Îý\äül5™¼\ØH\\‹>W÷\ÉWRhûaò…G\ÓOS…D¾\Å]6¤VwLbCXs–xYs\Ö8\ËH‚ûþ½\ÖØ³lE4ù¶û-\'š>j\Ê\ÛVù#®²«\Z\à|\ï‘­+Œbv_s¥\ßûhC¼ª\éŠx\á’)}\ÕôƒÇŽ/\Þt(\Õ,\ÔÀ\î\na8“aef::\'Í²¤g\á13^ôðM¡E¨—\ã\\\â\Â\íH\Í/~V\ØÃ \Ì#(q\ábQ‰HŽÚ \'\êZZû\\\Ú2\ãŸðµ}\Ú-i\Ýo\0øp\È*\ãs\\ÀA7	«qð\æU’’6O\Â]]\Èõ\ïÿ£#Š\á–ø½\rn\0¸a3¢~ ©³\×(£a?AÎŽS)RµË«\îANŒª²ƒ®j˜\Ív–ý,ªÀ4v\Çõ~¾\æ*|—{\Ñ[O6÷±¡{`—`\Ù]\Ý\ç\å_l}#[E­{\ÓÁ\Ì×‹?V9ºÁ›x6^\Êhm\×À\×,Ó¹\ëO§]Ð‹a¡²gTDŒ\Ìjñ9\×u\Ò:»½¡#\àRE\Æ\Ìh\ÂÌ«§@†ÿÀ”6\èØ½˜>\Æ/Š €i‰ŸyH {\Í\Ñê»„V\Ôb²¤\Â\ÝB\ÃPy{O\Ù\r6g%ošºú¨N<\Ù\ÐÔ²™ù\ÜZ…\åhHYó·\'½ˆx4ÉƒsQ†\Ã+ Ôšª\à[–\Ä\ã\n¤\\×¤#Xëž’F_\ïó\Ñ\'\Å8¿ªW¦ð8\åyñ\×®BOÿ\ê¯\0¾]ƒx˜a}ºÀQý´“‹Qó`÷®un§¤)ü\Õ&\Ù\Ã„š¦	y\rœ3o\0\è~\È*\ãs\\ÀA7	«qpŒU’\â\ëƒJ„‚AÁ.\ì›\Õa°¨Ž\ÏÉ¡…\Ç\ÆJn…o4ˆú»b“¸x¨ú“¤#‚î„˜÷}V\Õ<A\Z×¦©N`\Îè’ªÅ³{„El‚¹ô#\0\ëó\0\Ò#µ—|\Ùø.ô\Þ;5¥³?s……úx¥’§\åT,\é+BI„E\è\î>üÁ­\r	&\ÝúpV²%£it©W¯ƒ\ÈW\å:Ü¢´6\ê¡\Û\ÓR’\ìh¤¸Lw³\Ùtnd4o…º‚¶h\ÑZ\Å?$DŽ/|†V±\ç<\Îþ’Õœ·•Ž=­Šõû9øþ±eB_=y\Z:uù”²_\ÍE8W·\ÅñTH\ã \Æ\Ú4v\Ò&~,1/Zr3\Z«h\êA&s‚„PwF\Ï\Ì\\›I÷8¥mÐ½URm\ãa®ò\Ïvºƒv\Ã\ï2W5ñó¹/®`;W·jv7F\Ój\éù>pv™1¹Ð“’PK”k=o\ÝùU»E\"ùahë±§ˆ\àŠÝ»‡Ì¦¼(\ç¾^c\Ño¶h¶t¶t¶€¶€¶¤¶¤¶\È¶\È¶\ì¶\ì¶ü¶ü¶ ¶ ¶ ¶ ¶( ¶( ¶8 ¶8 ¶D ¶D ¶T ¶T ¶` ¶` ¶l ¶','vince'),(4,_binary '\0øD\È*\ãs\\ÀA7	«q0óU’`±¼\r|ƒ¥¦üŽ\ÃC”LZ½4\ÕGl­J­wl,ö/\Ï\Ö/ü)‰×Y/¯\ã\Ô\æY\Õú„•„øý©\å	\\½‡¶ò–i»÷?¦ƒ—¹ø5Û¶¢ÏŠ\É>xI«‹98¦­‚×»•E\Ò#Syój\Æ(qu?©5\ÂYˆV	ß­ ”ªm£\n@}e\Øhœ53Ñš\è‹Åª—gd]#_Js­‚Û¸Ý±­)€+k{le‰óZön\Ë”\Ü1n‡\ß_òýðu)€ÀVX¢U\ÃY ;-weø\Ú\ÈC†(üM\ÄÀ¢®\á†w…z:\\\ZoV\ÃA@`\Ú%ŠAZu:¬\é\0O9]Að!„—o\âª!\ë\êú›-7ˆ	±|‚sâ‚¿6=˜w¬›\Û\ZSÈ°o§\Ör³o\0ø9\È*\ãs\\ÀA7	«qpúU’2Ž†\Òðqn˜\r•«‚•dÀs\ÉN¥ª³\Ç¬QO\ç\èû\â38A¯\à4¢~0œÊ¿\ÑgÀ·\ÊÆ\ë‚7ª¿\Ò$ÅÀ\ÚS‹Bj,\ÏaõT¹\ÔFqÂˆ% €5ølß‹‡=7i4„Ó\éÌ¬kÂ¢O†\Ãö\naùÊ²|¶\ÉD\ê\Üj^ý ¿Ž\ÝÞµ†<H1\ç\Õ\ëûNQN%ú\Ù^\í\ßð.8ý‚„\Ç~0AùõÒº\êü¤\ßo\É\ÒCò)=zH\à½úÝž\Û,\ãK÷†´L	\Ö}Y“ŒPÎŽ•‡‘2ô\'ó0\ïÈµ¶\Ä\Â$/\Ïu\Ë\ÜÍ‰ó\r›a\èb\âñ²/ç‰\Â\ÌptqøtLf\æÑ‰‚P/ðH\ì\çð\Ý\ßpù\Ù5%L\Ø\Ë	)§qn!¢\Îú†s=”|E€o\0øB\È*\ãs\\ÀA7	«q0œU’\ïq¼\ç!Z«­C:j\íƒAÑ©83)u>£*\ÞCFðNDë°=l»‹r\Ì\É \ÜÆ¨h°~w~ÌŠ™·¾†{Ÿ_\Ò~®vV\î;Íµ‘\ï¢[uƒ‘\Â\ÃI=7h}Á­“9u\Ú1 Ú¶\ÓT\é¼¢\È\ç-\Zµ¹\Â3ù\Ù4ûm¤\Ïþh\á(\í¨!I0d\å\ß\Ü\ã@¾\0´Š\Ö\'•s5&’,$2PACõ\ÆÀ‘\ÅL }3‹¦.\ÒAG\Éý•0÷\È36iQ¨Z’gœ*©—`\ÏûB…\á\\±K[ŠpÞ©\È7‘¥õZÃ \ì\È@[³\ä&ôœ+Á\ëJJOü\Ü}‡ªBzŽe†\é@™s²\0¹¤Ö®\à€|o™¸;\á\Ö|o\ÖØ˜x|L\ïqVù469ƒ2•`‰\Í÷§\Ì\Ú÷§>’}†\åˆ[so\0\è+\È*\ãs\\ÀA7	«qð\åU’¹„¤µ\Ã,^/â€¬\ÒYw`6&\'\å\ï\ã’\Ï2\Þ\Äz]¹\ÃM¼zœ\éD,h¾¸\Ú\ì\\³øÙ˜\Z(-\å–^··g	— „³\ÈHkþó[ZÏ$š¤a\Z³¹&hS;£U”\í\ë}8òa2“7Œ@#1øiš¡õcÎ“\Ú#adw\ÍbT\à5U\nˆ”÷®Œ0‡vN,\Ò% r¬\Ûó3\0§\Ýüú \ÝT’\Å\Í\Þg\áMž;\á\Ñš„ý,{üðÀ2l\á¿	þj\ÜË£.\ë˜\à~™ü\Ø\ÆK ©\íh6…@g\ÐÊ©ˆ´¢11¥k+kVZš¾\ÕžôÀ¾Zž]«V^&že£s¿\Þ|\r;{\ÕÎŸ´š|=²\Êýh…uwK¶ GnVVpo\0\0\0\0\0\0\ìs|\ìs|\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$t|$t|t|t|t|t|\äs|\äs|ôs|ôs|t|t|,t|,t|\0\0\0\0\0\0\0\0ps|ps|xs|xs|¼s|¼s|\Äs|\Äs|t|t|4t|4t|\Ôr|\Ôr|\àr|\àr|\ìr|\ìr|ør|ør|s|s|s|s|s|s|@s|@s|Ts|Ts|€s|€s|Œs|Œs|˜s|˜s|¤s|¤s|°s|°s|´T\í¸¨w\r(U~#\Çô\0€¸zl\0\0\0\0X‚\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\È}\Ä\0\È}\Ä\0\Ø}\Ä\0\Ø}\Ä\0\è}\Ä\0\è}\Ä\0\0~\Ä\0','test');
/*!40000 ALTER TABLE `fingerprintdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'digi'
--

--
-- Dumping routines for database 'digi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-24 17:30:48
