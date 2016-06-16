<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="amd.20160501215436.2" a="E"><vh>40323236-pelican 網誌</vh>
<v t="amd.20160501215558.1" a="E"><vh>@path ./../../../</vh>
<v t="amd.20160501215634.1" a="E"><vh>@path static</vh>
<v t="amd.20160501220009.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="amd.20160501220009.2"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="amd.20160501220029.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="amd.20160501220029.2"><vh>@button local pelican</vh></v>
</v>
<v t="amd.20160501215942.1" a="E"><vh>@path content/b/g7</vh>
<v t="leo.20160602120654.1"><vh>@edit 40323236-w15.md</vh></v>
</v>
</v>
</v>
</v>
<v t="amd.20160501215545.1" a="E"><vh>40323236-wsgi 繪圖程式</vh>
<v t="leo.20160519092446.1" a="E"><vh>@clean bg7_40323236_2.py</vh>
<v t="leo.20160519092609.1"><vh>bg7_40323236_2 declarations</vh></v>
<v t="leo.20160519092609.6"><vh>circle</vh></v>
<v t="leo.20160519092609.9"><vh>twocircle</vh></v>
<v t="leo.20160519092609.22"><vh>drawcircle</vh></v>
<v t="leo.20160519092609.23"><vh>drawcircle1</vh></v>
<v t="leo.20160519092609.10"><vh>eighteenthirty</vh></v>
<v t="leo.20160519092609.24"><vh>drawcircle2</vh></v>
<v t="leo.20160519092609.25"><vh>drawtwocircle</vh></v>
<v t="leo.20160519092609.26"><vh>draweithteenthirdy</vh></v>
<v t="leo.20160519092609.27"><vh>snap</vh></v>
<v t="leo.20160519092609.28"><vh>snap_link</vh></v>
<v t="leo.20160519092609.29"><vh>snap_gear</vh></v>
</v>
<v t="leo.20160505091608.1" a="E"><vh>@clean bg7_40323236.py</vh>
<v t="leo.20160505153243.1"><vh>bg7_40323236 declarations</vh></v>
<v t="leo.20160510112701.1"><vh>circle36</vh></v>
<v t="leo.20160505153243.3"><vh>circle35</vh></v>
<v t="leo.20160505153243.4"><vh>drawcircle36</vh></v>
<v t="leo.20160510112922.1"><vh>drawcircle35</vh></v>
<v t="leo.20160505153243.2"><vh>a</vh></v>
<v t="leo.20160505153243.5"><vh>task36_1</vh></v>
<v t="leo.20160505153243.6"><vh>task36_2</vh></v>
<v t="leo.20160505153243.7"><vh>task36_3</vh></v>
<v t="leo.20160526103117.1"><vh>gear</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="amd.20160501215436.2"></t>
<t tx="amd.20160501215545.1"></t>
<t tx="amd.20160501215558.1"></t>
<t tx="amd.20160501215634.1"></t>
<t tx="amd.20160501215942.1"></t>
<t tx="amd.20160501220009.1"></t>
<t tx="amd.20160501220009.2">@language python
import os
#os.system("pelican content -o ./ -s publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o blog -s publishconf.py")
g.es("admin pelican 執行完畢")


</t>
<t tx="amd.20160501220029.1"></t>
<t tx="amd.20160501220029.2">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o blog -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="leo.20160505091608.1">@language python
@tabwidth -4
@others
</t>
<t tx="leo.20160505153243.1"># 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template, make_response, request

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
bg7_40323236 = Blueprint('bg7_40323236', __name__, url_prefix='/bg7_40323236', template_folder='templates')
 
head_str = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 2D 鏈條繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
&lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&gt;&lt;/script&gt;
 
&lt;/head&gt;
&lt;body&gt;
 
&lt;script&gt;
window.onload=function(){
brython(1);
}
&lt;/script&gt;
 
&lt;canvas id="plotarea" width="800" height="800"&gt;&lt;/canvas&gt;
'''
 
tail_str = '''
&lt;/script&gt;

&lt;/body&gt;
&lt;/html&gt;
'''
 
chain_str = '''
&lt;script type="text/python"&gt;
from javascript import JSConstructor
from browser import alert
from browser import window
import math
 
cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")
 
cgo.setWorldCoords(-250, -250, 500, 500) 
 
# 畫軸線
cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
 
deg = math.pi/180  
 
# 將繪製鏈條輪廓的內容寫成 class 物件
class chain():
    # 輪廓的外型設為 class variable
    chamber = "M -6.8397, -1.4894 \
            A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
            A 40, 40, 0, 0, 1, 6.8397, -18.511 \
            A 7, 7, 0, 1, 0, -6.8397, -18.511 \
            A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
 
    def __init__(self, fillcolor="green", border=True, strokecolor= "tan", linewidth=2, scale=1):
        self.fillcolor = fillcolor
        self.border = border
        self.strokecolor = strokecolor
        self.linewidth = linewidth
        self.scale = scale
 
    # 利用鏈條起點與終點定義繪圖
    def basic(self, x1, y1, x2, y2):
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": self.fillcolor,
                "border": self.border,
                "strokeColor": self.strokecolor,
                "lineWidth": self.linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4*self.scale), "PATH")
        cmbr.appendPath(hole)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(math.atan2(y2-y1, x2-x1)/deg+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, self.scale, 0)
 
    # 利用鏈條起點與旋轉角度定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic_rot(self, x1, y1, rot, v=False):
        # 若 v 為 True 則為虛擬 chain, 不 render
        self.x1 = x1
        self.y1 = y1
        self.rot = rot
        self.v = v
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": self.fillcolor,
                "border": self.border,
                "strokeColor": self.strokecolor,
                "lineWidth": self.linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4*self.scale), "PATH")
        cmbr.appendPath(hole)
        # 根據旋轉角度, 計算 x2 與 y2
        x2 = x1 + 20*math.cos(rot*deg)*self.scale
        y2 = y1 + 20*math.sin(rot*deg)*self.scale
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(rot+90)
 
        # 放大 scale 倍
        if v == False:
            cgo.render(basic1, x1, y1, self.scale, 0)
 
        return x2, y2
'''
</t>
<t tx="leo.20160505153243.2"># 傳繪 A 函式內容

def a(x, y, scale=1, color="green"):
    outstring = '''
# 利用 chain class 建立案例, 對應到 mychain 變數
mychain = chain(scale='''+str(scale)+''', fillcolor="'''+str(color)+'''")
 
