--- ●专注图色文字识别
--- ●全彩共有十三章节
--- ●图文并茂原理易懂
--- ●多门编程语言源码
--- VB6、按键精灵（含手机版）、VS2015（C/C++）、Python、UiBot、易语言、TC等
--- ●三步识别入门基础
--- 颜色识别、图片识别、形状识别
--- ●带十三套图像滤镜
--- 彩色图像滤镜：二值化、灰度、色调分离
--- 黑白图像滤镜：清除杂点、去掉直线、获取轮廓、提取色块、倾斜矫正、旋转纠正、颠倒颜色、膨胀腐蚀
--- 图像通用滤镜：等比缩放、缩放归一化
--- ●五种字符切割技术
--- 固定位置、随机方位、连通区域、范围投影、颜色分层
--- ●十个实战演练范例
--- 文字类识别：标准数字、重叠数字、波浪数字、错位文字、中文选题
--- 图像类识别：与众不同、面朝方向、清晰图像
--- 图形类识别：箭头朝向、寻找圆心
--- ●三篇识别分析理论
--- 扭曲变形、旋转方向、滑块拼图
function TURING.About()
end
--- 角度计算，指北为0度
--- Angle = TURING.AngleCalc(aX, aY, bX, bY)
--- aX：整数型，圆心点x
--- aY：整数型，圆心点y
--- bX：整数型，移动点x
--- bY：整数型，移动点y
--- Angle：整数型，角度（指北为0度）
function TURING.AngleCalc()
end
--- 生成贝塞尔曲线轨迹数据
--- {offset} = TURING.BezierCurve(coordinates,stepping)
--- coordinates：字符串型，坐标节点
--- stepping：小数型，步进
--- {offset}：表型，曲线上所有坐标
function TURING.BezierCurve()
end
--- 获取开发者联系方式
function TURING.Developer()
end
--- 两图片是否相似
--- ret = TURING.DiffImage(imagePath1, imagePath2, Similar, colourCast)
--- imagePath1：字符串型，图片1路径
--- imagePath2：字符串型，图片2路径
--- Similar：整小数型，点数相似百分比
--- colourCast：字符串型，颜色相似偏色值
--- ret：布尔型，true相似，false不相似
function TURING.DiffImage()
end
--- 【存储】将内部的各种模式的图像数据进行备份（最终为备份数据）
--- TURING.Draw_Backups(index)
--- index：整数型，可选，编号（0~9）
function TURING.Draw_Backups()
end
--- 【还原】恢复内部的备份图像数据为其他模式的数据
--- TURING.Draw_Recover(index)
--- index：整数型，可选，编号（0~9）
function TURING.Draw_Recover()
end
--- (针对彩色图像处理)二值化滤镜
--- TURING.Filter_Binaryzation(value)
--- value：字符串型，色阶阈值（范围：0-255）
--- 或者：指定颜色串BBGGRR-BDGDRD（"0000FF-000080|00FFFF"）(反色效果："@BBGGRR-DBDGDR")
function TURING.Filter_Binaryzation()
end
--- (针对彩色图像处理)通道图层滤镜
--- TURING.Filter_ChannelLayer(Model)
--- model：整数型，RGB三原色（默认0:R,1:G,2:B,3:RG,4:GB,5:RB)
function TURING.Filter_ChannelLayer()
end
--- (通用图像处理)指定颜色保留或者涂黑滤镜
--- TURING.Filter_ColorChoose(value, bColor)
--- value：字符串型，指定颜色串BBGGRR-BDGDRD（"0000FF-000080|00FFFF"）(反选效果："@BBGGRR-DBDGDR")
--- bColor：字符串型，设置背景色（默认BBGGRR黑色"000000"）
function TURING.Filter_ColorChoose()
end
--- (针对黑白图像处理)清除杂点滤镜
--- TURING.Filter_Despeckle(Value)
--- Value：整数型，点数阈值（范围：1~8）
function TURING.Filter_Despeckle()
end
--- (针对黑白图像处理)腐蚀膨胀滤镜
--- TURING.Filter_DilationErosion(Model)
--- Model：整数型，模式（默认：1膨胀，0腐蚀）
function TURING.Filter_DilationErosion()
end
--- (针对黑白图像处理)提取色块滤镜
--- TURING.Filter_ExtractBlock(width, height, num)
--- width：整数型，色块宽度范围
--- height：整数型，色块高度范围
--- num：整数型，符合点数量
function TURING.Filter_ExtractBlock()
end
--- (针对彩色图像处理)灰度滤镜
--- TURING.Filter_Gray(Model)
--- Model：整数型，模式（默认：0 Psychology，1 Photoshop，2 Photoshop去色）
function TURING.Filter_Gray()
end
--- (针对黑白图像处理)颠倒颜色滤镜
--- TURING.Filter_InverseColor(Model)
--- Model：整数型，模式（默认：1白多变黑，0黑多变白，2单纯反色）
function TURING.Filter_InverseColor()
end
--- (通用图像处理)按一定方向镜像图像
--- TURING.Filter_Mirror(Direction)
--- Direction：整数型，镜像的方向（默认0水平镜像，1垂直镜像，2水平和垂直同时镜像）
function TURING.Filter_Mirror()
end
--- (通用图像处理)电影底片效果（反向颜色：RGB三种颜色分别取255的差值）
--- TURING.Filter_Negative()
function TURING.Filter_Negative()
end
--- (针对黑白图像处理)获取轮廓滤镜
--- TURING.Filter_Outline(value, Interval, r, g, b)
--- value：整数型，阈值，小于两颜色之间的差值
--- Interval：整数型，可选，间距，默认1
--- r：整数型，可选，R分量（填充背景色）
--- g：整数型，可选，G分量（填充背景色）
--- b：整数型，可选，B分量（填充背景色）
function TURING.Filter_Outline()
end
--- (针对彩色图像处理)色调分离滤镜
--- TURING.Filter_Posterization(value)
--- value：整数型，色阶阈值（范围：2~255）
function TURING.Filter_Posterization()
end
--- (通用图像处理)按一定角度旋转图像
--- TURING.Filter_Rotate(angle)
--- angle：整数型，旋转的正负度数值，正数顺时针（范围：0~360）
function TURING.Filter_Rotate()
end
function TURING.Filter_Tailor()
end
function TURING.Filter_Zoom()
end
--- (通用图像处理)缩放自适应滤镜(内部最大缩放为2倍)
--- TURING.Filter_ZoomAdaptive(width, height)
--- width：整数型，自适应宽度数值(内部最大缩放为2倍)
--- height：整数型，自适应高度数值(内部最大缩放为2倍)
function TURING.Filter_ZoomAdaptive()
end
--- (通用图像处理)等比放大滤镜
--- TURING.Filter_ZoomIn(xTimes, yTimes)
--- xTimes：整数型，宽度倍数，2放大2倍（范围：1~2）
--- yTimes：整数型，高度倍数，1不进行放大（范围：1~2）
function TURING.Filter_ZoomIn()
end
--- (通用图像处理)缩放归一化滤镜
--- TURING.Filter_ZoomOne(width, height, model)
--- width：整数型，宽度数值（单位像素）
--- height：整数型，高度数值（单位像素）
--- model：整数型，可选，模式（默认指定大小：0，百分比：1）
function TURING.Filter_ZoomOne()
end
--- (通用图像处理)等比缩小滤镜
--- TURING.Filter_ZoomOut(xTimes, yTimes)
--- xTimes：整数型，宽度倍数，2缩小2倍（范围：1~8）
--- yTimes：整数型，高度倍数，1不进行缩小（范围：1~8）
function TURING.Filter_ZoomOut()
end
--- 得到屏幕指定位置点的颜色(模式2：内部图像数据)
--- color = TURING.GetPixelColor(x, y, model)
--- x：整数型，屏幕X坐标
--- y：整数型，屏幕Y坐标
--- model：整数型，取色模式（默认0：普通取色，2：取内部图像数据颜色）
--- color：数组型，16进制颜色值
function TURING.GetPixelColor()
end
--- 获取内部图像数据上的圆形边上一个点颜色
--- [color,x,y] = TURING.GetRoundPointColor(x, y, Radius, Degree)
--- x：整数型，圆心X坐标
--- y：整数型，圆心Y坐标
--- Radius：整数型，可选，默认0，圆的半径
--- Degree：整数型，可选，默认0，旋转度数（顺时针，指北0度！）
--- [color,x,y]：数组型，16进制颜色值,x坐标,y坐标
function TURING.GetRoundPointColor()
end
--- 连通区域字符切割
--- CharNum = TURING.Incise_ConnectedArea(Through, Width, Height)
--- Through：布尔型型，可选，是否八向穿透（默认否：False）
--- Width：字符串型，可选，保留字符切割宽度范围（例："50-150"）。
--- Height：字符串型，可选，保留字符切割高度范围（例："30-100"）。
--- CharNum：整数型，字符切割数量
function TURING.Incise_ConnectedArea()
end
--- 固定位置字符切割
--- CharNum = TURING.Incise_FixedLocation(qx, qy, width, height, Column, cNum, Row, rNum)
--- qx：整数型，起点X坐标
--- qy：整数型，起点Y坐标
--- width：整数型，字符宽度
--- height：整数型，字符高度
--- Column：整数型，列字间距, 默认0
--- cNum：整数型，列字符数量, 默认1
--- Row：整数型，行字间距, 默认0
--- rNum：整数型，行字符数量, 默认1
--- CharNum：整数型，字符切割数量
function TURING.Incise_FixedLocation()
end
--- 获取切割字符的数据结构信息
--- CharData = TURING.Incise_GetCharData()
--- CharData：表型，字符切割数据信息，格式：左,上,宽,高,点阵）
function TURING.Incise_GetCharData()
end
--- 可以选取指定需要切割的字符图像颜色（全局属性设置功能）
--- TURING.Incise_PickColor(colorname)
--- colorname：字符串型，16进制颜色值（如："0000FF"）
function TURING.Incise_PickColor()
end
--- 对切割的字符像素数据进行显示查看
--- TURING.Incise_Preview(index)
--- index：整数型，切割字符索引号
function TURING.Incise_Preview()
end
--- 随机方位字符切割
--- CharNum = TURING.Incise_RandomOrientation(through, Width, Height)
--- through：整数型，可选，穿透点数（默认0，指定点数：为大于点数时能够穿透切割）
--- Width：字符串型，可选，保留字符切割宽度范围（例："50-150"）。
--- Height：字符串型，可选，保留字符切割高度范围（例："30-100"）。
--- CharNum：整数型，字符切割数量
function TURING.Incise_RandomOrientation()
end
--- 范围投影字符切割
--- CharNum = TURING.Incise_ScopeAisle(Row, Column, Width, Height)
--- Row：整数型，行间隙（横向，最小值）
--- Column：整数型，列间隙（纵向，最小值）
--- Width：字符串型，可选，保留字符切割宽度范围（例："50-150"）。
--- Height：字符串型，可选，保留字符切割高度范围（例："30-100"）。
--- CharNum：整数型，字符切割数量
function TURING.Incise_ScopeAisle()
end
function TURING.Lib_BINtoHEX()
end
--- 加载识别字库文件数据
--- num = TURING.Lib_Load(LibPath, iText)
--- LibPath：字符串型，识别字库文件路径
--- iText：字符串型，可选，指定字库中的文字（类似白名单）
--- num：整数型，字库的数量
function TURING.Lib_Load()
end
function TURING.Lib_LoadBase64()
end
--- 加载识别字库数组数据_扩展
--- num = TURING.Lib_LoadEx(LibData, iText)
--- LibData：数组型，识别字库数组!!!
--- iText：字符串型，可选，指定字库中的文字（类似白名单）
--- num：整数型，字库的数量
function TURING.Lib_LoadEx()
end
function TURING.Lib_LoadExC()
end
function TURING.Lib_LoadExS()
end
--- 获取图像切割的字符点阵库内容
--- lattice = TURING.Lib_OneCharData(index)
--- index：整数型，切割字符索引号
--- lattice：字符串型，字符点阵（格式：字符宽,高|二进制字符串点阵）
function TURING.Lib_OneCharData()
end
--- 切割字符存储为识别字库
--- TURING.Lib_Save(text, lattice, LibPath)
--- text：字符串型，字符点阵对应的识别文字
--- lattice：字符串型，字符点阵（格式：字符宽,高|二进制字符串点阵）
--- LibPath：字符串型，识别字库文件路径
function TURING.Lib_Save()
end
function TURING.Math_BINtoBASE64()
end
function TURING.Math_BINtoHEX()
end
function TURING.Math_Base64toBIN()
end
function TURING.Math_HEXtoBIN()
end
--- 进行图像文字识别
--- text = TURING.OCR(Similar, Mode, Interval)
--- Similar：整数型，点数匹配相似度（范围0~100，默认0匹配最高的相似）
--- Mode：整数型，设置返回结果内容，格式：默认0:识别文字，1:识别文字|第1个字x坐标,y坐标|…，2:第1个文字,x坐标,y坐标…，3:第1个文字,x坐标,y坐标,相似度…
--- Interval：整数型，可选，字符之间的间隔（默认0），Mode为2时才生效
--- text：字符串型，识别得到的文字内容
function TURING.OCR()
end
function TURING.OCR_AbsCoordinates()
end
function TURING.OCR_AbsCoords()
end
--- 进行图像文字识别（精简版：图灵识别） 
--- text = TURING.OCR_TURING(Model)
--- Model：字典表型，识别参数模型(模型：{来源, 滤镜, 切割, 字库, 识别})
--- text：字符串型，识别得到的文字内容
function TURING.OCR_TURING()
end
--- 获取指定路径图片文件的图像像素数据
--- TURING.Pixel_FromPicture(ImagePath)
--- ImagePath：字符串型，图片文件的路径(支持：24位bmp格式/png格式)
function TURING.Pixel_FromPicture()
end
--- 获取屏幕指定范围的图像像素数据
--- TURING.Pixel_FromScreen(left, top, right, bottom)
--- left：整数型，屏幕左上角X坐标
--- top：整数型，屏幕左上角Y坐标
--- right：整数型，屏幕右下角X坐标
--- bottom：整数型，屏幕右下角Y坐标
function TURING.Pixel_FromScreen()
end
--- 对获取的图像像素数据进行显示查看（去手机上看！！！）
--- TURING.Pixel_Preview()
function TURING.Pixel_Preview()
end
--- 对切割的字符图像像素数据进行设置
--- TURING.Pixel_SetImageDataCut(index)
--- index：整数型，切割图像索引号
function TURING.Pixel_SetImageDataCut()
end
--- 将内部的图像数据保存为.bmp图片文件
--- TURING.SaveImageData(ImagePath)
--- ImagePath：字符串型，保存图片文件的路径（支持:24位bmp格式/png格式）
function TURING.SaveImageData()
end
function TURING.Time_DateToStamp()
end
function TURING.Time_StampToDate()
end
--- 当前插件版本号
function TURING.Version()
end
--- 指定的坐标进行坐标系的旋转
--- {newX,newY} = TURING.xyRotate(qx, qy, sWidth, sHeight, degree)
--- qx：整数型，x坐标
--- qy：整数型，y坐标
--- sWidth：整数型，可选，屏幕宽度（默认0）
--- sHeight：整数型，可选，屏幕高度（默认0）
--- degree：整数型，可选，旋转角度（默认270，支持：0,90,180,270,-90）
--- {newX,newY}：表型，新的坐标
function TURING.xyRotate()
end
function TURING.二进制转六十四进制()
end
function TURING.二进制转十六进制()
end
function TURING.六十四进制转二进制()
end
--- ●专注图色文字识别
--- ●全彩共有十三章节
--- ●图文并茂原理易懂
--- ●多门编程语言源码
--- VB6、按键精灵（含手机版）、VS2015（C/C++）、Python、UiBot、易语言、TC等
--- ●三步识别入门基础
--- 颜色识别、图片识别、形状识别
--- ●带十三套图像滤镜
--- 彩色图像滤镜：二值化、灰度、色调分离
--- 黑白图像滤镜：清除杂点、去掉直线、获取轮廓、提取色块、倾斜矫正、旋转纠正、颠倒颜色、膨胀腐蚀
--- 图像通用滤镜：等比缩放、缩放归一化
--- ●五种字符切割技术
--- 固定位置、随机方位、连通区域、范围投影、颜色分层
--- ●十个实战演练范例
--- 文字类识别：标准数字、重叠数字、波浪数字、错位文字、中文选题
--- 图像类识别：与众不同、面朝方向、清晰图像
--- 图形类识别：箭头朝向、寻找圆心
--- ●三篇识别分析理论
--- 扭曲变形、旋转方向、滑块拼图
function TURING.关于()
end
--- 对切割的字符像素数据进行显示查看
--- TURING.Incise_Preview(index)
--- index：整数型，切割字符索引号
function TURING.切割_像素数据预览()
end
--- 固定位置字符切割
--- CharNum = TURING.Incise_FixedLocation(qx, qy, width, height, Column, cNum, Row, rNum)
--- qx：整数型，起点X坐标
--- qy：整数型，起点Y坐标
--- width：整数型，字符宽度
--- height：整数型，字符高度
--- Column：整数型，列字间距, 默认0
--- cNum：整数型，列字符数量, 默认1
--- Row：整数型，行字间距, 默认0
--- rNum：整数型，行字符数量, 默认1
--- CharNum：整数型，字符切割数量
function TURING.切割_固定位置切割()
end
--- 范围投影字符切割
--- CharNum = TURING.Incise_ScopeAisle(Row, Column, Width, Height)
--- Row：整数型，行间隙（横向，最小值）
--- Column：整数型，列间隙（纵向，最小值）
--- Width：字符串型，可选，保留字符切割宽度范围（例："50-150"）。
--- Height：字符串型，可选，保留字符切割高度范围（例："30-100"）。
--- CharNum：整数型，字符切割数量
function TURING.切割_范围投影切割()
end
--- 获取切割字符的数据结构信息
--- CharData = TURING.Incise_GetCharData()
--- CharData：表型，字符切割数据信息，格式：左,上,宽,高,点阵）
function TURING.切割_获取切割字符数据()
end
--- 连通区域字符切割
--- CharNum = TURING.Incise_ConnectedArea(Through, Width, Height)
--- Through：布尔型型，可选，是否八向穿透（默认否：False）
--- Width：字符串型，可选，保留字符切割宽度范围（例："50-150"）。
--- Height：字符串型，可选，保留字符切割高度范围（例："30-100"）。
--- CharNum：整数型，字符切割数量
function TURING.切割_连通区域切割()
end
--- 可以选取指定需要切割的字符图像颜色（全局属性设置功能）
--- TURING.Incise_PickColor(colorname)
--- colorname：字符串型，16进制颜色值（如："0000FF"）
function TURING.切割_选取指定字符颜色()
end
--- 随机方位字符切割
--- CharNum = TURING.Incise_RandomOrientation(through, Width, Height)
--- through：整数型，可选，穿透点数（默认0，指定点数：为大于点数时能够穿透切割）
--- Width：字符串型，可选，保留字符切割宽度范围（例："50-150"）。
--- Height：字符串型，可选，保留字符切割高度范围（例："30-100"）。
--- CharNum：整数型，字符切割数量
function TURING.切割_随机方位切割()
end
function TURING.十六进制转二进制()
end
--- 进行图像文字识别（精简版：图灵识别） 
--- text = TURING.OCR_TURING(Model)
--- Model：字典表型，识别参数模型(模型：{来源, 滤镜, 切割, 字库, 识别})
--- text：字符串型，识别得到的文字内容
function TURING.图灵识别()
end
--- 两图片是否相似
--- ret = TURING.DiffImage(imagePath1, imagePath2, Similar, colourCast)
--- imagePath1：字符串型，图片1路径
--- imagePath2：字符串型，图片2路径
--- Similar：整小数型，点数相似百分比
--- colourCast：字符串型，颜色相似偏色值
--- ret：布尔型，true相似，false不相似
function TURING.图色_两图片是否相似()
end
--- 获取内部图像数据上的圆形边上一个点颜色
--- [color,x,y] = TURING.GetRoundPointColor(x, y, Radius, Degree)
--- x：整数型，圆心X坐标
--- y：整数型，圆心Y坐标
--- Radius：整数型，可选，默认0，圆的半径
--- Degree：整数型，可选，默认0，旋转度数（顺时针，指北0度！）
--- [color,x,y]：数组型，16进制颜色值,x坐标,y坐标
function TURING.图色_获取圆边点颜色()
end
--- 得到屏幕指定位置点的颜色(模式2：内部图像数据)
--- color = TURING.GetPixelColor(x, y, model)
--- x：整数型，屏幕X坐标
--- y：整数型，屏幕Y坐标
--- model：整数型，取色模式（默认0：普通取色，2：取内部图像数据颜色）
--- color：数组型，16进制颜色值
function TURING.图色_获取指定点颜色()
end
function TURING.字库_二进制转十六进制()
end
function TURING.字库_加载六十四进制识别字库()
end
function TURING.字库_加载十六进制识别字库_单个()
end
function TURING.字库_加载十六进制识别字库_扩展()
end
--- 加载识别字库文件数据
--- num = TURING.Lib_Load(LibPath, iText)
--- LibPath：字符串型，识别字库文件路径
--- iText：字符串型，可选，指定字库中的文字（类似白名单）
--- num：整数型，字库的数量
function TURING.字库_加载识别字库()
end
--- 加载识别字库数组数据_扩展
--- num = TURING.Lib_LoadEx(LibData, iText)
--- LibData：数组型，识别字库数组!!!
--- iText：字符串型，可选，指定字库中的文字（类似白名单）
--- num：整数型，字库的数量
function TURING.字库_加载识别字库_扩展()
end
--- 获取图像切割的字符点阵库内容
--- lattice = TURING.Lib_OneCharData(index)
--- index：整数型，切割字符索引号
--- lattice：字符串型，字符点阵（格式：字符宽,高|二进制字符串点阵）
function TURING.字库_字符切割数据()
end
--- 切割字符存储为识别字库
--- TURING.Lib_Save(text, lattice, LibPath)
--- text：字符串型，字符点阵对应的识别文字
--- lattice：字符串型，字符点阵（格式：字符宽,高|二进制字符串点阵）
--- LibPath：字符串型，识别字库文件路径
function TURING.字库_存储识别字库()
end
function TURING.日期转换时间戳()
end
function TURING.时间戳转换日期()
end
--- 对获取的图像像素数据进行显示查看（去手机上看！！！）
--- TURING.Pixel_Preview()
function TURING.来源_像素数据预览()
end
--- 将内部的图像数据保存为.bmp图片文件
--- TURING.SaveImageData(ImagePath)
--- ImagePath：字符串型，保存图片文件的路径（支持:24位bmp格式/png格式）
function TURING.来源_图像数据保存为图片()
end
--- 获取指定路径图片文件的图像像素数据
--- TURING.Pixel_FromPicture(ImagePath)
--- ImagePath：字符串型，图片文件的路径(支持：24位bmp格式/png格式)
function TURING.来源_获取图片像素()
end
--- 获取屏幕指定范围的图像像素数据
--- TURING.Pixel_FromScreen(left, top, right, bottom)
--- left：整数型，屏幕左上角X坐标
--- top：整数型，屏幕左上角Y坐标
--- right：整数型，屏幕右下角X坐标
--- bottom：整数型，屏幕右下角Y坐标
function TURING.来源_获取屏幕像素()
end
--- 对切割的字符图像像素数据进行设置
--- TURING.Pixel_SetImageDataCut(index)
--- index：整数型，切割图像索引号
function TURING.来源_配置切割图像数据()
end
--- (针对彩色图像处理)二值化滤镜
--- TURING.Filter_Binaryzation(value)
--- value：字符串型，色阶阈值（范围：0-255）
--- 或者：指定颜色串BBGGRR-BDGDRD（"0000FF-000080|00FFFF"）(反色效果："@BBGGRR-DBDGDR")
function TURING.滤镜_彩色_二值化()
end
--- (针对彩色图像处理)灰度滤镜
--- TURING.Filter_Gray(Model)
--- Model：整数型，模式（默认：0 Psychology，1 Photoshop，2 Photoshop去色）
function TURING.滤镜_彩色_灰度()
end
--- (针对彩色图像处理)色调分离滤镜
--- TURING.Filter_Posterization(value)
--- value：整数型，色阶阈值（范围：2~255）
function TURING.滤镜_彩色_色调分离()
end
--- (针对彩色图像处理)通道图层滤镜
--- TURING.Filter_ChannelLayer(Model)
--- model：整数型，RGB三原色（默认0:R,1:G,2:B,3:RG,4:GB,5:RB)
function TURING.滤镜_彩色_通道图层()
end
--- (通用图像处理)按一定角度旋转图像
--- TURING.Filter_Rotate(angle)
--- angle：整数型，旋转的正负度数值，正数顺时针（范围：0~360）
function TURING.滤镜_通用_固定旋转()
end
--- (通用图像处理)按一定方向镜像图像
--- TURING.Filter_Mirror(Direction)
--- Direction：整数型，镜像的方向（默认0水平镜像，1垂直镜像，2水平和垂直同时镜像）
function TURING.滤镜_通用_固定镜像()
end
function TURING.滤镜_通用_延伸裁剪()
end
--- (通用图像处理)电影底片效果（反向颜色：RGB三种颜色分别取255的差值）
--- TURING.Filter_Negative()
function TURING.滤镜_通用_电影底片()
end
--- (通用图像处理)等比放大滤镜
--- TURING.Filter_ZoomIn(xTimes, yTimes)
--- xTimes：整数型，宽度倍数，2放大2倍（范围：1~2）
--- yTimes：整数型，高度倍数，1不进行放大（范围：1~2）
function TURING.滤镜_通用_等比放大()
end
--- (通用图像处理)等比缩小滤镜
--- TURING.Filter_ZoomOut(xTimes, yTimes)
--- xTimes：整数型，宽度倍数，2缩小2倍（范围：1~8）
--- yTimes：整数型，高度倍数，1不进行缩小（范围：1~8）
function TURING.滤镜_通用_等比缩小()
end
function TURING.滤镜_通用_等比缩放()
end
--- (通用图像处理)缩放归一化滤镜
--- TURING.Filter_ZoomOne(width, height, model)
--- width：整数型，宽度数值（单位像素）
--- height：整数型，高度数值（单位像素）
--- model：整数型，可选，模式（默认指定大小：0，百分比：1）
function TURING.滤镜_通用_缩放归一化()
end
--- (通用图像处理)缩放自适应滤镜(内部最大缩放为2倍)
--- TURING.Filter_ZoomAdaptive(width, height)
--- width：整数型，自适应宽度数值(内部最大缩放为2倍)
--- height：整数型，自适应高度数值(内部最大缩放为2倍)
function TURING.滤镜_通用_缩放自适应()
end
--- (通用图像处理)指定颜色保留或者涂黑滤镜
--- TURING.Filter_ColorChoose(value, bColor)
--- value：字符串型，指定颜色串BBGGRR-BDGDRD（"0000FF-000080|00FFFF"）(反选效果："@BBGGRR-DBDGDR")
--- bColor：字符串型，设置背景色（默认BBGGRR黑色"000000"）
function TURING.滤镜_通用_颜色选留()
end
--- (针对黑白图像处理)提取色块滤镜
--- TURING.Filter_ExtractBlock(width, height, num)
--- width：整数型，色块宽度范围
--- height：整数型，色块高度范围
--- num：整数型，符合点数量
function TURING.滤镜_黑白_提取色块()
end
--- (针对黑白图像处理)清除杂点滤镜
--- TURING.Filter_Despeckle(Value)
--- Value：整数型，点数阈值（范围：1~8）
function TURING.滤镜_黑白_清除杂点()
end
--- (针对黑白图像处理)腐蚀膨胀滤镜
--- TURING.Filter_DilationErosion(Model)
--- Model：整数型，模式（默认：1膨胀，0腐蚀）
function TURING.滤镜_黑白_腐蚀膨胀()
end
--- (针对黑白图像处理)获取轮廓滤镜
--- TURING.Filter_Outline(value, Interval, r, g, b)
--- value：整数型，阈值，小于两颜色之间的差值
--- Interval：整数型，可选，间距，默认1
--- r：整数型，可选，R分量（填充背景色）
--- g：整数型，可选，G分量（填充背景色）
--- b：整数型，可选，B分量（填充背景色）
function TURING.滤镜_黑白_获取轮廓()
end
--- (针对黑白图像处理)颠倒颜色滤镜
--- TURING.Filter_InverseColor(Model)
--- Model：整数型，模式（默认：1白多变黑，0黑多变白，2单纯反色）
function TURING.滤镜_黑白_颠倒颜色()
end
--- 当前插件版本号
function TURING.版本号()
end
--- 指定的坐标进行坐标系的旋转
--- {newX,newY} = TURING.xyRotate(qx, qy, sWidth, sHeight, degree)
--- qx：整数型，x坐标
--- qy：整数型，y坐标
--- sWidth：整数型，可选，屏幕宽度（默认0）
--- sHeight：整数型，可选，屏幕高度（默认0）
--- degree：整数型，可选，旋转角度（默认270，支持：0,90,180,270,-90）
--- {newX,newY}：表型，新的坐标
function TURING.算法_坐标系旋转()
end
--- 角度计算，指北为0度
--- Angle = TURING.AngleCalc(aX, aY, bX, bY)
--- aX：整数型，圆心点x
--- aY：整数型，圆心点y
--- bX：整数型，移动点x
--- bY：整数型，移动点y
--- Angle：整数型，角度（指北为0度）
function TURING.算法_角度计算()
end
--- 【存储】将内部的各种模式的图像数据进行备份（最终为备份数据）
--- TURING.Draw_Backups(index)
--- index：整数型，可选，编号（0~9）
function TURING.绘图_图像数据备份()
end
--- 【还原】恢复内部的备份图像数据为其他模式的数据
--- TURING.Draw_Recover(index)
--- index：整数型，可选，编号（0~9）
function TURING.绘图_图像数据恢复()
end
--- 获取开发者联系方式
function TURING.联系开发者()
end
--- 进行图像文字识别
--- text = TURING.OCR(Similar, Mode, Interval)
--- Similar：整数型，点数匹配相似度（范围0~100，默认0匹配最高的相似）
--- Mode：整数型，设置返回结果内容，格式：默认0:识别文字，1:识别文字|第1个字x坐标,y坐标|…，2:第1个文字,x坐标,y坐标…，3:第1个文字,x坐标,y坐标,相似度…
--- Interval：整数型，可选，字符之间的间隔（默认0），Mode为2时才生效
--- text：字符串型，识别得到的文字内容
function TURING.识别()
end
function TURING.识别_返回绝对坐标()
end
function TURING.识别返回绝对坐标()
end
--- 生成贝塞尔曲线轨迹数据
--- {offset} = TURING.BezierCurve(coordinates,stepping)
--- coordinates：字符串型，坐标节点
--- stepping：小数型，步进
--- {offset}：表型，曲线上所有坐标
function TURING.贝塞尔曲线轨迹()
end
