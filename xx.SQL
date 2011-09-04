/**********/
/*        */
/* xx.SQL */
/*        */
/**********/

/* Begin Transaction */
begin transaction;

/* Database [mydatabase] */
pragma auto_vacuum=0;
pragma default_cache_size=2000;
pragma encoding='UTF-8';
pragma page_size=1024;

/* Drop table [Forms] */
drop table if exists [Forms];

/* Table structure [Forms] */
CREATE TABLE [Forms] (
  [id] INTEGER NOT NULL PRIMARY KEY, 
  [zbid] INTEGER, 
  [pgnr] VARCHAR, 
  [fz] VARCHAR, 
  [pfbz] VARCHAR, 
  [pfff] VARCHAR, 
  [fid] INTEGER);

/* Data [Forms] */
insert into [Forms] values(1, 14, '学校能贯彻落实佛府办[2007]412号文件精神，加强对教育装备工作的领导和管理，有一名副校长和教导主任分管实验室、学科专用教室（即功能室）、信息化教育装备工作。落实市、区教育装备管理规章制度，对教育装备工作做到有计划、有检查、有总结，及时解决教育装备工作中遇到的各种问题。', '4', '有分管领导1分，有计划、检查、总结1分，解决问题2分。', '听汇报    查资料', 1);
insert into [Forms] values(2, 14, '学校有由校领导、教导主任、学科教师、实验管理员组成的实验管理小组、信息技术管理小组，并有开展工作。', '3', '有实验管理小组、信息技术管理小组各1分，有开展工作1分。', '听汇报   查资料', 1);
insert into [Forms] values(3, 15, '能遵循“整体规划，分步实施，因地制宜”的原则，制订学校教育装备的中长期发展规划，并根据相关实验室装备规范、教学仪器配备目录，制订本校“新装备”工程建设方案，积极应用教育装备。', '2', '有发展规划1分，有建设方案1分', '查资料', 1);
insert into [Forms] values(4, 16, '加大对教育装备的投入，学校年度公用经费预算总额中要安排一定比例的资金用于购置教学仪器设备和图书资料等,其中用于教学仪器设备购置不少于预算总额的10%，用于学校建筑物及常规教学仪器日常维修维护不少于15%。', '6', '购置预算达10%得3分，建筑物及仪器日常维修维护预算达15%得3分，不达标酌情扣分。', '查资料', 1);
insert into [Forms] values(5, 16, '学校领导重视实验管理员、信息技术课教师业务培训，培训纳入教师继续教育计划，定期安排相关培训经费。', '4', '重视实验管理员培训1分，重视信息技术课教师培训1分，有经费保障2分。', '听汇报   查记录', 1);
insert into [Forms] values(6, 16, '学校按有关规定(粤教基[2003]115号文)给实验教师（实验管理员）发放必要的劳动保护用品或营养津贴。', '1', '按规定发放劳保用品或营养津贴1分。', '听汇报   查记录
', 1);
insert into [Forms] values(7, 17, '学校领导重视教育装备工作，能督促开足开好实验课和信息技术课，校领导每学期听2节以上实验课和信息技术课。', '2', '有相关教学计划1分,并有领导听课记录1分。', '听汇报查记录', 1);
insert into [Forms] values(8, 18, '实验教师（实验管理员）应参与学校的教研活动，调资、晋级、评奖与学科教师一视同仁。', '2', '参与活动1分，一视同仁1分。', '听汇报   查记录
', 1);
insert into [Forms] values(9, 19, '①能根据佛教电[2009]10号文件要求建立健全本校教学仪器采购制度，账务清晰，按照实验室和功能室的工作规则,仪器入库登记、建档科学规范。
②账册清楚，账物相符，账务处理及时。
③每学期进行清点账物，并有签章。', '3', '第①②③要素各1分。', '查资料、查账查物', 1);
insert into [Forms] values(10, 20, '①学校设有实验室及功能室资料专柜，存放实验室设施档案、仪器设备档案、实验室管理档案、实验教学档案、功能室档案、教育装备统计档案等，并利用计算机进行管理。
②每学期有实验室工作计划（如实验教学计划、装备规划等）。
③按时、按质、准确完成年度教育装备统计汇总工作。', '3', '第①要素1分，其中计算机管理为0.5分；第②要素1分；第③要素1分。', '现场查看    查资料
', 1);
insert into [Forms] values(11, 21, '①有学校领导主管，实验室有专职（兼职）管理人员和责任人。
②学校每学期进行一次实验开出率和功能室使用次数的统计。', '2', '每个要素1分。', '查资料、专访教师', 1);
insert into [Forms] values(12, 22, '①按照科学、规范、合理的原则，对教学仪器分科分类、定室定柜存放，并使用统一标签编号分类，张贴于柜面。
②仪器定期保养和维护，做好防尘、防锈、防潮等工作完好率达到95％以上。
③药品和仪器分开存放。', '3', '第①②③要素各1分。', '实地检查  抽查仪器
', 1);
insert into [Forms] values(13, 23, '①建立“实验室”、“仪器室”、“功能室”、“教学仪器设备”管理制度和“实验教师（实验管理员）岗位职责”、“学生实验守则”等，并张贴上墙，严格执行。
②计算机室悬挂《学生上机操作规程》、《计算机室管理规范》。
③实验室及功能室应设立使用情况记录本。
④仪器“领用”、“外借”、“赔偿”、“报废”有登记。
⑤实验室及各功能室要求供电规范安全，有防火、防盗、防潮措施，危险品管理严格、规范。', '5', '第①②③④⑤要素各1分。', '现场查看', 1);
insert into [Forms] values(14, 24, '18个教学班以上的中学配备实验管理员人数应与实验室数相等（参照佛教[2008]44号文），其中专职人数至少2人；不足18个班的至少配备专职实验员1人。兼职人员至少有一半时间从事实验管理工作。', '6', '专职人员数达到起点要求得2分，无专职人员扣2分。在专职起点要求上每增加1名专职人员得1分（每增加1名兼职人员得0.5分），6分封顶。', '查资料、开座谈会', 1);
insert into [Forms] values(15, 25, '实验教师（实验管理员）要求达到大专以上学历或中级以上职称，未达到要求的必须通过区级以上教育装备部门的培训和考核。实验室管理员的编制在学校教职工总编制内解决。', '4', '达不到要求酌情扣分。', '听汇报   查资料', 1);
insert into [Forms] values(16, 26, '专职教师具有计算机或相关专业本科学历，信息技术管理员具有计算机专业或相关专业大专学历。', '3', '达不到要求酌情扣分。', '查资料', 1);
insert into [Forms] values(17, 27, '做好实验管理员的业务培训、考核、评聘工作，实验教师（实验员）有参加区（镇）级以上实验教学、实验室管理、教学仪器设备的专业培训。 ', '4', '未参加培训每人扣1分，扣完为止', '查对资料核实', 1);
insert into [Forms] values(18, 28, '实验员专业对口，队伍相对稳定。', '3', '队伍稳定2分，专业对口1分', '查对核实、开座谈会', 1);
insert into [Forms] values(19, 29, '初中：规模8个平行班以下2～3间，8个～12个平行班3～4间，12个～16个平行班4～6间，16个平行班以上每增加4个平行班增加1间。其中至少1间配备数字化探究实验仪器设备。
高中：规模8个平行班以下2～3间，8个～12个平行班3～4间，12个～16个平行班4～6间，16个平行班以上每增加4个平行班增加1间。其中至少1间配备数字化探究分组实验仪器设备；至少有1间单独或合并设置的通用技术实验室，配备分组通用技术仪器设备。
', '3', '实验室少一间扣1分，无数字化探究实验设备扣1分，其中高（完）中无通用技术设备再扣1分，扣完为止。', '查资料、实地查对核实', 1);
insert into [Forms] values(20, 30, '初中：规模8个平行班以下1～2间，8个～12个平行班2～3间，12个～16个平行班3～4间，16个平行班以上每增加4个平行班增加1间。其中至少1间配备数字化探究实验仪器设备。
高中：规模8个平行班以下2～3间，8个～12个平行班3～4间，12个～16个平行班4～6间，16个平行班以上每增加4个平行班增加1间。其中至少1间配备数字化探究分组实验仪器设备。
', '3', '实验室少一间扣1分，无数字化探究实验设备扣1分，扣完为止。', '查资料、实地查对核实', 1);
insert into [Forms] values(21, 31, '初中：规模8个平行班以下2～3间，8个～12个平行班3～4间，12个～16个平行班3～4间，16个平行班以上每增加4个平行班增加1间。其中至少1间配备数字化探究实验仪器设备。
高中：规模8个平行班以下2～3间，8个～12个平行班3～4间，12个～16个平行班4～6间，16个平行班以上每增加4个平行班增加1间。其中至少1间配备数字化探究分组实验仪器设备。
', '3', '实验室少一间扣1分，无数字化探究实验设备扣1分，扣完为止。', '查资料、实地查对核实', 1);
insert into [Forms] values(22, 32, '理、化、生仪器室：初中规模不达12个平行班各1间，12个平行班以上各2间；高中规模不达8个平行班各1间，8个平行班以上各2间。中学规模在16个平行班以上的，每增加4个平行班增加1间。
理、化、生准备室：规模不达12个平行班各1间；12个平行班以上各2间；16个平行班以上的，每增加4个平行班增加1间。
其他：理、化、生实验员室各1间，化、生药品室各1间，生物园地1个。
', '3', '准备室可与药品室或实验员室合并使用，但药品室和实验员室不能合并使用。少1间扣1分，扣完为止。', '查资料、实地查对核实', 1);
insert into [Forms] values(23, 33, '初中功能室数量达到《广东省初级中学教育装备标准（试行）》要求。
高中功能室数量与面积要求达到《广东省普通高中新课程样本学校装备标准(试行)》。
', '6', '初中功能室每少1间扣1分，扣完为止。高中功能室数量每少1间扣1分，面积不达标扣1分，扣完为止。', '实地检查', 1);
insert into [Forms] values(24, 34, '理、化、生实验室每间不小于90m2，实验员室人均使用面积不小于6m2，准备室每间不小于18m2，仪器室每间不小于23m2（只有1间时不小于40m2），药品室不小于23m2。', '7', '面积不达标，实验室每间扣1分，实验员室、准备室、仪器室、药品室每间扣1分。扣完为止', '查资料实地查对核实', 1);
insert into [Forms] values(25, 35, '实验室的地面、门窗、综合布线系统、用电负荷、采光、照明、遮光、通风、噪声、温度、供电指标、供水、安全、环保、通讯等符合教育部《中小学理科实验室装备规范》（JY/T0385-2006）。', '2', '酌情给分', '实地检查', 1);
insert into [Forms] values(26, 35, '同一学科实验室与其辅助用房布置在同一层面且相互邻近设置。', '2', '酌情给分', '实地检查', 1);
insert into [Forms] values(27, 36, '实验室设备、固定设施、布置应符合教育部《中小学理科实验室装备规范》（JY/T0385-2006）。', '2', '不规范视情况扣分', '实地检查', 1);
insert into [Forms] values(28, 36, '物理实验室要求电到桌、化学实验室水到桌、生物实验室光源和水到桌。', '3', '物理实验室电到桌1分,化学实验室水到桌1分,生物实验室光源和水到桌1分。', '实地检查', 1);
insert into [Forms] values(29, 36, '化学实验室和药品室有排气换气设备和冲洗设备。', '1', '有相应设备各给0.5分', '实地检查', 1);
insert into [Forms] values(30, 36, '准备室要求电到准备台(桌)，其中化、生准备室水到室。', '1', '水到室0.5分，电到桌0.5分。', '实地检查', 1);
insert into [Forms] values(31, 36, '仪器室配备满足仪器存放的仪器柜。', '1', '符合要求得1分。', '实地检查', 1);
insert into [Forms] values(32, 36, '实验室有消防设施，化学危险品有安全防范设施。', '1', '有消防设施0.5分，有安全防范措施0.5分。', '实地检查', 1);
insert into [Forms] values(33, 37, '数学、物理、化学、生物、地理教学仪器品种和数量达到以下标准中“基本配备”要求：
初中：教育部《初中理科教学仪器配备标准》（JY/T 0386-2006）和2008年6月《广东省初中理科教学仪器配备目录（试行）》。
高中：教育部《高中理科教学仪器配备标准》(JY/T 0406-2010)或达到教育部2000年《中学理科教学仪器配备目录》I类标准及2004年《广东省普通高中新课程样本学校理科教学仪器配备目录（试行）》。
', '10', '品种未达“基本配备”的98%，每学科扣1分。未达85%，每学科扣2分，扣完为止。', '实地检查、查档案册', 1);
insert into [Forms] values(34, 37, '上述配备标准中的演示实验仪器（配备要求中起点数量为“1”的仪器）每4个平行班配备一套。', '5', '数量不达标每学科扣1分，扣完为止。', '实地检查、查档案册', 1);
insert into [Forms] values(35, 37, '分组实验仪器能根据实际班额学生数，对照标准中配备数量要求按“每4个平行班一套，2人一组”进行配备。', '10', '数量不达标每学科扣2分，扣完为止。', '实地检查、查档案册', 1);
insert into [Forms] values(36, 38, '按照2000年教育部颁布的《中学教学仪器配备目录》Ⅰ类标准配备。', '11', '参照理科教学仪器评分标准酌情给分。', '实地检查、查档案册', 1);
insert into [Forms] values(37, 39, '①	学校建有校园网，可与当地教育城域网连接。
②   通过各种形式接入互联网，能利用网络资源辅助教学。', '4', '满足要素①②4分；只达到要素②3分。', '现场查看', 1);
insert into [Forms] values(38, 40, '①每500人配备一个计算机室（可兼作语言实验室），并保证一人一机上课。
②教师每人1台计算机，学校建有软件开发或电子备课室。
③70%以上的教室配备多媒体教学平台。', '6', '每个要素2分。', '现场查看', 1);
insert into [Forms] values(39, 41, '理、化、生演示实验开出率100%。', '3', '符合要求每学科给1分。', '查记录、查登记册', 1);
insert into [Forms] values(40, 41, '理、化、生分组实验开出率，初中达95%以上，高中达100%。', '8', '初、高中对比各自开出率要求，每学科每少2%扣1分，扣完为止', '查记录、查登记册', 1);
insert into [Forms] values(41, 42, '定期对实验教学进行评估检查，期中、期末考试有实验内容，有效保证实验教学质量。', '2', '有开展评估检查1分，考试有实验内容1分。', '查记录、查档案资料', 1);
insert into [Forms] values(42, 42, '建立健全实验操作考核评估机制，学校有定期开展学生理、化、生实验操作考核或考查, 考核过程规范。', '3', '符合要求每学科给1分。', '查记录、查档案资料', 1);
insert into [Forms] values(43, 43, '学校在每学期教学计划中有实验课内容,并能根据学科教学进度实施。任课教师有实验教学计划,并将教学计划交实验管理员一份。每学年有开设实验教学公开课。', '2', '教学计划有实验课内容，并按实验计划实施1分，实验公开课符合要求1分。', '查记录、查资料', 1);
insert into [Forms] values(44, 44, '①实验室有规定时间对学生开放。
②教师有实验课备课内容或实验教学设计过程。
③教师有实验课过程记录和实验课效果分析，能积极探索创新实验设计。
④教师有指导学生撰写实验报告并对对学生的实验报告进行批改。', '4', '每个要素得1分。', '查记录、查资料核对', 1);
insert into [Forms] values(45, 45, '①学校有成立实验教学、实验室管理相关的教科研小组，所有活动有详细记载和总结。', '2', '有成立机构1分，有工作记录和总结1分。', '查资料', 1);
insert into [Forms] values(46, 45, '②有开展实验科研课题研究，有教研、科研成果报告或论文发表。', '8', '参考附件评分项目第4、5项对照给分。', '查资料', 1);
insert into [Forms] values(47, 46, '学校设有学生科技实验小组，在教师和实验管理员指导下开展课外科技创新活动，近三年有科技创新成果。', '2', '有学生科技实验小组得1分，有开展活动得1分。', '查资料、抽查学生', 1);
insert into [Forms] values(48, 47, '学校坚持开展自制教具创作活动，每学年师生有一定数量、实用的自制教具成果。', '2', '有开展活动1分，有一定数量、实用的自制教具1分', '查资料、 查看实物', 1);
insert into [Forms] values(49, 48, '①    自制教具获奖斟情给分，最高4分。
②    学生科技创新活动获奖斟情给分，最高4分。
③    教育装备论文获奖（特别是实验教学论文获奖）斟情给分，最高4分。', '12', '参考附件评分项目第1至3项对照给分。', '查资料', 1);
insert into [Forms] values(50, 49, '①根据国家或省课程指导纲要和教材内容，开足信息技术的必修课或选修课。
②能充分利用网络资源及多媒体教学平台进行教学。', '8', '第①②要素各4分。', '听汇报、查资料
', 1);


/* Drop table [FormsClass] */
drop table if exists [FormsClass];

/* Table structure [FormsClass] */
CREATE TABLE [FormsClass] (
  [id] INTEGER NOT NULL PRIMARY KEY, 
  [name] VARCHAR, 
  [ndid] INTEGER);

/* Data [FormsClass] */
insert into [FormsClass] values(1, '佛山市中学生实验室和信息化装备建设读到检查评分表(完中、高中、初中)', 1);
insert into [FormsClass] values(2, '佛山市小学实验和信息化装备建设督导检查评分表(小学)', 1);
insert into [FormsClass] values(3, '佛山市中小学图书馆督导检查评分表(高中、初中、小学)', 1);


/* Drop table [nd] */
drop table if exists [nd];

/* Table structure [nd] */
CREATE TABLE [nd] (
  [id] INTEGER NOT NULL PRIMARY KEY, 
  [name] VARCHAR, 
  [des] VARCHAR);

/* Data [nd] */
insert into [nd] values(1, '2011', '2011年度');
insert into [nd] values(2, '2012', '2012年度');


/* Drop table [School] */
drop table if exists [School];

/* Table structure [School] */
CREATE TABLE [School] (
  [id] INTEGER NOT NULL PRIMARY KEY, 
  [school_dm] VARCHAR, 
  [school_names] VARCHAR, 
  [townname] VARCHAR, 
  [school_xd] VARCHAR, 
  [school_type] VARCHAR, 
  [school_nature] VARCHAR, 
  [fid] INTEGER);

/* Data [School] */
insert into [School] values(2, '440605001040', '平洲博雅学校', '桂城街道', '九年一贯', '外工', '民办', 2);
insert into [School] values(3, '440605001017', '桂城东翔学校', '桂城街道', '九年一贯', '外工', '民办', 2);
insert into [School] values(4, '440605006025', '大沥博雅学校', '大沥镇', '九年一贯', '外工', '民办', 2);
insert into [School] values(5, '440605006024', '大沥镇曹边嘉福学校', '大沥镇', '九年一贯', '外工', '民办', 2);
insert into [School] values(6, '440605006026', '谢边南桥学校', '大沥镇', '九年一贯', '外工', '民办', 2);
insert into [School] values(7, '440605006044', '中山大学附属外国语学校', '大沥镇', '九年一贯', '实验', '民办', 2);
insert into [School] values(8, '440605006043', '大沥水星学校', '大沥镇', '九年一贯', '外工', '民办', 2);
insert into [School] values(9, 'NH0000010', '九江嘉华学校', '九江镇', '九年一贯', '外工', '民办', 2);
insert into [School] values(10, '440605111027', '汾阳广豪学校', '西樵镇', '九年一贯', '外工', '民办', 2);
insert into [School] values(11, '440605113101', '石门中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(12, '440605113102', '南海中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(13, '440605113103', '桂城中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(14, '440605113104', '九江中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(15, '440605113105', '南海第一中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(16, '440605113109', '艺术高中', '区直', '高中', ' ', '公办', 2);
insert into [School] values(17, '440605001108', '华南师范大学附属中学南海实验高级中学', '桂城街道', '高中', '实验', '民办', 2);
insert into [School] values(18, '440605001106', '桂城街道桂华中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(19, '440605105101', '罗村街道高级中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(20, '440605006101', '大沥镇高级中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(21, '440605006115', '大沥镇黄岐高级中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(22, '440605007106', '桂城中学小塘分校', '区直', '高中', ' ', '公办', 2);
insert into [School] values(23, '440605100101', '里水镇高级中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(24, '440605113107', '南海中学分校', '九江镇', '高中', '实验', '民办', 2);
insert into [School] values(25, '440605111108', '西樵镇高级中学', '区直', '高中', ' ', '公办', 2);
insert into [School] values(26, '440605001011', '桂城街道叠滘第二小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(27, '440605001010', '桂城街道叠滘小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(28, '440605001007', '桂城街道东二小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(29, '440605001016', '桂城街道桂江小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(30, '440605001003', '桂城街道桂园小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(31, '440605001006', '桂城街道海三路小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(32, '440605001015', '桂城街道花苑小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(33, '440605001036', '南海实验中学附属小学', '桂城街道', '小学', '实验', '民办', 2);
insert into [School] values(34, '440605001008', '桂城街道南约小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(35, '440605001012', '桂城街道石石肯小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(36, '440605001009', '桂城街道西约小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(37, '440605001001', '桂城街道中心小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(38, '440605001013', '南光中英文学校', '桂城街道', '小学', '实验', '民办', 2);
insert into [School] values(39, '440605001002', '南海实验小学', '桂城街道', '小学', '实验', '民办', 2);
insert into [School] values(40, '440605001004', '桂城街道南海师范附属小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(41, '440605001039', '桂城街道林岳小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(42, '440605001029', '桂城街道平北小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(43, '440605001026', '桂城街道平东小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(44, '440605001027', '桂城街道平南小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(45, '440605001030', '桂城街道平胜小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(46, '440605001028', '桂城街道平西小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(47, '440605001037', '桂城街道三山小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(48, '440605001035', '桂城街道夏北小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(49, '440605001031', '桂城街道夏东小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(50, '440605001041', '桂城街道夏南小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(51, '440605001034', '桂城街道夏西小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(52, '440605001025', '桂城街道平洲中心小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(53, '440605001038', '桂城街道三山港小学', '桂城街道', '小学', ' ', '公办', 2);
insert into [School] values(54, '440605105007', '罗村街道街边小学', '罗村街道', '小学', ' ', '公办', 2);
insert into [School] values(55, '440605105004', '罗村街道联和吴汉小学', '罗村街道', '小学', ' ', '公办', 2);
insert into [School] values(56, '440605105002', '罗村街道联星小学', '罗村街道', '小学', ' ', '公办', 2);
insert into [School] values(57, '440605105014', '罗村街道芦塘小学', '罗村街道', '小学', ' ', '公办', 2);
insert into [School] values(58, '440605105008', '罗村街道罗村小学', '罗村街道', '小学', ' ', '公办', 2);
insert into [School] values(59, '440605105005', '罗村街道沙坑小学', '罗村街道', '小学', ' ', '公办', 2);
insert into [School] values(60, '440605105011', '罗村街道务庄小学', '罗村街道', '小学', ' ', '公办', 2);
insert into [School] values(61, '440605105012', '罗村街道下柏小学', '罗村街道', '小学', ' ', '公办', 2);
insert into [School] values(62, '440605105015', '罗村实验小学', '罗村街道', '小学', '实验', '民办', 2);
insert into [School] values(63, '440605105001', '罗村街道中心小学', '罗村街道', '小学', ' ', '公办', 2);
insert into [School] values(64, '440605006002', '大沥实验小学', '大沥镇', '小学', '实验', '民办', 2);
insert into [School] values(65, '440605006004', '大沥镇城南小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(66, '440605006003', '大沥镇城区小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(67, '440605006014', '大沥镇大镇小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(68, '440605006021', '大沥镇横岗小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(69, '440605006008', '大沥镇沥北小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(70, '440605006006', '大沥镇沥东小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(71, '440605006009', '大沥镇联滘小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(72, '440605006013', '大沥镇奇槎小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(73, '440605006012', '大沥镇水头小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(74, '440605006011', '大沥镇太平成远小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(75, '440605006019', '大沥镇兴贤小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(76, '440605006010', '大沥镇雅瑶小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(77, '440605006018', '大沥镇颜峰小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(78, '440605006001', '大沥镇中心小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(79, '440605006040', '大沥镇白沙小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(80, '440605006037', '大沥镇黄岐第二小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(81, '440605006036', '大沥镇黄岐小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(82, '440605006039', '大沥镇漖表小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(83, '440605006038', '大沥镇六联小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(84, '440605006042', '大沥镇泌冲小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(85, '440605006041', '大沥镇沙溪小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(86, '440605006035', '大沥镇黄岐中心小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(87, '440605006059', '大沥镇才晖小学', '大沥镇', '小学', '外工', '民办', 2);
insert into [School] values(88, '440605006058', '乔治中英文学校', '大沥镇', '小学', '实验', '民办', 2);
insert into [School] values(89, '440605006055', '大沥镇东秀小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(90, '440605006054', '大沥镇河东小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(91, '440605006053', '大沥镇河西小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(92, '440605006052', '大沥镇横江小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(93, '440605006057', '大沥镇平地小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(94, '440605006056', '大沥镇邵边小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(95, '440605006050', '大沥镇盐步中心小学', '大沥镇', '小学', ' ', '公办', 2);
insert into [School] values(96, '440605104009', '丹灶镇第二小学', '丹灶镇', '小学', ' ', '公办', 2);
insert into [School] values(97, '440605104002', '丹灶镇新农小学', '丹灶镇', '小学', ' ', '公办', 2);
insert into [School] values(98, '440605104001', '丹灶镇中心小学', '丹灶镇', '小学', ' ', '公办', 2);
insert into [School] values(99, '440605104014', '丹灶镇联安小学', '丹灶镇', '小学', ' ', '公办', 2);
insert into [School] values(100, '440605104015', '丹灶镇罗行小学', '丹灶镇', '小学', ' ', '公办', 2);
insert into [School] values(101, '440605104013', '丹灶镇金沙小学', '丹灶镇', '小学', ' ', '公办', 2);
insert into [School] values(102, '440605007005', '石门实验小学', '狮山镇', '小学', '实验', '民办', 2);
insert into [School] values(103, '440605007003', '狮山镇狮山第一小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(104, '440605007004', '狮山镇狮山中心小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(105, '440605007007', '狮山嘉兴学校', '狮山镇', '小学', '外工', '民办', 2);
insert into [School] values(106, '440605007018', '狮山镇联表小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(107, '440605007016', '狮山镇山南小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(108, '440605007019', '狮山镇石碣小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(109, '440605007021', '狮山镇桃园小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(110, '440605007017', '狮山镇显纲小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(111, '440605007015', '狮山镇松岗中心小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(112, '440605007031', '狮山镇官窑第一小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(113, '440605007030', '狮山镇大榄小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(114, '440605007026', '狮山镇官窑小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(115, '440605007027', '狮山镇七甫小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(116, '440605007028', '狮山镇群岗小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(117, '440605007029', '狮山镇永安小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(118, '440605007025', '狮山镇官窑中心小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(119, '440605007012', '狮山镇新城小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(120, '440605007011', '狮山镇小塘中心小学', '狮山镇', '小学', ' ', '公办', 2);
insert into [School] values(121, '440605007006', '狮山招大学校', '狮山镇', '小学', '外工', '民办', 2);
insert into [School] values(122, '440605007032', '狮山镇明阳小学', '狮山镇', '小学', '外工', '民办', 2);
insert into [School] values(123, '440605100005', '里水镇里水小学', '里水镇', '小学', ' ', '公办', 2);
insert into [School] values(124, '440605100011', '里水镇麻奢小学', '里水镇', '小学', ' ', '公办', 2);
insert into [School] values(125, '440605100023', '里水镇旗峰小学', '里水镇', '小学', ' ', '公办', 2);
insert into [School] values(126, '440605100001', '里水镇中心小学', '里水镇', '小学', ' ', '公办', 2);
insert into [School] values(127, '440605100030', '里水镇和顺小学', '里水镇', '小学', ' ', '公办', 2);
insert into [School] values(128, '440605100029', '里水镇和顺中心小学', '里水镇', '小学', ' ', '公办', 2);
insert into [School] values(129, '4404045100029', '华南师范大学附属小学恒大南海学校', '里水镇', '小学', '实验', '民办', 2);
insert into [School] values(130, '440605101004', '九江镇大谷小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(131, '440605101006', '九江镇东方六社小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(132, '440605101010', '九江镇海寿小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(133, '440605101003', '九江镇南方小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(134, '440605101009', '九江镇儒林第一小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(135, '440605101015', '九江镇儒林第二小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(136, '440605101005', '九江镇上东小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(137, '440605101001', '九江镇中心小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(138, '440605101022', '九江镇南畔华光小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(139, '440605101023', '九江镇石江小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(140, '440605101021', '九江镇沙头中心小学', '九江镇', '小学', ' ', '公办', 2);
insert into [School] values(141, '440605101205', '九江镇福华学校', '九江镇', '小学', '外工', '民办', 2);
insert into [School] values(142, '440605111023', '西樵镇大桐堡小学', '西樵镇', '小学', ' ', '公办', 2);
insert into [School] values(143, '440605111020', '西樵镇第二小学', '西樵镇', '小学', ' ', '公办', 2);
insert into [School] values(144, '440605111016', '西樵镇第三小学', '西樵镇', '小学', ' ', '公办', 2);
insert into [School] values(145, '440605111014', '西樵镇第四小学', '西樵镇', '小学', ' ', '公办', 2);
insert into [School] values(146, '440605111004', '西樵镇第五小学', '西樵镇', '小学', ' ', '公办', 2);
insert into [School] values(147, '440605111001', '西樵镇第一小学', '西樵镇', '小学', ' ', '公办', 2);
insert into [School] values(148, '440605111017', '西樵镇民乐小学', '西樵镇', '小学', ' ', '公办', 2);
insert into [School] values(149, '440605111008', '西樵镇太平小学', '西樵镇', '小学', ' ', '公办', 2);
insert into [School] values(150, '440605111028', '新芳华学校', '西樵镇', '小学', '外工', '民办', 2);
insert into [School] values(151, '440605111029', '西樵镇实验小学', '西樵镇', '小学', '实验', '民办', 2);
insert into [School] values(152, '440605111018', '西樵镇西岸学校', '西樵镇', '小学', ' ', '公办', 2);
insert into [School] values(153, '440605001103', '桂城街道叠滘初级中学', '桂城街道', '初中', ' ', '公办', 2);
insert into [School] values(154, '440605001102', '桂城街道桂江第二初级中学', '桂城街道', '初中', ' ', '公办', 2);
insert into [School] values(155, '440605001101', '桂城街道桂江第一初级中学', '桂城街道', '初中', ' ', '公办', 2);
insert into [School] values(156, '440605001104', '桂城街道石肯初级中学', '桂城街道', '初中', ' ', '公办', 2);
insert into [School] values(157, '440605001105', '南海实验中学', '桂城街道', '初中', '实验', '民办', 2);
insert into [School] values(158, '440605001116', '桂城街道平洲第一初级中学', '桂城街道', '初中', ' ', '公办', 2);
insert into [School] values(159, '440605001117', '桂城街道平洲第二初级中学', '桂城街道', '初中', ' ', '公办', 2);
insert into [School] values(160, '440605001118', '桂城街道平洲第三初级中学', '桂城街道', '初中', ' ', '公办', 2);
insert into [School] values(161, '440605001119', '桂城街道平洲第四初级中学', '桂城街道', '初中', ' ', '公办', 2);
insert into [School] values(162, '440605105102', '罗村街道第一初级中学', '罗村街道', '初中', ' ', '公办', 2);
insert into [School] values(163, '440605105103', '罗村街道第二初级中学', '罗村街道', '初中', ' ', '公办', 2);
insert into [School] values(164, '440605006102', '大沥镇初级中学', '大沥镇', '初中', ' ', '公办', 2);
insert into [School] values(165, '440605006105', '大沥镇大圃初级中学', '大沥镇', '初中', ' ', '公办', 2);
insert into [School] values(166, '440605006106', '大沥镇许海初级中学', '大沥镇', '初中', ' ', '公办', 2);
insert into [School] values(167, '440605006118', '石门实验学校', '大沥镇', '初中', '实验', '民办', 2);
insert into [School] values(168, '440605006116', '大沥镇黄岐初级中学', '大沥镇', '初中', ' ', '公办', 2);
insert into [School] values(169, '440605006117', '大沥镇黄岐第二初级中学', '大沥镇', '初中', ' ', '公办', 2);
insert into [School] values(170, '440605006122', '大沥镇盐步初级中学', '大沥镇', '初中', ' ', '公办', 2);
insert into [School] values(171, '440605006123', '大沥镇盐步第三初级中学', '大沥镇', '初中', ' ', '公办', 2);
insert into [School] values(172, '440605104101', '丹灶镇初级中学', '丹灶镇', '初中', ' ', '公办', 2);
insert into [School] values(173, '440605104106', '丹灶镇金沙中学', '丹灶镇', '初中', ' ', '公办', 2);
insert into [School] values(174, '440605007102', '石门实验中学', '狮山镇', '初中', '实验', '民办', 2);
insert into [School] values(175, '440605007110', '狮山镇桃园初级中学', '狮山镇', '初中', ' ', '公办', 2);
insert into [School] values(176, '440605007116', '狮山镇官窑初级中学', '狮山镇', '初中', ' ', '公办', 2);
insert into [School] values(177, '440605007117', '狮山镇官窑第二初级中学', '狮山镇', '初中', ' ', '公办', 2);
insert into [School] values(178, '440605007107', '狮山镇小塘初级中学', '狮山镇', '初中', ' ', '公办', 2);
insert into [School] values(179, '440605007101', '狮山镇狮城中学', '狮山镇', '初中', ' ', '公办', 2);
insert into [School] values(180, '440605100102', '里水镇里水初级中学', '里水镇', '初中', ' ', '公办', 2);
insert into [School] values(181, '440605100104', '里水镇旗峰初级中学', '里水镇', '初中', ' ', '公办', 2);
insert into [School] values(182, '440605100109', '里水镇和顺第一初级中学', '里水镇', '初中', ' ', '公办', 2);
insert into [School] values(183, '440605100110', '里水镇和顺第二初级中学', '里水镇', '初中', ' ', '公办', 2);
insert into [School] values(184, '440605101102', '九江镇九江初级中学', '九江镇', '初中', ' ', '公办', 2);
insert into [School] values(185, '440605101103', '九江镇儒林初级中学', '九江镇', '初中', ' ', '公办', 2);
insert into [School] values(186, '440605101107', '九江镇华光中学', '九江镇', '初中', ' ', '公办', 2);
insert into [School] values(187, '440605111103', '西樵镇大同初级中学', '西樵镇', '初中', ' ', '公办', 2);
insert into [School] values(188, '440605111105', '西樵镇太平初级中学', '西樵镇', '初中', ' ', '公办', 2);
insert into [School] values(189, '440605111106', '西樵镇樵北初级中学', '西樵镇', '初中', ' ', '公办', 2);
insert into [School] values(190, '440605111101', '西樵镇西樵中学', '西樵镇', '初中', ' ', '公办', 2);
insert into [School] values(191, '440605111107', '南海执信中学', '西樵镇', '完中', '实验', '民办', 2);
insert into [School] values(192, '4406050065', '佛山市南海区盐步职业技术学校', '区直', '职中', ' ', '公办', 2);
insert into [School] values(193, '4406051141', '佛山市南海区信息技术学校', '区直', '职中', ' ', '公办', 2);
insert into [School] values(194, 'NH0000004', '佛山市南海区官窑职业技术学校', '区直', '职中', ' ', '公办', 2);
insert into [School] values(195, 'NH0000005', '佛山市南海区九江职业技术学校', '区直', '职中', ' ', '公办', 2);
insert into [School] values(196, '4406051143', '佛山市南海区第一职业技术学校(丹灶校区)', '区直', '职中', ' ', '公办', 2);
insert into [School] values(197, '4406051144', '佛山市南海区第一职业技术学校(松岗校区)', '区直', '职中', ' ', '公办', 2);
insert into [School] values(198, '440605113181', '石门中学狮山校区', '区直', '高中', ' ', '公办', 2);
insert into [School] values(199, '440605011042', '南海中心小学', '桂城街道', '小学', ' ', '公办', 2);


/* Drop table [unit] */
drop table if exists [unit];

/* Table structure [unit] */
CREATE TABLE [unit] (
  [id] INTEGER NOT NULL PRIMARY KEY, 
  [name] VARCHAR, 
  [pwd] VARCHAR, 
  [fid] INTEGER);

/* Data [unit] */
insert into [unit] values(1, '佛山市', '123', 0);
insert into [unit] values(2, '南海区', '123', 1);
insert into [unit] values(3, '禅城区', '123', 1);
insert into [unit] values(4, '三水区', '123', 1);
insert into [unit] values(5, '高明区', '123', 1);
insert into [unit] values(6, '顺德区', '123', 1);


/* Drop table [users] */
drop table if exists [users];

/* Table structure [users] */
CREATE TABLE [users] (
  [id] INTEGER NOT NULL PRIMARY KEY, 
  [name] VARCHAR, 
  [fullname] VARCHAR, 
  [password] VARCHAR);

/* Data [users] */
insert into [users] values(1, '1', '2', '444');
insert into [users] values(2, '1', '2', '444');
insert into [users] values(3, '1', '2', '444');
insert into [users] values(4, '1', '2', '444');
insert into [users] values(5, '1', '2', '444');
insert into [users] values(6, '1', '2', '444');
insert into [users] values(7, '1', '2', '444');
insert into [users] values(8, '1', '2', '444');
insert into [users] values(9, '1', '2', '444');
insert into [users] values(14, 'ncsW', 'PIfbNrA', '444');
insert into [users] values(15, 'Eicr', 'ahJUren', '444');
insert into [users] values(16, 'lEwI', 'oFJilpL', '444');
insert into [users] values(17, 'KAdp', 'PLDGpPV', '444');
insert into [users] values(18, 'eHPr', 'oqngbLP', '444');
insert into [users] values(19, 'ULvI', 'mLOtWBT', '444');
insert into [users] values(20, 'vQTM', 'muAUTEm', '444');
insert into [users] values(21, 'EsgB', 'DheqaMv', '444');
insert into [users] values(22, 'XvTk', 'KlEPKNr', '444');
insert into [users] values(23, 'OOtd', 'zEwczXj', '444');
insert into [users] values(24, 'oaBr', 'yhJIxYv', '444');
insert into [users] values(25, 'ihVm', 'hERmPjG', '444');
insert into [users] values(26, 'TKEh', 'oJhDJFJ', '444');
insert into [users] values(27, 'rNFj', 'xzOFtdU', '444');
insert into [users] values(28, 'lYRZ', 'lnmIrNT', '444');
insert into [users] values(29, 'SiIT', 'wqlpKpA', '444');
insert into [users] values(30, 'Inls', 'DeORuPI', '444');
insert into [users] values(31, 'fiiU', 'qknjwbt', '444');
insert into [users] values(32, 'flfQ', 'cQeFykJ', '444');
insert into [users] values(33, 'garZ', 'fsyBPsY', '444');
insert into [users] values(34, 'fQxu', 'YxXxYPH', '444');
insert into [users] values(35, 'PpcS', 'eSwnlTM', '444');
insert into [users] values(36, 'RKoH', 'erQnoUF', '444');
insert into [users] values(37, 'dotf', 'vcIZeEK', '444');
insert into [users] values(38, 'quKT', 'xUYzzTZ', '444');
insert into [users] values(39, 'nUUG', 'CIsdsFR', '444');
insert into [users] values(40, 'WFbq', 'zjdcMhM', '444');
insert into [users] values(41, 'DivO', 'STbbcrz', '444');
insert into [users] values(42, 'Qdan', 'ybUXiVV', '444');
insert into [users] values(43, 'kOtJ', 'kHfjkzL', '444');
insert into [users] values(44, 'Itrz', 'UWDtEUF', '444');
insert into [users] values(45, 'FwNi', 'bFUyrqt', '444');
insert into [users] values(46, 'EhMo', 'UNYmgrW', '444');
insert into [users] values(47, 'bbZy', 'LhKcWZE', '444');
insert into [users] values(48, 'FIvh', 'ABXzaqn', '444');
insert into [users] values(49, 'gboo', 'xgkErfH', '444');
insert into [users] values(50, 'loxR', 'aVDnkcw', '444');
insert into [users] values(51, 'rtrv', 'HIhThzV', '444');
insert into [users] values(52, 'OVuC', 'RIVDXJW', '444');
insert into [users] values(53, 'uyZu', 'FzjwLrN', '444');
insert into [users] values(54, 'XUdi', 'RufPTDB', '444');
insert into [users] values(55, 'SUGo', 'egeeCCg', '444');
insert into [users] values(56, 'hiwP', 'wNspUcp', '444');
insert into [users] values(57, 'VCFG', 'RQkoAfc', '444');
insert into [users] values(58, 'IcHj', 'oGRAZHJ', '444');
insert into [users] values(59, 'Janx', 'gkqKuRO', '444');
insert into [users] values(60, 'pceM', 'ydTpFcQ', '444');
insert into [users] values(61, 'Izah', 'YuTBGvF', '444');
insert into [users] values(62, 'noME', 'XiDEnLL', '444');
insert into [users] values(63, 'tDYM', 'ZOZuwzc', '444');
insert into [users] values(64, 'zKxW', 'iKaRpUj', '444');
insert into [users] values(65, 'TcCI', 'rDmlYUY', '444');
insert into [users] values(66, 'xPWT', 'iaKAPAv', '444');
insert into [users] values(67, 'pQaF', 'YOMzjUB', '444');
insert into [users] values(68, 'UWaY', 'lzSHFPZ', '444');


/* Drop table [ZB] */
drop table if exists [ZB];

/* Table structure [ZB] */
CREATE TABLE [ZB] (
  [id] INTEGER NOT NULL PRIMARY KEY, 
  [name] VARCHAR, 
  [des] VARCHAR, 
  [fid] INTEGER, 
  [formsid] INTEGER);

/* Data [ZB] */
insert into [ZB] values(1, 'A1', '组织管理', 0, 1);
insert into [ZB] values(2, 'A2', '装备情况', 0, 1);
insert into [ZB] values(3, 'A3', '教学应用', 0, 1);
insert into [ZB] values(4, 'B1', '管理体制', 1, 1);
insert into [ZB] values(5, 'B2', '制度建设', 1, 1);
insert into [ZB] values(6, 'B3', '队伍建设', 1, 1);
insert into [ZB] values(7, 'B4', '实验室（功能室建设）', 2, 1);
insert into [ZB] values(8, 'B5', '教学仪器配备', 2, 1);
insert into [ZB] values(9, 'B6', '信息化装备', 2, 1);
insert into [ZB] values(10, 'B7', '理化生实验', 3, 1);
insert into [ZB] values(11, 'B8', '实验教学研究', 3, 1);
insert into [ZB] values(12, 'B9', '应用成果', 3, 1);
insert into [ZB] values(13, 'B10', '信息技术应用', 3, 1);
insert into [ZB] values(14, 'C1', '管理机构', 4, 1);
insert into [ZB] values(15, 'C2', '发展规划', 4, 1);
insert into [ZB] values(16, 'C3', '经费保障', 4, 1);
insert into [ZB] values(17, 'C4', '开课情况', 4, 1);
insert into [ZB] values(18, 'C5', '激励机制', 4, 1);
insert into [ZB] values(19, 'C6', '账务管理', 5, 1);
insert into [ZB] values(20, 'C7', '档案管理', 5, 1);
insert into [ZB] values(21, 'C8', '场室管理', 5, 1);
insert into [ZB] values(22, 'C9', '仪器管理', 5, 1);
insert into [ZB] values(23, 'C10', '管理制度', 5, 1);
insert into [ZB] values(24, 'C11', '实验室人员配备', 6, 1);
insert into [ZB] values(25, 'C12', '实验室人员学历、结构', 6, 1);
insert into [ZB] values(26, 'C13', '信息技术人员学历', 6, 1);
insert into [ZB] values(27, 'C14', '专业技能', 6, 1);
insert into [ZB] values(28, 'C15', '对唔稳定性和专业', 6, 1);
insert into [ZB] values(29, 'C16', '物理实验室', 7, 1);
insert into [ZB] values(30, 'C17', '化学实验室 / 探究室', 7, 1);
insert into [ZB] values(31, 'C18', '生物实验室/探究室', 7, 1);
insert into [ZB] values(32, 'C19', '附属用房', 7, 1);
insert into [ZB] values(33, 'C20', '功能室数量(高中功能室数量及面积)', 7, 1);
insert into [ZB] values(34, 'C21', '实验场室使用面积', 7, 1);
insert into [ZB] values(35, 'C22', '实验室环境', 7, 1);
insert into [ZB] values(36, 'C23', '理科教学仪器品种、数量', 7, 1);
insert into [ZB] values(37, 'C24', '理科教学仪器品种、数量', 8, 1);
insert into [ZB] values(38, 'C25', '文科等其他学科教学仪器', 8, 1);
insert into [ZB] values(39, 'C26', '校园网', 9, 1);
insert into [ZB] values(40, 'C27', '场室、数量、设备', 9, 1);
insert into [ZB] values(41, 'C28', '实验开出率', 10, 1);
insert into [ZB] values(42, 'C29', '实验操作考核', 10, 1);
insert into [ZB] values(43, 'C30', '实验计划', 11, 1);
insert into [ZB] values(44, 'C31', '实验教学活动', 11, 1);
insert into [ZB] values(45, 'C32', '教科研活动', 11, 1);
insert into [ZB] values(46, 'C33', '课外活动', 12, 1);
insert into [ZB] values(47, 'C34', '自制教具', 12, 1);
insert into [ZB] values(48, 'C35', '成果奖励', 12, 1);
insert into [ZB] values(49, 'C36', '课程、课时及应用', 13, 1);


/* Commit Transaction */
commit transaction;