# 畫 A
# 左邊兩個垂直單元
x1, y1 = mychain.basic_rot('''+str(x)+","+str(y)+''', 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
# 左斜邊兩個單元
x3, y3 = mychain.basic_rot(x2, y2, 80)
x4, y4 = mychain.basic_rot(x3, y3, 71)
# 最上方水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜邊兩個單元
x6, y6 = mychain.basic_rot(x5, y5, -71)
x7, y7 = mychain.basic_rot(x6, y6, -80)
# 右邊兩個垂直單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
x9, y9 = mychain.basic_rot(x8, y8, -90)
# 中間兩個水平單元
x10, y10 = mychain.basic_rot(x8, y8, -180)
mychain.basic(x10, y10, x1, y1)
'''

    return outstring

def a2(a, b, scale=1, color="green"):
    outstring = '''
# 利用 chain class 建立案例, 對應到 mychain 變數
mychain = chain(scale='''+str(scale)+''', fillcolor="'''+str(color)+'''")
 
# 畫 A
# 左邊兩個垂直單元
x1, y1 = mychain.basic_rot('''+str(a)+","+str(b)+''', 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
# 左斜邊兩個單元
x3, y3 = mychain.basic_rot(x2, y2, 80)
x4, y4 = mychain.basic_rot(x3, y3, 71)
# 最上方水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜邊兩個單元
x6, y6 = mychain.basic_rot(x5, y5, -71)
x7, y7 = mychain.basic_rot(x6, y6, -80)
# 右邊兩個垂直單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
x9, y9 = mychain.basic_rot(x8, y8, -90)
# 中間兩個水平單元
x10, y10 = mychain.basic_rot(x8, y8, -180)
mychain.basic(x10, y10, x1, y1)
'''

    return outstring


@bg7_40323236.route('/a')
def draw_a():
    return head_str + chain_str + a(0, 0) + tail_str</t>
<t tx="leo.20160505153243.3">def circle35(x, y, degree,a,b,degree2):
    # 20 為鏈條輪廓之圓距
    # chain 所圍之圓圈半徑為 20/2/math.asin(degree*math.pi/180/2)
    # degree = math.asin(20/2/radius)*180/math.pi
    #degree = 10
    first_degree = 90 - degree
    repeat = 360 / degree
    sec_degree = 90 - degree2
    repeat2 = 360 / degree2
    outstring1 = '''
mychain = chain()
x1, y1 = mychain.basic_rot('''+str(x)+","+str(y)+", "+str(first_degree)+''')
'''
    outstring2 = '''
mychain = chain()
x1, y1 = mychain.basic_rot('''+str(a)+","+str(b)+", "+str(sec_degree)+''')
'''
    for i in range(2, int(repeat)+1):
        outstring1 += "x"+str(i)+", y"+str(i)+"=mychain.basic_rot(x"+str(i-1)+", y"+str(i-1)+", 90-"+str(i*degree)+") \n"
    for e in range(2, int(repeat2)+1):
        outstring2 += "x"+str(e)+", y"+str(e)+"=mychain.basic_rot(x"+str(e-1)+", y"+str(e-1)+", 90-"+str(e*degree2)+") \n"
            
    outstring = outstring1 + outstring2 
    
    return outstring
    </t>
<t tx="leo.20160505153243.4">@bg7_40323236.route('/circle36/&lt;degree&gt;', defaults={'x': 0, 'y': 0})
@bg7_40323236.route('/circle36/&lt;x&gt;/&lt;degree&gt;', defaults={'y': 0})
@bg7_40323236.route('/circle36/&lt;x&gt;/&lt;y&gt;/&lt;degree&gt;')

def drawcircle36(x, y, degree):
    return head_str + chain_str + circle36(int(x), int(y), int(degree)) + tail_str
    
#@bg7_40323236.route('/circle36/&lt;int:x&gt;/&lt;int:y&gt;/&lt;int:degree&gt;')



    


    
    </t>
<t tx="leo.20160505153243.5">@bg7_40323236.route('/task36_1')
def task36_1():
    outstring = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 2D 繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
&lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;script&gt;
window.onload=function(){
brython(1);
}
&lt;/script&gt;
&lt;canvas id="plotarea" width="800" height="800"&gt;&lt;/canvas&gt;
&lt;script type="text/python"&gt;
from javascript import JSConstructor
from browser import alert
from browser import window
import math
 
cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")
 
cgo.setWorldCoords(-250, -250, 500, 500) 
 
# 畫軸線
cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
 
deg = math.pi/180  

class chain():
    # 輪廓的外型設為成員變數
    chamber = "M -6.8397, -1.4894 \
            A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
            A 40, 40, 0, 0, 1, 6.8397, -18.511 \
            A 7, 7, 0, 1, 0, -6.8397, -18.511 \
            A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
 
    # 利用鏈條起點與終點定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic(self, x1, y1, x2, y2, color="green", border=True, linewidth=4, scale=1):
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
        self.color = color
        self.border = border
        self.linewidth = linewidth
        self.scale = scale
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": color,
                "border": border,
                "strokeColor": "tan",
                "lineWidth": linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4), "PATH")
        cmbr.appendPath(hole)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(math.atan2(y2-y1, x2-x1)/deg+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, scale, 0)
 
    # 利用鏈條起點與旋轉角度定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic_rot(self, x1, y1, rot, color="green", border=True, linewidth=4, scale=1):
        self.x1 = x1
        self.y1 = y1
        self.rot = rot
        self.color = color
        self.border = border
        self.linewidth = linewidth
        self.scale = scale
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": color,
                "border": border,
                "strokeColor": "tan",
                "lineWidth": linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4), "PATH")
        cmbr.appendPath(hole)
        # 根據旋轉角度, 計算 x2 與 y2
        x2 = x1 + 20*math.cos(rot*deg)
        y2 = y1 + 20*math.sin(rot*deg)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(rot+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, scale, 0)
 
        return x2, y2
 
# 利用 chain class 建立案例, 對應到 mychain 變數
mychain = chain()
 
# 畫 A
# 左邊兩個垂直單元
x1, y1 = mychain.basic_rot(0, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
# 左斜邊兩個單元
x3, y3 = mychain.basic_rot(x2, y2, 80)
x4, y4 = mychain.basic_rot(x3, y3, 71)
# 最上方水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜邊兩個單元
x6, y6 = mychain.basic_rot(x5, y5, -71)
x7, y7 = mychain.basic_rot(x6, y6, -80)
# 右邊兩個垂直單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
x9, y9 = mychain.basic_rot(x8, y8, -90)
# 中間兩個水平單元
x10, y10 = mychain.basic_rot(x8, y8, -180)
mychain.basic(x10, y10, x1, y1, color="green")


cgo.setWorldCoords(-315, -250, 500, 500) 
# 畫 A
# 左邊兩個垂直單元
x1, y1 = mychain.basic_rot(0, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
# 左斜邊兩個單元
x3, y3 = mychain.basic_rot(x2, y2, 80)
x4, y4 = mychain.basic_rot(x3, y3, 71)
# 最上方水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜邊兩個單元
x6, y6 = mychain.basic_rot(x5, y5, -71)
x7, y7 = mychain.basic_rot(x6, y6, -80)
# 右邊兩個垂直單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
x9, y9 = mychain.basic_rot(x8, y8, -90)
# 中間兩個水平單元
x10, y10 = mychain.basic_rot(x8, y8, -180)
mychain.basic(x10, y10, x1, y1, color="blue")

cgo.setWorldCoords(-385, -250, 500, 500) 
# 畫 A
# 左邊兩個垂直單元
x1, y1 = mychain.basic_rot(0, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
# 左斜邊兩個單元
x3, y3 = mychain.basic_rot(x2, y2, 80)
x4, y4 = mychain.basic_rot(x3, y3, 71)
# 最上方水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜邊兩個單元
x6, y6 = mychain.basic_rot(x5, y5, -71)
x7, y7 = mychain.basic_rot(x6, y6, -80)
# 右邊兩個垂直單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
x9, y9 = mychain.basic_rot(x8, y8, -90)
# 中間兩個水平單元
x10, y10 = mychain.basic_rot(x8, y8, -180)
mychain.basic(x10, y10, x1, y1, color="red")

cgo.setWorldCoords(-445, -250, 500, 500) 
# 畫 A
# 左邊兩個垂直單元
x1, y1 = mychain.basic_rot(0, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
# 左斜邊兩個單元
x3, y3 = mychain.basic_rot(x2, y2, 80)
x4, y4 = mychain.basic_rot(x3, y3, 71)
# 最上方水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜邊兩個單元
x6, y6 = mychain.basic_rot(x5, y5, -71)
x7, y7 = mychain.basic_rot(x6, y6, -80)
# 右邊兩個垂直單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
x9, y9 = mychain.basic_rot(x8, y8, -90)
# 中間兩個水平單元
x10, y10 = mychain.basic_rot(x8, y8, -180)
mychain.basic(x10, y10, x1, y1, color="green")
&lt;script type='text/javascript'&gt;
var onWebChat={ar:[], set: function(a,b){if (typeof onWebChat_==='undefined'){this.ar.
push([a,b]);}else{onWebChat_.set(a,b);}},get:function(a){return(onWebChat_.get(a));},w
:(function(){ var ga=document.createElement('script'); ga.type = 'text/javascript';ga.
async=1;ga.src='//www.onwebchat.com/clientchat/795d781612868f02aa4bb0552c0655a5/1/1';
var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(ga,s);})()}
&lt;/script&gt;
&lt;/body&gt;&lt;/html&gt;
'''
    return outstring
    </t>
<t tx="leo.20160505153243.6">@bg7_40323236.route('/task36_2')
def task36_2():
    outstring = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 2D 繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
&lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;script&gt;
window.onload=function(){
brython(1);
}
&lt;/script&gt;
&lt;canvas id="plotarea" width="800" height="800"&gt;&lt;/canvas&gt;
&lt;script type="text/python"&gt;
from javascript import JSConstructor
from browser import alert
from browser import window
import math
 
cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")
 
cgo.setWorldCoords(-40, -250, 500, 500) 
 
# 畫軸線
cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
 
deg = math.pi/180  

class chain():
    # 輪廓的外型設為成員變數
    chamber = "M -6.8397, -1.4894 \
            A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
            A 40, 40, 0, 0, 1, 6.8397, -18.511 \
            A 7, 7, 0, 1, 0, -6.8397, -18.511 \
            A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
 
    # 利用鏈條起點與終點定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic(self, x1, y1, x2, y2, color="green", border=True, linewidth=4, scale=1):
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
        self.color = color
        self.border = border
        self.linewidth = linewidth
        self.scale = scale
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": color,
                "border": border,
                "strokeColor": "tan",
                "lineWidth": linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4), "PATH")
        cmbr.appendPath(hole)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(math.atan2(y2-y1, x2-x1)/deg+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, scale, 0)
 
    # 利用鏈條起點與旋轉角度定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic_rot(self, x1, y1, rot, color="green", border=True, linewidth=4, scale=1):
        self.x1 = x1
        self.y1 = y1
        self.rot = rot
        self.color = color
        self.border = border
        self.linewidth = linewidth
        self.scale = scale
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": color,
                "border": border,
                "strokeColor": "tan",
                "lineWidth": linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4), "PATH")
        cmbr.appendPath(hole)
        # 根據旋轉角度, 計算 x2 與 y2
        x2 = x1 + 20*math.cos(rot*deg)
        y2 = y1 + 20*math.sin(rot*deg)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(rot+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, scale, 0)
 
        return x2, y2
 
