﻿document.writeln('<table width=\"98%\" border=\"0\" align=\"center\">')
document.writeln('<form id=\"SearchForm\" name=\"SearchForm\" method=\"get\" action=\"/item/index.asp\">')
document.writeln('  <tr>')
document.writeln('    <td align=\"center\"><select name=\"t\">')
document.writeln('          <option value=\"1\">商品名称</option>')
document.writeln('          <option value=\"2\">商品介绍</option>')
document.writeln('          <option value=\"3\">生 产 商</option>')
document.writeln('          <option value=\"4\">录入者</option>')
document.writeln('          <option value=\"5\">商品Tags</option>')
document.writeln('          <option value=\"6\">商品ID</option>')
document.writeln('      </select>')
document.writeln('        <select name=\"tid\" style=\"width:150px\">')
document.writeln('          <option value=\"0\" selected=\"selected\">所有栏目</option>')
document.writeln('<option value=\'20106315753206\'>网上购物 </option><option value=\'20124773442796\'>──潮流男士 </option><option value=\'20122221183332\'>────畅销热卖 </option><option value=\'20124376776197\'>──────卡通T恤 </option><option value=\'20128866539961\'>──────拼接衬衫 </option><option value=\'20125672194638\'>──────修身V领 </option><option value=\'20123828911862\'>──────学院格子 </option><option value=\'20126703892027\'>──────水洗牛仔 </option><option value=\'20129031363669\'>──────街头休闲 </option><option value=\'20126107055506\'>────男装专区 </option><option value=\'20129110929750\'>──────春夏T恤 </option><option value=\'20120130510984\'>──────衬衫 </option><option value=\'20129516016668\'>──────牛仔裤 </option><option value=\'20125192770253\'>──────休闲裤 </option><option value=\'20128726231191\'>──────内衣/内裤 </option><option value=\'20123951685444\'>──────袜子 </option><option value=\'20120332410850\'>────男鞋专区 </option><option value=\'20126267580730\'>──────透气皮鞋 </option><option value=\'20126038986036\'>──────沙滩凉拖 </option><option value=\'20125404392720\'>──────韩式板鞋 </option><option value=\'20121080046305\'>──────雅痞休闲 </option><option value=\'20126873892171\'>──────帆布鞋 </option><option value=\'20120009247425\'>──────大头鞋 </option><option value=\'20128164305569\'>──美丽女士 </option><option value=\'20122636887880\'>────上衣 </option><option value=\'20125836447706\'>──────春装热卖 </option><option value=\'20120561886444\'>──────针织开衫 </option><option value=\'20128703716363\'>──────女士T恤 </option><option value=\'20122044874073\'>──────女士衬衫 </option><option value=\'20127264232012\'>──────休闲外套 </option><option value=\'20123635273131\'>──────小西装 </option><option value=\'20127181921694\'>────裤子 </option><option value=\'20124430083401\'>──────短裤热裤 </option><option value=\'20124114329474\'>──────小脚裤 </option><option value=\'20122356249393\'>──────哈伦裤 </option><option value=\'20121647742391\'>──────牛仔裤 </option><option value=\'20123725649744\'>──────蕾丝连衣裙 </option><option value=\'20126615518223\'>──────半身裙 </option><option value=\'20129846114398\'>────内衣 </option><option value=\'20126778164816\'>──────文胸套装 </option><option value=\'20121503504454\'>──────丝袜 </option><option value=\'20129644423373\'>──────睡裙 </option><option value=\'20123414972622\'>──────连裤袜 </option><option value=\'20120104692200\'>──────睡衣套装 </option><option value=\'20123095461780\'>──────情侣内裤 </option><option value=\'20125061317080\'>──美妆饰品箱包 </option><option value=\'20121499635137\'>────饰品手表 </option><option value=\'20123120661910\'>──────手表 </option><option value=\'20126385838919\'>──────项链 </option><option value=\'20121047364666\'>──────zippo </option><option value=\'20128968505015\'>──────男饰 </option><option value=\'20124987937666\'>──────太阳镜 </option><option value=\'20126642119360\'>──────戒指 </option><option value=\'20126610183076\'>────皮具箱包 </option><option value=\'20124746431378\'>──────撞色女包 </option><option value=\'20129471880916\'>──────真皮女包 </option><option value=\'20127613700825\'>──────品质男包 </option><option value=\'20122954878645\'>──────拉杆箱 </option><option value=\'20127419812459\'>──────皮带 </option><option value=\'20128820287666\'>──────钱包 </option><option value=\'20127031568382\'>────美妆 </option><option value=\'20122892869841\'>──────美白 </option><option value=\'20125047046830\'>──────防晒 </option><option value=\'20120718793110\'>──────彩妆 </option><option value=\'20129437908271\'>──────BB霜 </option><option value=\'20123658366110\'>──────男士 </option><option value=\'20124069731427\'>──────瘦身 </option><option value=\'20123227234214\'>──手机数码家电 </option><option value=\'20127285239175\'>────家用电器 </option><option value=\'20122715877466\'>──────平板电视 </option><option value=\'20125960044455\'>──────家用空调 </option><option value=\'20120632701724\'>──────洗衣机 </option><option value=\'20127443032184\'>──────剃须刀 </option><option value=\'20124144662662\'>──────豆浆机 </option><option value=\'20127134431141\'>──────电风扇 </option><option value=\'20122406787114\'>────手机数码 </option><option value=\'20124101779103\'>──────卡片机 </option><option value=\'20124214354192\'>──────单反 </option><option value=\'20123363158613\'>──────手机 </option><option value=\'20127032839596\'>──────iPhone4s </option><option value=\'20120916932383\'>──────笔记本 </option><option value=\'20122009826151\'>──────平板 </option><option value=\'20128867728233\'>────配件硬件 </option><option value=\'20126940281514\'>──────苹果周边 </option><option value=\'20129195468503\'>──────移动电源 </option><option value=\'20129817550071\'>──────TF卡 </option><option value=\'20123585320944\'>──────鼠标 </option><option value=\'20127706788983\'>──────音箱 </option><option value=\'20123166729001\'>──────U盘 </option><option value=\'20126102106479\'>──运动户外车品 </option><option value=\'20122116132742\'>────运动鞋服 </option><option value=\'20124386807885\'>──────板鞋 </option><option value=\'20127214462711\'>──────跑步鞋 </option><option value=\'20123876898468\'>──────休闲鞋 </option><option value=\'20120787129827\'>──────短袖T恤 </option><option value=\'20126488759405\'>──────短袖POLO </option><option value=\'20127235067308\'>──────运动裤 </option><option value=\'20123260420041\'>────健身器材 </option><option value=\'20129603175506\'>──────羽毛球拍 </option><option value=\'20122858442504\'>──────瑜伽服 </option><option value=\'20122570534062\'>──────连体泳衣 </option><option value=\'20129381775422\'>──────跑步机 </option><option value=\'20120117351658\'>──────挺腹器 </option><option value=\'20124007120137\'>──────直排轮 </option><option value=\'20127160298520\'>────车品户外 </option><option value=\'20127542646539\'>──────帐篷 </option><option value=\'20129707913538\'>──────速干衣 </option><option value=\'20120419005096\'>──────手电筒 </option><option value=\'20123197785979\'>──────电子狗 </option><option value=\'20128070531845\'>──────GPS导航仪 </option><option value=\'20122961300324\'>──────专车专用 </option><option value=\'20120338560723\'>──家居母婴美食 </option><option value=\'20125066332379\'>────家居家装 </option><option value=\'20129710718799\'>──────日用收纳 </option><option value=\'20121075985898\'>──────夏凉蚊帐 </option><option value=\'20126064123607\'>──────纯棉套件 </option><option value=\'20125456526606\'>──────热卖家饰 </option><option value=\'20120676084545\'>──────人气家具 </option><option value=\'20120424392548\'>──────灯饰照明 </option><option value=\'20129287890318\'>────母婴童装 </option><option value=\'20120143184523\'>──────配方奶粉 </option><option value=\'20124533937496\'>──────纸尿裤 </option><option value=\'20129205463142\'>──────亲子装 </option><option value=\'20126117604592\'>──────夏季套装 </option><option value=\'20129092575666\'>──────爬行垫 </option><option value=\'20124890218847\'>──────早教机 </option><option value=\'20125657830437\'>────美食世界 </option><option value=\'20128725875700\'>──────牛肉干 </option><option value=\'20128500970159\'>──────和田玉枣 </option><option value=\'20126641890078\'>──────瘦身食品 </option><option value=\'20125033202077\'>──────2012春茶 </option><option value=\'20129253760006\'>──────进口零食 </option><option value=\'20120664035312\'>──────进口美酒 </option>        </select>')
document.writeln('        <input name=\"key\" type=\"text\" class=\"textbox\"  value=\"关键字\" onfocus=\"this.select();\"/>')
document.writeln('        <input name=\"ChannelID\" value=\"5\" type=\"hidden\" />')
document.writeln('        <input type=\"submit\" class=\"inputButton\" name=\"sbtn\" value=\"搜 索\" /></td>')
document.writeln('  </tr>')
document.writeln('</form>')
document.writeln('</table>')