# 利用 chain class 建立案例, 對應到 mychain 變數
mychain = chain()
 
# 畫 B
# 左邊四個垂直單元
x1, y1 = mychain.basic_rot(0, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
x3, y3 = mychain.basic_rot(x2, y2, 90)
x4, y4 = mychain.basic_rot(x3, y3, 90)
# 上方一個水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜 -30 度
x6, y6 = mychain.basic_rot(x5, y5, -30)
# 右上垂直向下單元
x7, y7 = mychain.basic_rot(x6, y6, -90)
# 右斜 240 度
x8, y8 = mychain.basic_rot(x7, y7, 210)
# 中間水平
mychain.basic(x8, y8, x2, y2)
# 右下斜 -30 度
x10, y10 = mychain.basic_rot(x8, y8, -30)
# 右下垂直向下單元
x11, y11 = mychain.basic_rot(x10, y10, -90)
# 右下斜 240 度
x12, y12 = mychain.basic_rot(x11, y11, 210)
# 水平接回起點
mychain.basic(x12,y12, 0, 0, color="green")

cgo.setWorldCoords(-107.5, -250, 500, 500) 
# 畫 A
# 左邊兩個垂直單元
x1, y1 = mychain.basic_rot(0, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
# 左斜邊兩個單元
x3, y3 = mychain.basic_rot(x2, y2, 80)
x4, y4 = mychain.basic_rot(x3, y3, 71)
# 最上方水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜邊兩個單元
x6, y6 = mychain.basic_rot(x5, y5, -71)
x7, y7 = mychain.basic_rot(x6, y6, -80)
# 右邊兩個垂直單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
x9, y9 = mychain.basic_rot(x8, y8, -90)
# 中間兩個水平單元
x10, y10 = mychain.basic_rot(x8, y8, -180)
mychain.basic(x10, y10, x1, y1, color="green")

cgo.setWorldCoords(-50, -250, 500, 500) 
# 畫 C
# 上半部
# 左邊中間垂直起點, 圓心位於線段中央, y 方向再向上平移兩個鏈條圓心距單位
x1, y1 = mychain.basic_rot(0+65*2, -10+10+20*math.sin(80*deg)+20*math.sin(30*deg), 90)
# 上方轉 80 度
x2, y2 = mychain.basic_rot(x1, y1, 80)
# 上方轉 30 度
x3, y3 = mychain.basic_rot(x2, y2, 30)
# 上方水平
x4, y4 = mychain.basic_rot(x3, y3, 0)
# 下半部, 從起點開始 -80 度
x5, y5 = mychain.basic_rot(0+65*2, -10+10+20*math.sin(80*deg)+20*math.sin(30*deg), -80)
# 下斜 -30 度
x6, y6 = mychain.basic_rot(x5, y5, -30)
# 下方水平單元
x7, y7 = mychain.basic_rot(x6, y6, -0, color="green")

cgo.setWorldCoords(-55, -250, 500, 500) 
# 畫 D
# 左邊四個垂直單元
x1, y1 = mychain.basic_rot(0+65*3, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
x3, y3 = mychain.basic_rot(x2, y2, 90)
x4, y4 = mychain.basic_rot(x3, y3, 90)
# 上方一個水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜 -40 度
x6, y6 = mychain.basic_rot(x5, y5, -40)
x7, y7 = mychain.basic_rot(x6, y6, -60)
# 右中垂直向下單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
# -120 度
x9, y9 = mychain.basic_rot(x8, y8, -120)
# -140
x10, y10 = mychain.basic_rot(x9, y9, -140)
# 水平接回原點
mychain.basic(x10, y10, 0+65*3, 0, color="green")

&lt;script type='text/javascript'&gt;
var onWebChat={ar:[], set: function(a,b){if (typeof onWebChat_==='undefined'){this.ar.
push([a,b]);}else{onWebChat_.set(a,b);}},get:function(a){return(onWebChat_.get(a));},w
:(function(){ var ga=document.createElement('script'); ga.type = 'text/javascript';ga.
async=1;ga.src='//www.onwebchat.com/clientchat/795d781612868f02aa4bb0552c0655a5/1/1';
var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(ga,s);})()}
&lt;/script&gt;
&lt;/body&gt;&lt;/html&gt;
'''
    return outstring

</t>
<t tx="leo.20160505153243.7">@bg7_40323236.route('/task36_3')
def task36_3():
    outstring = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 2D 繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
&lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;script&gt;
window.onload=function(){
brython(1);
}
&lt;/script&gt;
&lt;canvas id="plotarea" width="800" height="800"&gt;&lt;/canvas&gt;
&lt;script type="text/python"&gt;
from javascript import JSConstructor
from browser import alert
from browser import window
import math
 
cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")
 
cgo.setWorldCoords(-250, -250, 500, 500) 
 
# 畫軸線
cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
 
deg = math.pi/180  
 
# 將繪製鏈條輪廓的內容寫成 class 物件
class chain():
    # 輪廓的外型設為成員變數
    chamber = "M -6.8397, -1.4894 \
            A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
            A 40, 40, 0, 0, 1, 6.8397, -18.511 \
            A 7, 7, 0, 1, 0, -6.8397, -18.511 \
            A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
 
    # 利用鏈條起點與終點定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic(self, x1, y1, x2, y2, color="green", border=True, linewidth=4, scale=1):
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
        self.color = color
        self.border = border
        self.linewidth = linewidth
        self.scale = scale
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": color,
                "border": border,
                "strokeColor": "tan",
                "lineWidth": linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4), "PATH")
        cmbr.appendPath(hole)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(math.atan2(y2-y1, x2-x1)/deg+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, scale, 0)
 
    # 利用鏈條起點與旋轉角度定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic_rot(self, x1, y1, rot, color="green", border=True, linewidth=4, scale=1):
        self.x1 = x1
        self.y1 = y1
        self.rot = rot
        self.color = color
        self.border = border
        self.linewidth = linewidth
        self.scale = scale
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": color,
                "border": border,
                "strokeColor": "tan",
                "lineWidth": linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4), "PATH")
        cmbr.appendPath(hole)
        # 根據旋轉角度, 計算 x2 與 y2
        x2 = x1 + 20*math.cos(rot*deg)
        y2 = y1 + 20*math.sin(rot*deg)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(rot+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, scale, 0)
 
        return x2, y2
 
# 利用 chain class 建立案例, 對應到 mychain 變數
mychain = chain()
 
# 畫 B
# 左邊四個垂直單元
x1, y1 = mychain.basic_rot(0, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
x3, y3 = mychain.basic_rot(x2, y2, 90)
x4, y4 = mychain.basic_rot(x3, y3, 90)
# 上方一個水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜 -30 度
x6, y6 = mychain.basic_rot(x5, y5, -30)
# 右上垂直向下單元
x7, y7 = mychain.basic_rot(x6, y6, -90)
# 右斜 240 度
x8, y8 = mychain.basic_rot(x7, y7, 210)
# 中間水平
mychain.basic(x8, y8, x2, y2)
# 右下斜 -30 度
x10, y10 = mychain.basic_rot(x8, y8, -30)
# 右下垂直向下單元
x11, y11 = mychain.basic_rot(x10, y10, -90)
# 右下斜 240 度
x12, y12 = mychain.basic_rot(x11, y11, 210)
# 水平接回起點
mychain.basic(x12,y12, 0, 0, color="green")


cgo.setWorldCoords(-247.5, -350, 500, 500) 
# 畫 A
# 左邊兩個垂直單元
x1, y1 = mychain.basic_rot(0, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
# 左斜邊兩個單元
x3, y3 = mychain.basic_rot(x2, y2, 80)
x4, y4 = mychain.basic_rot(x3, y3, 71)
# 最上方水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜邊兩個單元
x6, y6 = mychain.basic_rot(x5, y5, -71)
x7, y7 = mychain.basic_rot(x6, y6, -80)
# 右邊兩個垂直單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
x9, y9 = mychain.basic_rot(x8, y8, -90)
# 中間兩個水平單元
x10, y10 = mychain.basic_rot(x8, y8, -180)
mychain.basic(x10, y10, x1, y1, color="green")

cgo.setWorldCoords(-55, -50, 500, 500) 
# 畫 D
# 左邊四個垂直單元
x1, y1 = mychain.basic_rot(0+65*3, 0, 90)
x2, y2 = mychain.basic_rot(x1, y1, 90)
x3, y3 = mychain.basic_rot(x2, y2, 90)
x4, y4 = mychain.basic_rot(x3, y3, 90)
# 上方一個水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0)
# 右斜 -40 度
x6, y6 = mychain.basic_rot(x5, y5, -40)
x7, y7 = mychain.basic_rot(x6, y6, -60)
# 右中垂直向下單元
x8, y8 = mychain.basic_rot(x7, y7, -90)
# -120 度
x9, y9 = mychain.basic_rot(x8, y8, -120)
# -140
x10, y10 = mychain.basic_rot(x9, y9, -140)
# 水平接回原點
mychain.basic(x10, y10, 0+65*3, 0, color="green")

cgo.setWorldCoords(-120, -150, 500, 500) 
# 畫 C
# 上半部
# 左邊中間垂直起點, 圓心位於線段中央, y 方向再向上平移兩個鏈條圓心距單位
x1, y1 = mychain.basic_rot(0+65*2, -10+10+20*math.sin(80*deg)+20*math.sin(30*deg), 90)
# 上方轉 80 度
x2, y2 = mychain.basic_rot(x1, y1, 80)
# 上方轉 30 度
x3, y3 = mychain.basic_rot(x2, y2, 30)
# 上方水平
x4, y4 = mychain.basic_rot(x3, y3, 0)
# 下半部, 從起點開始 -80 度
x5, y5 = mychain.basic_rot(0+65*2, -10+10+20*math.sin(80*deg)+20*math.sin(30*deg), -80)
# 下斜 -30 度
x6, y6 = mychain.basic_rot(x5, y5, -30)
# 下方水平單元
x7, y7 = mychain.basic_rot(x6, y6, -0, color="green")
&lt;/script&gt;


&lt;script type='text/javascript'&gt;
var onWebChat={ar:[], set: function(a,b){if (typeof onWebChat_==='undefined'){this.ar.
push([a,b]);}else{onWebChat_.set(a,b);}},get:function(a){return(onWebChat_.get(a));},w
:(function(){ var ga=document.createElement('script'); ga.type = 'text/javascript';ga.
async=1;ga.src='//www.onwebchat.com/clientchat/795d781612868f02aa4bb0552c0655a5/1/1';
var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(ga,s);})()}
&lt;/script&gt;



&lt;script type='text/javascript'&gt;
var onWebChat={ar:[], set: function(a,b){if (typeof onWebChat_==='undefined'){this.ar.
push([a,b]);}else{onWebChat_.set(a,b);}},get:function(a){return(onWebChat_.get(a));},w
:(function(){ var ga=document.createElement('script'); ga.type = 'text/javascript';ga.
async=1;ga.src='//www.onwebchat.com/clientchat/306321103e7a903e23dcad8d1fee80f9/1/1';
var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(ga,s);})()}
&lt;/script&gt;

&lt;script type='text/javascript'&gt;
var onWebChat={ar:[], set: function(a,b){if (typeof onWebChat_==='undefined'){this.ar.
push([a,b]);}else{onWebChat_.set(a,b);}},get:function(a){return(onWebChat_.get(a));},w
:(function(){ var ga=document.createElement('script'); ga.type = 'text/javascript';ga.
async=1;ga.src='//www.onwebchat.com/clientchat/795d781612868f02aa4bb0552c0655a5/1/1';
var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(ga,s);})()}
&lt;/script&gt;


&lt;/body&gt;&lt;/html&gt;
'''
    return outstring</t>
<t tx="leo.20160510112701.1">def circle36(x, y, degree):
    # 20 為鏈條輪廓之圓距
    # chain 所圍之圓圈半徑為 20/2/math.asin(degree*math.pi/180/2)
    # degree = math.asin(20/2/radius)*180/math.pi
    #degree = 10
    first_degree = 90 - degree
    repeat = 360 / degree
    
    outstring = '''
mychain = chain()
x1, y1 = mychain.basic_rot('''+str(x)+","+str(y)+", "+str(first_degree)+''')
'''

    for i in range(2, int(repeat)+1):
        outstring += "x"+str(i)+", y"+str(i)+"=mychain.basic_rot(x"+str(i-1)+", y"+str(i-1)+", 90-"+str(i*degree)+") \n"

    return outstring
    </t>
<t tx="leo.20160510112922.1">@bg7_40323236.route('/circle35/&lt;x&gt;/&lt;y&gt;/&lt;degree&gt;/&lt;a&gt;/&lt;b&gt;/&lt;degree2&gt;')
def drawcircle35(x, y, degree, a, b, degree2):
    return head_str + chain_str + circle35(int(x), int(y), int(degree), int(a), int(b), int(degree2)) + tail_str
    </t>
<t tx="leo.20160519092446.1">@language python
@tabwidth -4
@others
</t>
<t tx="leo.20160519092609.1">from flask import Blueprint, request


bg7_40323236_2 = Blueprint('bg7_40323236_2', __name__, url_prefix='/bg7_40323236_2', template_folder='templates')
 
head_str = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 2D 繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
&lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&gt;&lt;/script&gt;
 
&lt;/head&gt;
&lt;body&gt;
 
&lt;script&gt;
window.onload=function(){
brython(1);
}
&lt;/script&gt;
 
&lt;canvas id="plotarea" width="800" height="800"&gt;&lt;/canvas&gt;
'''
 
tail_str = '''
&lt;/script&gt;



&lt;/body&gt;
&lt;/html&gt;
'''
 
chain_str = '''
&lt;script type="text/python"&gt;
from javascript import JSConstructor
from browser import alert
from browser import window
import math
 
cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")
 
cgo.setWorldCoords(-250, -250, 500, 500) 
 
# 畫軸線
cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
 
deg = math.pi/180  
 
# 將繪製鏈條輪廓的內容寫成 class 物件
class chain():
    # 輪廓的外型設為 class variable
    chamber = "M -6.8397, -1.4894 \
            A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
            A 40, 40, 0, 0, 1, 6.8397, -18.511 \
            A 7, 7, 0, 1, 0, -6.8397, -18.511 \
            A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    #chamber = "M 0, 0 L 0, -20 z"
    cgoChamber = window.svgToCgoSVG(chamber)
 
    def __init__(self, fillcolor="green", border=True, strokecolor= "tan", linewidth=2, scale=1):
        self.fillcolor = fillcolor
        self.border = border
        self.strokecolor = strokecolor
        self.linewidth = linewidth
        self.scale = scale
 
    # 利用鏈條起點與終點定義繪圖
    def basic(self, x1, y1, x2, y2):
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": self.fillcolor,
                "border": self.border,
                "strokeColor": self.strokecolor,
                "lineWidth": self.linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4*self.scale), "PATH")
        cmbr.appendPath(hole)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(math.atan2(y2-y1, x2-x1)/deg+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, self.scale, 0)
 
    # 利用鏈條起點與旋轉角度定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic_rot(self, x1, y1, rot, v=False):
        # 若 v 為 True 則為虛擬 chain, 不 render
        self.x1 = x1
        self.y1 = y1
        self.rot = rot
        self.v = v
        # 注意, cgoChamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": self.fillcolor,
                "border": self.border,
                "strokeColor": self.strokecolor,
                "lineWidth": self.linewidth })
 
        # hole0 為原點位置
        hole = cobj(shapedefs.circle(4*self.scale), "PATH")
        cmbr.appendPath(hole)
        # 根據旋轉角度, 計算 x2 與 y2
        x2 = x1 + 20*math.cos(rot*deg)*self.scale
        y2 = y1 + 20*math.sin(rot*deg)*self.scale
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(rot+90)
 
        # 放大 scale 倍
        if v == False:
            cgo.render(basic1, x1, y1, self.scale, 0)
 
        return x2, y2
'''
 </t>
<t tx="leo.20160519092609.10">def eighteenthirty(x, y):
    '''
從圖解法與符號式解法得到的兩條外切線座標點
(-203.592946177111, 0.0), (0.0, 0.0), (-214.364148466539, 56.5714145924675), (-17.8936874260919, 93.9794075692901)
(-203.592946177111, 0.0), (0.0, 0.0), (-214.364148466539, -56.5714145924675), (-17.8936874260919, -93.9794075692901)
左邊關鍵鍊條起點 (-233.06, 49.48), 角度 20.78, 圓心 (-203.593, 0.0)
右邊關鍵鍊條起點 (-17.89, 93.9), 角度 4.78, 圓心 (0, 0)
    '''
    # 20 為鏈條兩圓距
    # chain 所圍之圓圈半徑為 20/2/math.asin(degree*math.pi/180/2)
    # degree = math.asin(20/2/radius)*180/math.pi
    x = 50
    y = 0
    degree = 20
    first_degree = 20.78+90
    startx = 44.0532
    starty = -165.17
    repeat = 360 / degree
    # 先畫出左邊第一關鍵節
    outstring = '''
mychain = chain()
 
x1, y1 = mychain.basic_rot('''+str(startx)+","+str(starty)+", "+str(first_degree)+''')
 
'''
    # 接著繪製左邊的非虛擬鍊條
    for i in range(2, int(repeat)+1):
        if i &gt;=2 and i &lt;=11:
            # virautl chain
            #outstring += "x"+str(i)+", y"+str(i)+"=mychain.basic_rot(x"+str(i-1)+", y"+str(i-1)+","+str(first_degree+degree-i*degree)+") \n"
            outstring += "x"+str(i)+", y"+str(i)+"=mychain.basic_rot(x"+str(i-1)+", y"+str(i-1)+","+str(first_degree+degree-i*degree)+", True) \n"
        else:
            outstring += "x"+str(i)+", y"+str(i)+"=mychain.basic_rot(x"+str(i-1)+", y"+str(i-1)+","+str(first_degree+degree-i*degree)+") \n"
 
    # 接著處理右邊的非虛擬鍊條
    # 先畫出右邊第一關鍵節
 
    p = 0
    k = 50
    degree = 12
    first_degree = 4.78+90
    repeat = 360 / degree
    # 第1節不是 virtual chain
    outstring += '''
#mychain = chain()
 
p1, k1 = mychain.basic_rot('''+str(p)+","+str(k)+", "+str(first_degree)+''')
'''
    for i in range(2, int(repeat)+1):
        if i &gt;=18:
            # virautl chain
            outstring += "p"+str(i)+", k"+str(i)+"=mychain.basic_rot(p"+str(i-1)+", k"+str(i-1)+","+str(first_degree+degree-i*degree)+", True) \n"
            #outstring += "p"+str(i)+", k"+str(i)+"=mychain.basic_rot(p"+str(i-1)+", k"+str(i-1)+","+str(first_degree+degree-i*degree)+") \n"
        else:
            outstring += "p"+str(i)+", k"+str(i)+"=mychain.basic_rot(p"+str(i-1)+", k"+str(i-1)+","+str(first_degree+degree-i*degree)+") \n"
 
    # 上段連接直線
    # 從 x1, y1 作為起點
    first_degree = 10.78 +90 
    repeat = 10
    outstring += '''
m1, n1 = mychain.basic_rot(x1, y1, '''+str(first_degree)+''')
'''
    for i in range(2, int(repeat)+1):
        outstring += "m"+str(i)+", n"+str(i)+"=mychain.basic_rot(m"+str(i-1)+", n"+str(i-1)+", "+str(first_degree)+")\n"
 
    # 下段連接直線
    # 從 x11, y11 作為起點
    first_degree = -10.78 +90
    repeat = 10
    outstring += '''
r1, s1 = mychain.basic_rot(x11, y11, '''+str(first_degree)+''')
'''
    for i in range(2, int(repeat)+1):
        outstring += "r"+str(i)+", s"+str(i)+"=mychain.basic_rot(r"+str(i-1)+", s"+str(i-1)+", "+str(first_degree)+")\n"
 
    return outstring
 
 
</t>
<t tx="leo.20160519092609.22">@bg7_40323236_2.route('/circle')
def drawcircle():
    return head_str + chain_str + circle(0, 0) + tail_str
 
 </t>
<t tx="leo.20160519092609.23">@bg7_40323236_2.route('/circle1/&lt;degree&gt;', defaults={'x': 0, 'y': 0})
@bg7_40323236_2.route('/circle1/&lt;x&gt;/&lt;degree&gt;', defaults={'y': 0})
@bg7_40323236_2.route('/circle1/&lt;x&gt;/&lt;y&gt;/&lt;degree&gt;')
#@bg7_40323236_2.route('/circle1/&lt;int:x&gt;/&lt;int:y&gt;/&lt;int:degree&gt;')
def drawcircle1(x,y,degree):
    return head_str + chain_str + circle1(int(x), int(y), int(degree)) + tail_str
 
 </t>
<t tx="leo.20160519092609.24">@bg7_40323236_2.route('/circle2/&lt;degree&gt;', defaults={'x': 0, 'y': 0})
@bg7_40323236_2.route('/circle2/&lt;x&gt;/&lt;degree&gt;', defaults={'y': 0})
@bg7_40323236_2.route('/circle2/&lt;x&gt;/&lt;y&gt;/&lt;degree&gt;')
#@bg7_40323236_2.route('/circle2/&lt;int:x&gt;/&lt;int:y&gt;/&lt;int:degree&gt;')
def drawcircle2(x,y,degree):
    return head_str + chain_str + circle2(int(x), int(y), int(degree)) + tail_str
 
 </t>
<t tx="leo.20160519092609.25">@bg7_40323236_2.route('/twocircle/&lt;x&gt;/&lt;y&gt;')
@bg7_40323236_2.route('/twocircle', defaults={'x':0, 'y':0})
def drawtwocircle(x,y):
    return head_str + chain_str + twocircle(int(x), int(y)) + tail_str
 
 </t>
<t tx="leo.20160519092609.26">@bg7_40323236_2.route('/eighteenthirty/&lt;x&gt;/&lt;y&gt;')
@bg7_40323236_2.route('/eighteenthirty', defaults={'x':0, 'y':0})
def draweithteenthirdy(x,y):
    return head_str + chain_str + eighteenthirty(int(x), int(y)) + tail_str
 
 </t>
<t tx="leo.20160519092609.27">@bg7_40323236_2.route('/snap')
# http://svg.dabbles.info/snaptut-base
def snap():
    outstring = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 snap 繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
    &lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
    &lt;script type="text/javascript" src="/static/snap.svg-min.js"&gt;&lt;/script&gt;
 
    &lt;script&gt;
    window.onload=function(){
    brython(1);
    }
    &lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
 
&lt;svg width="800" height="800" viewBox="0 0 800 800" id="svgout"&gt;&lt;/svg&gt;
 
&lt;script type="text/python"&gt;
from javascript import JSConstructor
from browser import alert
from browser import window, document
 
# 透過 window 與 JSConstructor 從 Brython 物件 snap 擷取 Snap 物件的內容
snap = JSConstructor(window.Snap)
 
s = snap("#svgout")
# 建立物件時, 同時設定 id 名稱
r = s.rect(10,10,100,100).attr({'id': 'rect'})
c = s.circle(100,100,50).attr({'id': 'circle'})
r.attr('fill', 'red')
c.attr({ 'fill': 'blue', 'stroke': 'black', 'strokeWidth': 10 })
r.attr({ 'stroke': '#123456', 'strokeWidth': 20 })
s.text(180,100, '點按一下圖形').attr({'fill' : 'blue',  'stroke': 'blue', 'stroke-width': 0.2 })
 
g = s.group().attr({'id': 'tux'})
 
def hoverover(ev):
    g.animate({'transform': 's1.5r45,t180,20'}, 1000, window.mina.bounce)
 
def hoverout(ev):
    g.animate({'transform': 's1r0,t180,20'}, 1000, window.mina.bounce) 
 
# callback 函式
def onSVGLoaded(data):
    #s.append(data)
    g.append(data)
    #g.hover(hoverover, hoverout )
    g.text(300,100, '拿滑鼠指向我')
 
# 利用 window.Snap.load 載入 svg 檔案
tux = window.Snap.load("/static/Dreaming_tux.svg", onSVGLoaded)
g.transform('t180,20')
 
# 與視窗事件對應的函式
def rtoyellow(ev):
    r.attr('fill', 'yellow')
 
def ctogreen(ev):
    c.attr('fill', 'green')
 
# 根據物件 id 綁定滑鼠事件執行對應函式
document['rect'].bind('click', rtoyellow)
document['circle'].bind('click', ctogreen)
document['tux'].bind('mouseover', hoverover)
document['tux'].bind('mouseleave', hoverout)
&lt;/script&gt;




&lt;/body&gt;
&lt;/html&gt;
'''
    return outstring
 
 </t>
<t tx="leo.20160519092609.28">@bg7_40323236_2.route('/snap_link')
# http://svg.dabbles.info/
def snap_link():
    outstring = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 snap 繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
    &lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
    &lt;script type="text/javascript" src="/static/snap.svg-min.js"&gt;&lt;/script&gt;
 
    &lt;script&gt;
    window.onload=function(){
    brython(1);
    }
    &lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
 
&lt;svg width="800" height="800" viewBox="0 0 800 800" id="svgout"&gt;&lt;/svg&gt;
 
&lt;script type="text/python"&gt;
from javascript import JSConstructor
from browser import alert
from browser import window, document
 
# 透過 window 與 JSConstructor 從 Brython 物件 snap 擷取 Snap 物件的內容
snap = JSConstructor(window.Snap)
 
# 使用 id 為 "svgout" 的 svg 標註進行繪圖
s = snap("#svgout")
 
offsetY = 50
 
# 是否標訂出繪圖範圍
#borderRect = s.rect(0,0,800,640,10,10).attr({ 'stroke': "silver", 'fill': "silver", 'strokeWidth': "3" })
 
g = s.group().transform('t250,120')
r0 = s.rect(150,150,100,100,20,20).attr({ 'fill': "orange", 'opacity': "0.8", 'stroke': "black", 'strokeWidth': "2" })
c0 = s.circle(225,225,10).attr({ 'fill': "silver", 'stroke': "black", 'strokeWidth': "4"  }).attr({ 'id': 'c0' })
g0 = s.group( r0,c0 ).attr({ 'id': 'g0' })
#g0.animate({ 'transform' : 't250,120r360,225,225' },4000)
g0.appendTo( g )
g0.animate({ 'transform' : 'r360,225,225' },4000)
# 讓 g0 可以拖動
g0.drag()
 
r1 = s.rect(100,100,100,100,20,20).attr({ 'fill': "red", 'opacity': "0.8", 'stroke': "black", 'strokeWidth': "2" })
c1 = s.circle(175,175,10).attr({ 'fill': "silver", 'stroke': "black" , 'strokeWidth': "4"}).attr({ 'id': 'c1' })
g1 = s.group( r1,c1 ).attr({ 'id': 'g1' })
g1.appendTo( g0 ).attr({ 'id': 'g1' })
g1.animate({ 'transform' : 'r360,175,175' },4000)
 
r2 = s.rect(50,50,100,100,20,20).attr({ 'fill': "blue", 'opacity': "0.8", 'stroke': "black", 'strokeWidth': "2" })
c2 = s.circle(125,125,10).attr({ 'fill': "silver", 'stroke': "black", 'strokeWidth': "4" }).attr({ 'id': 'c2' })
g2 = s.group(r2,c2).attr({ 'id': 'g2' })
 
g2.appendTo( g1 );
g2.animate( { 'transform' : 'r360,125,125' },4000);
 
r3 = s.rect(0,0,100,100,20,20).attr({ 'fill': "yellow", 'opacity': "0.8", 'stroke': "black", 'strokeWidth': "2" })
c3 = s.circle(75,75,10).attr({ 'fill': "silver", 'stroke': "black", 'strokeWidth': "4" }).attr({ 'id': 'c3' })
g3 = s.group(r3,c3).attr({ 'id': 'g3' })
 
g3.appendTo( g2 )
g3.animate( { 'transform' : 'r360,75,75' },4000)
 
r4 = s.rect(-50,-50,100,100,20,20).attr({ 'fill': "green", 'opacity': "0.8", 'stroke': "black", 'strokeWidth': "2" })
c4 = s.circle(25,25,10).attr({ 'fill': "silver", 'stroke': "black", 'strokeWidth': "4" }).attr({ 'id': 'c4' })
g4 = s.group(r4,c4).attr({ 'id': 'g4' });
g4.appendTo( g3 )
g4.animate( { 'transform' : 'r360,25,25' },4000)
&lt;/script&gt;



&lt;/body&gt;
&lt;/html&gt;
'''
    return outstring
 
 </t>
<t tx="leo.20160519092609.29">@bg7_40323236_2.route('/snap_gear')
def snap_gear():
    outstring = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 snap 繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
    &lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
    &lt;script type="text/javascript" src="/static/snap.svg-min.js"&gt;&lt;/script&gt;
 
    &lt;script&gt;
    window.onload=function(){
    brython(1);
    }
    &lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
 
&lt;svg width="800" height="800" viewBox="0 0 800 800" id="svgout"&gt;&lt;/svg&gt;
 
&lt;script type="text/python"&gt;
from javascript import JSConstructor
from browser import alert
from browser import window, document
 
# 透過 window 與 JSConstructor 從 Brython 物件 snap 擷取 Snap 物件的內容
snap = JSConstructor(window.Snap)
 
s = snap("#svgout")
# 畫直線
s.line(0, 0, 100, 100).attr({ 'fill': "silver", 'stroke': "black", 'strokeWidth': "1"  }).attr({ 'id': 'line1' })
&lt;/script&gt;



&lt;/body&gt;
&lt;/html&gt;
'''
    return outstring</t>
<t tx="leo.20160519092609.6">def circle(x, y):
    outstring = '''
mychain = chain()
 
x1, y1 = mychain.basic_rot('''+str(x)+","+str(y)+''', 50)
'''
    for i in range(2, 10):
        outstring += "x"+str(i)+", y"+str(i)+"=mychain.basic_rot(x"+str(i-1)+", y"+str(i-1)+", 90-"+str(i*40)+") \n"
    return outstring
 
</t>
<t tx="leo.20160519092609.9">def twocircle(x, y):
    # 20 為鏈條兩圓距
    # chain 所圍之圓圈半徑為 20/2/math.asin(degree*math.pi/180/2)
    # degree = math.asin(20/2/radius)*180/math.pi
    x = 50
    y = 0
    degree = 12
    # 78, 66, 54, 42, 30, 18, 6度
    #必須有某些 chain 算座標但是不 render
    first_degree = 90 - degree
    repeat = 360 / degree
    # 第1節也是 virtual chain
    outstring = '''
mychain = chain()
 
x1, y1 = mychain.basic_rot('''+str(x)+","+str(y)+", "+str(first_degree)+''', True)
#x1, y1 = mychain.basic_rot('''+str(x)+","+str(y)+", "+str(first_degree)+''')
'''
    # 這裡要上下各多留一節虛擬 chain, 以便最後進行連接 (x7, y7) 與 (x22, y22)
    for i in range(2, int(repeat)+1):
        #if i &lt; 7 or i &gt; 23:        
        if i &lt;= 7 or i &gt;= 23:
            # virautl chain
            outstring += "x"+str(i)+", y"+str(i)+"=mychain.basic_rot(x"+str(i-1)+", y"+str(i-1)+", 90-"+str(i*degree)+", True) \n"
            #outstring += "x"+str(i)+", y"+str(i)+"=mychain.basic_rot(x"+str(i-1)+", y"+str(i-1)+", 90-"+str(i*degree)+") \n"
        else:
            outstring += "x"+str(i)+", y"+str(i)+"=mychain.basic_rot(x"+str(i-1)+", y"+str(i-1)+", 90-"+str(i*degree)+") \n"
 
    p = -150
    k = 0
    degree = 20
    # 70, 50, 30, 10
    # 從 i=5 開始, 就是 virautl chain
    first_degree = 90 - degree
    repeat = 360 / degree
    # 第1節不是 virtual chain
    outstring += '''
#mychain = chain()
 
p1, k1 = mychain.basic_rot('''+str(p)+","+str(k)+", "+str(first_degree)+''')
'''
    for i in range(2, int(repeat)+1):
        if i &gt;= 5 and i &lt;= 13:
            # virautl chain
            outstring += "p"+str(i)+", k"+str(i)+"=mychain.basic_rot(p"+str(i-1)+", k"+str(i-1)+", 90-"+str(i*degree)+", True) \n"
            #outstring += "p"+str(i)+", k"+str(i)+"=mychain.basic_rot(p"+str(i-1)+", k"+str(i-1)+", 90-"+str(i*degree)+") \n"
        else:
            outstring += "p"+str(i)+", k"+str(i)+"=mychain.basic_rot(p"+str(i-1)+", k"+str(i-1)+", 90-"+str(i*degree)+") \n"
 
    # 上段連接直線
    # 從 p5, k5 作為起點
    first_degree = 10
    repeat = 11
    outstring += '''
m1, n1 = mychain.basic_rot(p4, k4, '''+str(first_degree)+''')
'''
    for i in range(2, int(repeat)+1):
        outstring += "m"+str(i)+", n"+str(i)+"=mychain.basic_rot(m"+str(i-1)+", n"+str(i-1)+", "+str(first_degree)+")\n"
 
    # 下段連接直線
    # 從 p12, k12 作為起點
    first_degree = -10
    repeat = 11
    outstring += '''
r1, s1 = mychain.basic_rot(p13, k13, '''+str(first_degree)+''')
'''
    for i in range(2, int(repeat)+1):
        outstring += "r"+str(i)+", s"+str(i)+"=mychain.basic_rot(r"+str(i-1)+", s"+str(i-1)+", "+str(first_degree)+")\n"
 
    # 上段右方接點為 x7, y7, 左側則為 m11, n11
    outstring += "mychain.basic(x7, y7, m11, n11)\n"
    # 下段右方接點為 x22, y22, 左側則為 r11, s11
    outstring += "mychain.basic(x22, y22, r11, s11)\n"
 
    return outstring
</t>
<t tx="leo.20160526103117.1">@bg7_40323236.route('/gear36')
def gear36():
    outstring = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 2D 繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
&lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://2015fallhw.github.io/cptocadp/static/Cango-8v03.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://2015fallhw.github.io/cptocadp/static/Cango2D-7v01-min.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://2015fallhw.github.io/cptocadp/static/gearUtils-05.js"&gt;&lt;/script&gt;
 
&lt;script&gt;
window.onload=function(){
brython(1);
}
&lt;/script&gt;
 
&lt;canvas id='gear1' width='800' height='750'&gt;&lt;/canvas&gt;
 
&lt;script type="text/python"&gt;
# 將 導入的 document 設為 doc 主要原因在於與舊程式碼相容
from browser import document as doc
# 由於 Python3 與 Javascript 程式碼已經不再混用, 因此來自 Javascript 的變數, 必須居中透過 window 物件轉換
from browser import window
# 針對 Javascript 既有的物件, 則必須透過 JSConstructor 轉換
from javascript import JSConstructor
import math
 
# 主要用來取得畫布大小
canvas = doc["gear1"]
# 此程式採用 Cango Javascript 程式庫繪圖, 因此無需 ctx
#ctx = canvas.getContext("2d")
# 針對類別的轉換, 將 Cango.js 中的 Cango 物件轉為 Python cango 物件
cango = JSConstructor(window.Cango)
# 針對變數的轉換, shapeDefs 在 Cango 中資料型別為變數, 可以透過 window 轉換
shapedefs = window.shapeDefs
# 目前 Cango 結合 Animation 在 Brython 尚無法運作, 此刻只能繪製靜態圖形
# in CangoAnimation.js
#interpolate1 = window.interpolate
# Cobi 與 createGearTooth 都是 Cango Javascript 程式庫中的物件
cobj = JSConstructor(window.Cobj)
creategeartooth = JSConstructor(window.createGearTooth)
 
# 經由 Cango 轉換成 Brython 的 cango, 指定將圖畫在 id="plotarea" 的 canvas 上
cgo = cango("gear1")
 
######################################
# 畫正齒輪輪廓
#####################################
def spur(cx, cy, m, n, pa, theta):
    # n 為齒數
    #n = 17
    # pa 為壓力角
    #pa = 25
    # m 為模數, 根據畫布的寬度, 計算適合的模數大小
    # Module = mm of pitch diameter per tooth
    #m = 0.8*canvas.width/n
    # pr 為節圓半徑
    pr = n*m/2 # gear Pitch radius
    # generate gear
    data = creategeartooth(m, n, pa)
    # Brython 程式中的 print 會將資料印在 Browser 的 console 區
    #print(data)
 
    gearTooth = cobj(data, "SHAPE", {
            "fillColor":"#ddd0dd",
            "border": True,
            "strokeColor": "#606060" })
    #gearTooth.rotate(180/n) # rotate gear 1/2 tooth to mesh, 請注意 rotate 角度為 degree
    # theta 為角度
    gearTooth.rotate(theta) 
    # 單齒的齒形資料經過旋轉後, 將資料複製到 gear 物件中
    gear = gearTooth.dup()
    # gear 為單一齒的輪廓資料
    #cgo.render(gearTooth)
 
    # 利用單齒輪廓旋轉, 產生整個正齒輪外形
    for i in range(1, n):
        # 將 gearTooth 中的資料複製到 newTooth
        newTooth = gearTooth.dup()
        # 配合迴圈, newTooth 的齒形資料進行旋轉, 然後利用 appendPath 方法, 將資料併入 gear
        newTooth.rotate(360*i/n)
        # appendPath 為 Cango 程式庫中的方法, 第二個變數為 True, 表示要刪除最前頭的 Move to SVG Path 標註符號
        gear.appendPath(newTooth, True) # trim move command = True
 
    # 建立軸孔
    # add axle hole, hr 為 hole radius
    hr = 0.6*pr # diameter of gear shaft
    shaft = cobj(shapedefs.circle(hr), "PATH")
    shaft.revWinding()
    gear.appendPath(shaft) # retain the 'moveTo' command for shaft sub path
    gear.translate(cx, cy)
    # render 繪出靜態正齒輪輪廓
    cgo.render(gear)
    # 接著繪製齒輪的基準線
    deg = math.pi/180
    Line = cobj(['M', cx, cy, 'L', cx+pr*math.cos(theta*deg), cy+pr*math.sin(theta*deg)], "PATH", {
          'strokeColor':'blue', 'lineWidth': 1})
    cgo.render(Line)
 
# 3個齒輪的齒數
n1 = 10
n2 = 8
n3 = 25
n4 = 16
 
# m 為模數, 根據畫布的寬度, 計算適合的模數大小
# Module = mm of pitch diameter per tooth
# 利用 80% 的畫布寬度進行繪圖
# 計算模數的對應尺寸
m = canvas.width*0.8/(n1+n2+n3+n4)
 
# 根據齒數與模組計算各齒輪的節圓半徑
pr1 = n1*m/2
pr2 = n2*m/2
pr3 = n3*m/2
pr4 = n4*m/2
# 畫布左右兩側都保留畫布寬度的 10%
# 依此計算對應的最左邊齒輪的軸心座標
cx = canvas.width*0.1+pr1
cy = canvas.height/2
 
# pa 為壓力角
pa = 25
 

# 畫布左右兩側都保留畫布寬度的 10%
# 依此計算對應的最左邊齒輪的軸心座標
cx = canvas.width*0.1+pr1
cy = canvas.height/2
 
# pa 為壓力角
pa = 25
 
# 畫最左邊齒輪, 定位線旋轉角為 0, 軸心座標 (cx, cy)
spur(cx, cy, m, n1, pa, 0)
# 第2個齒輪將原始的定位線逆時鐘轉 180 度後, 與第1個齒輪正好齒頂與齒頂對齊
# 只要第2個齒輪再逆時鐘或順時鐘轉動半齒的角度, 即可完成囓合
# 每一個齒分別包括從齒根到齒頂的範圍, 涵蓋角度為 360/n, 因此所謂的半齒角度為 180/n
spur(cx+pr1+pr2, cy, m, n2, pa, 180-180/n2)
# 第2齒與第3齒的囓合, 首先假定第2齒的定位線在 theta 角為 0 的原始位置
# 如此, 第3齒只要逆時鐘旋轉 180 度後, 再逆時鐘或順時鐘轉動半齒的角度, 即可與第2齒囓合
# 但是第2齒為了與第一齒囓合時, 已經從原始定位線轉了 180-180/n2 度
# 而當第2齒從與第3齒囓合的定位線, 逆時鐘旋轉 180-180/n2 角度後, 原先囓合的第3齒必須要再配合旋轉 (180-180/n2 )*n2/n3
spur(cx+pr1+pr2+pr2+pr3, cy, m, n3, pa, 180-180/n3+(180-180/n2)*n2/n3)

spur(cx+pr1+pr2+pr2+pr3+pr3+pr4, cy, m, n4, pa, 180-180/n3*n3/n4+(180-180/n2)*n2/n3*n3/n4+(180-180/n3)*n3/n4)


&lt;/script&gt;

&lt;/body&gt;
&lt;/html&gt;
'''
    return outstring</t>
</tnodes>
</leo_file>
