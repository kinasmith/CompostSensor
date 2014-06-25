<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="JeeParts">
<packages>
<package name="RFM12B">
<description>RFM12B radio module by HopeRF</description>
<wire x1="-7.5" y1="-7" x2="7.5" y2="-7" width="0.127" layer="21"/>
<wire x1="7.5" y1="7" x2="-7.5" y2="7" width="0.127" layer="21"/>
<wire x1="-5.715" y1="3.81" x2="-1.27" y2="3.81" width="0.127" layer="21" curve="-180"/>
<wire x1="-1.27" y1="-1.27" x2="-5.715" y2="-1.27" width="0.127" layer="21" curve="-196.260205"/>
<wire x1="-5.715" y1="3.81" x2="-5.715" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.81" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<smd name="SDO" x="-8" y="6" dx="2.54" dy="1.27" layer="1"/>
<smd name="IRQ" x="-8" y="4" dx="2.54" dy="1.27" layer="1"/>
<smd name="FFS" x="-8" y="2" dx="2.54" dy="1.27" layer="1"/>
<smd name="P$8" x="-8" y="0" dx="2.54" dy="1.27" layer="1"/>
<smd name="P$9" x="-8" y="-2" dx="2.54" dy="1.27" layer="1"/>
<smd name="P$10" x="-8" y="-4" dx="2.54" dy="1.27" layer="1"/>
<smd name="P$12" x="-8" y="-6" dx="2.54" dy="1.27" layer="1"/>
<smd name="SEL" x="8" y="6" dx="2.54" dy="1.27" layer="1"/>
<smd name="SCK" x="8" y="4" dx="2.54" dy="1.27" layer="1"/>
<smd name="SDI" x="8" y="2" dx="2.54" dy="1.27" layer="1"/>
<smd name="P$16" x="8" y="0" dx="2.54" dy="1.27" layer="1"/>
<smd name="GND" x="8" y="-2" dx="2.54" dy="1.27" layer="1"/>
<smd name="VDD" x="8" y="-4" dx="2.54" dy="1.27" layer="1"/>
<smd name="ANT" x="8" y="-6" dx="2.54" dy="1.27" layer="1"/>
<text x="0" y="5.08" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.08" y="-6.35" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="3.81" y="-6.35" size="1.016" layer="21" ratio="16">Ant.</text>
<text x="3.81" y="-4.445" size="1.016" layer="21" ratio="16">VCC</text>
<text x="3.81" y="-2.54" size="1.016" layer="21" ratio="16">GND</text>
<rectangle x1="-4.445" y1="-6.35" x2="4.445" y2="6.35" layer="43"/>
</package>
</packages>
<symbols>
<symbol name="RFM12B">
<wire x1="-10.16" y1="10.16" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<text x="-5.08" y="-2.54" size="1.778" layer="94">RFM12B</text>
<pin name="SEL" x="-12.7" y="5.08" visible="pad" length="short" direction="in"/>
<pin name="SCK" x="-12.7" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="SDI" x="-12.7" y="0" visible="pad" length="short" direction="in"/>
<pin name="SDO" x="-12.7" y="-2.54" visible="pad" length="short" direction="out"/>
<pin name="ANT" x="12.7" y="-5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="VCC" x="0" y="12.7" length="short" direction="pwr" rot="R270"/>
<pin name="GND" x="0" y="-15.24" length="short" direction="pwr" rot="R90"/>
<pin name="IRQ" x="-12.7" y="-7.62" visible="pad" length="short" direction="oc"/>
<pin name="FFS" x="12.7" y="2.54" visible="pad" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RFM12B">
<gates>
<gate name="G$1" symbol="RFM12B" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RFM12B">
<connects>
<connect gate="G$1" pin="ANT" pad="ANT"/>
<connect gate="G$1" pin="FFS" pad="FFS"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="IRQ" pad="IRQ"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
<connect gate="G$1" pin="SDI" pad="SDI"/>
<connect gate="G$1" pin="SDO" pad="SDO"/>
<connect gate="G$1" pin="SEL" pad="SEL"/>
<connect gate="G$1" pin="VCC" pad="VDD"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1206">
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="AXIAL-0.3">
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-1.027" y1="1.245" x2="1.027" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.002" y1="-1.245" x2="1.016" y2="-1.245" width="0.1524" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.54" y="1.5875" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="0603-RES">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2286" y1="-0.381" x2="0.2286" y2="0.381" layer="21"/>
</package>
<package name="1/6W-RES">
<description>1/6W Thru-hole Resistor - *UNPROVEN*</description>
<wire x1="-1.55" y1="0.85" x2="-1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="-0.85" x2="1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="-0.85" x2="1.55" y2="0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="0.85" x2="-1.55" y2="0.85" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.762" diameter="1.6764"/>
<pad name="2" x="2.5" y="0" drill="0.762" diameter="1.6764"/>
<text x="-1.2662" y="0.9552" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.423" y="-0.4286" size="0.8128" layer="21" ratio="15">&gt;VALUE</text>
</package>
<package name="R2512">
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
</package>
<package name="AXIAL-0.4">
<description>1/4W Resistor, 0.4" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-3.15" y1="-1.2" x2="-3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="1.2" x2="3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="1.2" x2="3.15" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="-1.2" x2="-3.15" y2="-1.2" width="0.2032" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="5.08" y="0" drill="0.9" diameter="1.8796"/>
<text x="-3.175" y="1.905" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-2.286" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.5">
<description>1/2W Resistor, 0.5" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-4.5" y1="-1.65" x2="-4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="1.65" x2="4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="1.65" x2="4.5" y2="-1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-1.65" x2="-4.5" y2="-1.65" width="0.2032" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="6.35" y="0" drill="0.9" diameter="1.8796"/>
<text x="-4.445" y="2.54" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-3.429" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.6">
<description>1W Resistor, 0.6" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-5.75" y1="-2.25" x2="-5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-5.75" y1="2.25" x2="5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="2.25" x2="5.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="-2.25" x2="-5.75" y2="-2.25" width="0.2032" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="7.62" y="0" drill="1.2" diameter="1.8796"/>
<text x="-5.715" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-4.064" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.8">
<description>2W Resistor, 0.8" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-7.75" y1="-2.5" x2="-7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-7.75" y1="2.5" x2="7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="2.5" x2="7.75" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="-2.5" x2="-7.75" y2="-2.5" width="0.2032" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="10.16" y="0" drill="1.2" diameter="1.8796"/>
<text x="-7.62" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-5.969" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;

Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;br&gt;
&lt;br&gt;

&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.159" y="-0.762" size="1.27" layer="21" font="vector" ratio="15">&gt;Value</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="AXIAL-0.3EZ">
<description>This is the "EZ" version of the standard .3" spaced resistor package.&lt;br&gt;
It has a reduced top mask to make it harder to install upside-down.</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="-3.81" y="0" radius="0.508" width="0" layer="29"/>
<circle x="3.81" y="0" radius="0.523634375" width="0" layer="29"/>
<circle x="-3.81" y="0" radius="1.02390625" width="0" layer="30"/>
<circle x="3.81" y="0" radius="1.04726875" width="0" layer="30"/>
</package>
<package name="AXIAL-0.1EZ">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="0" y="0" radius="1.016" width="0" layer="30"/>
<circle x="2.54" y="0" radius="1.016" width="0" layer="30"/>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.4572" width="0" layer="29"/>
</package>
<package name="AXIAL-0.1">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor&lt;/b&gt;
Basic schematic elements and footprints for 0603, 1206, and PTH resistors.</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AXIAL-0.3" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-RES" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-RES" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/6W" package="1/6W-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W" package="AXIAL-0.4">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/2W" package="AXIAL-0.5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1W" package="AXIAL-0.6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-2W" package="AXIAL-0.8">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="AXIAL-0.3EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT-KIT" package="AXIAL-0.1EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT" package="AXIAL-0.1">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Aesthetics">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find non-functional items- supply symbols, logos, notations, frame blocks, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="DGND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC2">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="DGND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="VCC2" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-DigitalIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of digital ICs- microcontrollers, memory chips, logic chips, FPGAs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SO14">
<wire x1="4.2418" y1="1.9463" x2="-4.2418" y2="1.9463" width="0.2032" layer="21"/>
<wire x1="4.3418" y1="-1.9463" x2="4.6228" y2="-1.5653" width="0.2032" layer="21" curve="90"/>
<wire x1="-4.6228" y1="1.4653" x2="-4.2418" y2="1.9463" width="0.2032" layer="21" curve="-90.023829"/>
<wire x1="4.2418" y1="1.9463" x2="4.6228" y2="1.5653" width="0.2032" layer="21" curve="-90.030084"/>
<wire x1="-4.6228" y1="-1.6653" x2="-4.2418" y2="-1.9463" width="0.2032" layer="21" curve="90.060185"/>
<wire x1="-4.2418" y1="-1.9463" x2="4.3418" y2="-1.9463" width="0.2032" layer="21"/>
<wire x1="4.6228" y1="-1.5653" x2="4.6228" y2="1.5653" width="0.2032" layer="21"/>
<wire x1="-4.572" y1="0.6096" x2="-4.572" y2="-0.6604" width="0.2032" layer="21" curve="-180"/>
<wire x1="-4.6228" y1="1.4526" x2="-4.6228" y2="0.6096" width="0.2032" layer="21"/>
<wire x1="-4.6228" y1="-1.6653" x2="-4.6228" y2="-0.6604" width="0.2032" layer="21"/>
<smd name="1" x="-3.81" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="2" x="-2.54" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="3" x="-1.27" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="4" x="0" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="5" x="1.27" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="6" x="2.54" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="7" x="3.81" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="8" x="3.81" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="9" x="2.54" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="10" x="1.27" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="11" x="0" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="12" x="-1.27" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="13" x="-2.54" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="14" x="-3.81" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<text x="-3.175" y="0.635" size="0.6096" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-1.27" size="0.6096" layer="27">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-3.302" x2="-3.556" y2="-2.2733" layer="51"/>
<rectangle x1="-2.794" y1="-3.302" x2="-2.286" y2="-2.2733" layer="51"/>
<rectangle x1="-1.524" y1="-3.302" x2="-1.016" y2="-2.2733" layer="51"/>
<rectangle x1="-0.254" y1="-3.302" x2="0.254" y2="-2.2733" layer="51"/>
<rectangle x1="1.016" y1="-3.302" x2="1.524" y2="-2.2733" layer="51"/>
<rectangle x1="2.286" y1="-3.302" x2="2.794" y2="-2.2733" layer="51"/>
<rectangle x1="3.556" y1="-3.302" x2="4.064" y2="-2.2733" layer="51"/>
<rectangle x1="-4.064" y1="2.286" x2="-3.556" y2="3.3655" layer="51"/>
<rectangle x1="-2.794" y1="2.286" x2="-2.286" y2="3.302" layer="51"/>
<rectangle x1="-1.524" y1="2.286" x2="-1.016" y2="3.302" layer="51"/>
<rectangle x1="-0.254" y1="2.286" x2="0.254" y2="3.302" layer="51"/>
<rectangle x1="1.016" y1="2.286" x2="1.524" y2="3.302" layer="51"/>
<rectangle x1="2.286" y1="2.286" x2="2.794" y2="3.302" layer="51"/>
<rectangle x1="3.556" y1="2.286" x2="4.064" y2="3.302" layer="51"/>
</package>
<package name="DIL14">
<wire x1="7.62" y1="2.921" x2="7.62" y2="-2.921" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="-1.016" x2="-10.16" y2="1.016" width="0.2032" layer="21" curve="180"/>
<wire x1="-10.16" y1="2.921" x2="-9.906" y2="2.921" width="0.2032" layer="21"/>
<wire x1="7.62" y1="2.921" x2="7.366" y2="2.921" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-9.906" y2="-2.921" width="0.2032" layer="21"/>
<wire x1="7.62" y1="-2.921" x2="7.366" y2="-2.921" width="0.2032" layer="21"/>
<wire x1="-7.9502" y1="2.921" x2="-7.2898" y2="2.921" width="0.2032" layer="21"/>
<wire x1="-5.4102" y1="2.921" x2="-4.7498" y2="2.921" width="0.2032" layer="21"/>
<wire x1="-2.8702" y1="2.921" x2="-2.2098" y2="2.921" width="0.2032" layer="21"/>
<wire x1="-0.3302" y1="2.921" x2="0.3302" y2="2.921" width="0.2032" layer="21"/>
<wire x1="2.2098" y1="2.921" x2="2.8702" y2="2.921" width="0.2032" layer="21"/>
<wire x1="4.7498" y1="2.921" x2="5.4102" y2="2.921" width="0.2032" layer="21"/>
<wire x1="4.7498" y1="-2.921" x2="5.4102" y2="-2.921" width="0.2032" layer="21"/>
<wire x1="2.2098" y1="-2.921" x2="2.8702" y2="-2.921" width="0.2032" layer="21"/>
<wire x1="-0.3302" y1="-2.921" x2="0.3302" y2="-2.921" width="0.2032" layer="21"/>
<wire x1="-2.8702" y1="-2.921" x2="-2.2098" y2="-2.921" width="0.2032" layer="21"/>
<wire x1="-5.4102" y1="-2.921" x2="-4.7498" y2="-2.921" width="0.2032" layer="21"/>
<wire x1="-7.9502" y1="-2.921" x2="-7.2898" y2="-2.921" width="0.2032" layer="21"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-6.35" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-1.778" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ATTINY84">
<wire x1="-20.32" y1="17.78" x2="20.32" y2="17.78" width="0.254" layer="94"/>
<wire x1="20.32" y1="17.78" x2="20.32" y2="-17.78" width="0.254" layer="94"/>
<wire x1="20.32" y1="-17.78" x2="-20.32" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-17.78" x2="-20.32" y2="17.78" width="0.254" layer="94"/>
<text x="-20.32" y="18.542" size="1.778" layer="95">&gt;NAME</text>
<text x="-20.32" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="-25.4" y="15.24" length="middle"/>
<pin name="(PCINT3/T0/ADC3)PA3" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="(PCINT2/AIN1/ADC2)PA2" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="(PCINT1/AIN0/ADC1)PA1" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="(PCINT0/AREF/ADC0)PA0" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="(PCINT4/T1/SCL/USCK/ADC4)PA4" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="(PCINT5/OC1B/MISO/DO/ADC5)PA5" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="(PCINT6/OC1A/SDA/MOSI/ADC6)PA6" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="(PCINT7/ICP/OC0B/ADC7)PA7" x="25.4" y="2.54" length="middle" rot="R180"/>
<pin name="(PCINT8/XTAL1/CLKI)PB0" x="25.4" y="7.62" length="middle" rot="R180"/>
<pin name="(PCINT9/XTAL2)PB1" x="25.4" y="10.16" length="middle" rot="R180"/>
<pin name="(PCINT10/INT0/OC0A/CKOUT)PB2" x="25.4" y="12.7" length="middle" rot="R180"/>
<pin name="(PCINT11/~RESET/DW)PB3" x="25.4" y="15.24" length="middle" rot="R180"/>
<pin name="GND" x="-25.4" y="-15.24" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATTINY84">
<description>Atmel 14-pin 2/4/8kB flash uC</description>
<gates>
<gate name="G$1" symbol="ATTINY84" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SO14">
<connects>
<connect gate="G$1" pin="(PCINT0/AREF/ADC0)PA0" pad="13"/>
<connect gate="G$1" pin="(PCINT1/AIN0/ADC1)PA1" pad="12"/>
<connect gate="G$1" pin="(PCINT10/INT0/OC0A/CKOUT)PB2" pad="5"/>
<connect gate="G$1" pin="(PCINT11/~RESET/DW)PB3" pad="4"/>
<connect gate="G$1" pin="(PCINT2/AIN1/ADC2)PA2" pad="11"/>
<connect gate="G$1" pin="(PCINT3/T0/ADC3)PA3" pad="10"/>
<connect gate="G$1" pin="(PCINT4/T1/SCL/USCK/ADC4)PA4" pad="9"/>
<connect gate="G$1" pin="(PCINT5/OC1B/MISO/DO/ADC5)PA5" pad="8"/>
<connect gate="G$1" pin="(PCINT6/OC1A/SDA/MOSI/ADC6)PA6" pad="7"/>
<connect gate="G$1" pin="(PCINT7/ICP/OC0B/ADC7)PA7" pad="6"/>
<connect gate="G$1" pin="(PCINT8/XTAL1/CLKI)PB0" pad="2"/>
<connect gate="G$1" pin="(PCINT9/XTAL2)PB1" pad="3"/>
<connect gate="G$1" pin="GND" pad="14"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ATTINY84-20PU" package="DIL14">
<connects>
<connect gate="G$1" pin="(PCINT0/AREF/ADC0)PA0" pad="13"/>
<connect gate="G$1" pin="(PCINT1/AIN0/ADC1)PA1" pad="12"/>
<connect gate="G$1" pin="(PCINT10/INT0/OC0A/CKOUT)PB2" pad="5"/>
<connect gate="G$1" pin="(PCINT11/~RESET/DW)PB3" pad="4"/>
<connect gate="G$1" pin="(PCINT2/AIN1/ADC2)PA2" pad="11"/>
<connect gate="G$1" pin="(PCINT3/T0/ADC3)PA3" pad="10"/>
<connect gate="G$1" pin="(PCINT4/T1/SCL/USCK/ADC4)PA4" pad="9"/>
<connect gate="G$1" pin="(PCINT5/OC1B/MISO/DO/ADC5)PA5" pad="8"/>
<connect gate="G$1" pin="(PCINT6/OC1A/SDA/MOSI/ADC6)PA6" pad="7"/>
<connect gate="G$1" pin="(PCINT7/ICP/OC0B/ADC7)PA7" pad="6"/>
<connect gate="G$1" pin="(PCINT8/XTAL1/CLKI)PB0" pad="2"/>
<connect gate="G$1" pin="(PCINT9/XTAL2)PB1" pad="3"/>
<connect gate="G$1" pin="GND" pad="14"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find connectors and sockets- basically anything that can be plugged into or onto.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1X02">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="MOLEX-1X2">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="JST-2-SMD">
<description>2mm SMD side-entry connector. tDocu layer indicates the actual physical plastic housing. +/- indicate SparkFun standard batteries and wiring.</description>
<wire x1="-4" y1="-1" x2="-4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4.5" x2="-3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-4.5" x2="-3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-2" x2="-2" y2="-2" width="0.2032" layer="21"/>
<wire x1="2" y1="-2" x2="3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-2" x2="3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-4.5" x2="4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="4" y1="-4.5" x2="4" y2="-1" width="0.2032" layer="21"/>
<wire x1="2" y1="3" x2="-2" y2="3" width="0.2032" layer="21"/>
<smd name="1" x="-1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="2" x="1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="NC1" x="-3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="NC2" x="3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<text x="-1.27" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="0" size="0.4064" layer="27">&gt;Value</text>
<text x="2.159" y="-4.445" size="1.27" layer="51">+</text>
<text x="-2.921" y="-4.445" size="1.27" layer="51">-</text>
</package>
<package name="1X02_BIG">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.0668"/>
<pad name="P$2" x="3.81" y="0" drill="1.0668"/>
</package>
<package name="JST-2-SMD-VERT">
<wire x1="-4.1" y1="2.97" x2="4.2" y2="2.97" width="0.2032" layer="51"/>
<wire x1="4.2" y1="2.97" x2="4.2" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="4.2" y1="-2.13" x2="-4.1" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="-2.13" x2="-4.1" y2="2.97" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="3" x2="4.2" y2="3" width="0.2032" layer="21"/>
<wire x1="4.2" y1="3" x2="4.2" y2="2.3" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="3" x2="-4.1" y2="2.3" width="0.2032" layer="21"/>
<wire x1="2" y1="-2.1" x2="4.2" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="4.2" y1="-2.1" x2="4.2" y2="-1.7" width="0.2032" layer="21"/>
<wire x1="-2" y1="-2.1" x2="-4.1" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="-2.1" x2="-4.1" y2="-1.8" width="0.2032" layer="21"/>
<smd name="P$1" x="-3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="P$2" x="3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="VCC" x="-1" y="-2" dx="1" dy="5.5" layer="1"/>
<smd name="GND" x="1" y="-2" dx="1" dy="5.5" layer="1"/>
<text x="2.54" y="-5.08" size="1.27" layer="25">&gt;Name</text>
<text x="2.24" y="3.48" size="1.27" layer="27">&gt;Value</text>
</package>
<package name="R_SW_TH">
<wire x1="-1.651" y1="19.2532" x2="-1.651" y2="-1.3716" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="-1.3716" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="19.2532" x2="13.589" y2="19.2532" width="0.2032" layer="21"/>
<wire x1="13.589" y1="19.2532" x2="13.589" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="13.589" y1="-2.2352" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.6002"/>
<pad name="P$2" x="0" y="16.9926" drill="1.6002"/>
<pad name="P$3" x="12.0904" y="15.494" drill="1.6002"/>
<pad name="P$4" x="12.0904" y="8.4582" drill="1.6002"/>
</package>
<package name="SCREWTERMINAL-5MM-2">
<wire x1="-3.1" y1="4.2" x2="8.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="4.2" x2="8.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="8.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-3.3" x2="-3.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.3" x2="-3.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-1.35" x2="-3.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-1.35" x2="-3.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-2.35" x2="-3.1" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.1" y1="4" x2="8.7" y2="4" width="0.2032" layer="51"/>
<wire x1="8.7" y1="4" x2="8.7" y2="3" width="0.2032" layer="51"/>
<wire x1="8.7" y1="3" x2="8.1" y2="3" width="0.2032" layer="51"/>
<circle x="2.5" y="3.7" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" diameter="2.032" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LOCK">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-0.1778" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.7178" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="MOLEX-1X2_LOCK">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.667" y="0" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="1X02_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.651" y1="0" x2="0.889" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.016" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.9906" x2="-0.9906" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.9906" x2="-0.9906" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.556" y2="0" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.9906" x2="3.5306" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.9906" x2="3.5306" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.667" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2_LOCK">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<circle x="0" y="0" radius="0.4318" width="0.0254" layer="51"/>
<circle x="3.5" y="0" radius="0.4318" width="0.0254" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.6778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LONGPADS">
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
</package>
<package name="1X02_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-2-PTH">
<wire x1="-2" y1="0" x2="-2" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-2" y1="-1.6" x2="-2.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="-1.6" x2="-2.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="6" x2="2.95" y2="6" width="0.2032" layer="21"/>
<wire x1="2.95" y1="6" x2="2.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="2.95" y1="-1.6" x2="2" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="2" y1="-1.6" x2="2" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
</package>
<package name="1X02_XTRA_BIG">
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="2.0574" diameter="3.556"/>
<pad name="2" x="2.54" y="0" drill="2.0574" diameter="3.556"/>
</package>
<package name="1X02_PP_HOLES_ONLY">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2-NS">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="JST-2-PTH-NS">
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
</package>
<package name="JST-2-PTH-KIT">
<description>&lt;H3&gt;JST-2-PTH-KIT&lt;/h3&gt;
2-Pin JST, through-hole connector&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<polygon width="0.127" layer="30">
<vertex x="-0.9975" y="-0.6604" curve="-90.025935"/>
<vertex x="-1.6604" y="0" curve="-90.017354"/>
<vertex x="-1" y="0.6604" curve="-90"/>
<vertex x="-0.3396" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1" y="-0.2865" curve="-90.08005"/>
<vertex x="-1.2865" y="0" curve="-90.040011"/>
<vertex x="-1" y="0.2865" curve="-90"/>
<vertex x="-0.7135" y="0" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.0025" y="-0.6604" curve="-90.025935"/>
<vertex x="0.3396" y="0" curve="-90.017354"/>
<vertex x="1" y="0.6604" curve="-90"/>
<vertex x="1.6604" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1" y="-0.2865" curve="-90.08005"/>
<vertex x="0.7135" y="0" curve="-90.040011"/>
<vertex x="1" y="0.2865" curve="-90"/>
<vertex x="1.2865" y="0" curve="-90"/>
</polygon>
</package>
<package name="SPRINGTERMINAL-2.54MM-2">
<wire x1="-4.2" y1="7.88" x2="-4.2" y2="-2.8" width="0.254" layer="21"/>
<wire x1="-4.2" y1="-2.8" x2="-4.2" y2="-4.72" width="0.254" layer="51"/>
<wire x1="-4.2" y1="-4.72" x2="3.44" y2="-4.72" width="0.254" layer="51"/>
<wire x1="3.44" y1="-4.72" x2="3.44" y2="-2.8" width="0.254" layer="51"/>
<wire x1="3.44" y1="7.88" x2="-4.2" y2="7.88" width="0.254" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="1"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="1"/>
<wire x1="-4.2" y1="-2.8" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<wire x1="3.44" y1="4" x2="3.44" y2="1" width="0.254" layer="21"/>
<wire x1="3.44" y1="7.88" x2="3.44" y2="6" width="0.254" layer="21"/>
<wire x1="3.44" y1="-0.9" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1" diameter="1.9"/>
<pad name="P$2" x="0" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="P$3" x="2.54" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="2" x="2.54" y="0" drill="1.1" diameter="1.9"/>
</package>
<package name="1X02_2.54_SCREWTERM">
<pad name="P2" x="0" y="0" drill="1.016" shape="square"/>
<pad name="P1" x="2.54" y="0" drill="1.016" shape="square"/>
<wire x1="-1.5" y1="3.25" x2="4" y2="3.25" width="0.127" layer="21"/>
<wire x1="4" y1="3.25" x2="4" y2="2.5" width="0.127" layer="21"/>
<wire x1="4" y1="2.5" x2="4" y2="-3.25" width="0.127" layer="21"/>
<wire x1="4" y1="-3.25" x2="-1.5" y2="-3.25" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-3.25" x2="-1.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="-1.5" y2="3.25" width="0.127" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="4" y2="2.5" width="0.127" layer="21"/>
</package>
<package name="JST-2-PTH-VERT">
<wire x1="-2.95" y1="-2.25" x2="-2.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="2.25" x2="2.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="2.95" y1="2.25" x2="2.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="2.95" y1="-2.25" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.25" x2="-2.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="1" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.75" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="-1" y2="-2.25" width="0.2032" layer="21"/>
<pad name="1" x="-1" y="-0.55" drill="0.7" diameter="1.6256"/>
<pad name="2" x="1" y="-0.55" drill="0.7" diameter="1.6256"/>
<text x="-1.984" y="3" size="0.4064" layer="25">&gt;Name</text>
<text x="2.016" y="3" size="0.4064" layer="27">&gt;Value</text>
<text x="0.616" y="0.75" size="1.27" layer="51">+</text>
<text x="-1.384" y="0.75" size="1.27" layer="51">-</text>
</package>
<package name="1X01_LONGPAD">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="LUXEON-PAD">
<smd name="P$1" x="0" y="0" dx="3.9" dy="2.4" layer="1" roundness="25"/>
<text x="-1.5" y="2" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.5" y="-3" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SMTSO-256-ET">
<wire x1="-2.286" y1="1.016" x2="-1.016" y2="2.286" width="1.016" layer="31" curve="-42.075022"/>
<wire x1="1.016" y1="2.286" x2="2.286" y2="1.016" width="1.016" layer="31" curve="-42.075022"/>
<wire x1="2.286" y1="-1.016" x2="1.016" y2="-2.286" width="1.016" layer="31" curve="-42.075022"/>
<wire x1="-1.016" y1="-2.286" x2="-2.286" y2="-1.016" width="1.016" layer="31" curve="-42.075022"/>
<circle x="0" y="0" radius="1.016" width="0.127" layer="51"/>
<pad name="P$1" x="0" y="0" drill="3.81" diameter="6.1976"/>
</package>
<package name="SMTRA-256-8-6">
<pad name="P$1" x="-1.9939" y="0" drill="1.3462"/>
<pad name="P$2" x="1.9939" y="0" drill="1.3462"/>
<smd name="P$3" x="0" y="0" dx="6.6548" dy="4.3434" layer="1" cream="no"/>
<text x="1.27" y="2.54" size="0.4064" layer="27">&gt;Value</text>
<text x="-2.54" y="2.54" size="0.4064" layer="25">&gt;Name</text>
<rectangle x1="-3.302" y1="0.762" x2="3.302" y2="2.032" layer="31"/>
<rectangle x1="-1.016" y1="0.508" x2="1.016" y2="0.762" layer="31"/>
<rectangle x1="-1.016" y1="-1.016" x2="1.016" y2="-0.762" layer="31"/>
<rectangle x1="-3.302" y1="-2.032" x2="3.302" y2="-0.762" layer="31"/>
<rectangle x1="-1.016" y1="-0.762" x2="1.016" y2="-0.508" layer="31"/>
<rectangle x1="2.794" y1="0.508" x2="3.302" y2="0.762" layer="31"/>
<rectangle x1="2.794" y1="-0.762" x2="3.302" y2="-0.508" layer="31"/>
<rectangle x1="-3.302" y1="-0.762" x2="-2.794" y2="-0.508" layer="31"/>
<rectangle x1="-3.302" y1="0.508" x2="-2.794" y2="0.762" layer="31"/>
</package>
<package name="1X01NS">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
</package>
<package name="1X01">
<wire x1="1.27" y1="0.635" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="-0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="1.1938" y="1.8288" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X01_2MM">
<pad name="1" x="0" y="0" drill="2" diameter="3.302" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="1X01_OFFSET">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="offset" rot="R90"/>
<text x="1.1938" y="1.8288" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="PAD-1.5X4.5">
<smd name="P$1" x="0" y="0" dx="1.5" dy="2" layer="1"/>
</package>
<package name="1X01_POGOPIN_HOLE_LARGE">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="0.8128" rot="R90" thermals="no"/>
<hole x="0" y="0" drill="1.5494"/>
</package>
<package name="1X01_POGOPIN_HOLE_0.58">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="0.8128" rot="R90" thermals="no"/>
<hole x="0" y="0" drill="1.4732"/>
</package>
<package name="SNAP-FEMALE">
<pad name="1" x="0" y="0" drill="2.921" diameter="4.572"/>
<polygon width="0.254" layer="1">
<vertex x="-4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="4.0005" curve="-90.002865"/>
<vertex x="4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="-4.0005" curve="-89.997136"/>
</polygon>
<polygon width="0.3556" layer="29">
<vertex x="-4.0005" y="0" curve="-90.002865"/>
<vertex x="0" y="4.0005" curve="-90.002865"/>
<vertex x="4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="-4.0005" curve="-89.997136"/>
</polygon>
<polygon width="0.3556" layer="31">
<vertex x="-4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="4.0005" curve="-90.002865"/>
<vertex x="4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="-4.0005" curve="-89.997136"/>
</polygon>
<polygon width="0.3556" layer="41">
<vertex x="-4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="4.0005" curve="-90.002865"/>
<vertex x="4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="-4.0005" curve="-89.997136"/>
</polygon>
</package>
<package name="SNAP-MALE">
<smd name="2" x="0" y="0" dx="7.62" dy="7.62" layer="1" roundness="100"/>
</package>
<package name="SPRING-CONNECTOR">
<smd name="P$2" x="0" y="0" dx="7.112" dy="7.112" layer="1" roundness="100"/>
<text x="-1.3462" y="5.6388" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-5.715" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="1X01NS-KIT">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90" stop="no"/>
<circle x="0" y="0" radius="0.508" width="0" layer="29"/>
<circle x="0" y="0" radius="0.9398" width="0" layer="30"/>
</package>
</packages>
<symbols>
<symbol name="M02">
<wire x1="3.81" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M01">
<wire x1="3.81" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="off" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M02" prefix="JP">
<description>Standard 2-pin 0.1" header. Use with &lt;br&gt;
- straight break away headers ( PRT-00116)&lt;br&gt;
- right angle break away headers (PRT-00553)&lt;br&gt;
- swiss pins (PRT-00743)&lt;br&gt;
- machine pins (PRT-00117)&lt;br&gt;
- female headers (PRT-00115)&lt;br&gt;&lt;br&gt;

 Molex polarized connector foot print use with: PRT-08233 with associated crimp pins and housings.&lt;br&gt;&lt;br&gt;

2.54_SCREWTERM for use with  PRT-10571.&lt;br&gt;&lt;br&gt;

3.5mm Screw Terminal footprints for  PRT-08084&lt;br&gt;&lt;br&gt;

5mm Screw Terminal footprints for use with PRT-08433</description>
<gates>
<gate name="G$1" symbol="M02" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM" package="SCREWTERMINAL-3.5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-JST-2MM-SMT" package="JST-2-SMD">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
<connect gate="G$1" pin="2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08352"/>
</technology>
</technologies>
</device>
<device name="PTH2" package="1X02_BIG">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4UCON-15767" package="JST-2-SMD-VERT">
<connects>
<connect gate="G$1" pin="1" pad="GND"/>
<connect gate="G$1" pin="2" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ROCKER" package="R_SW_TH">
<connects>
<connect gate="G$1" pin="1" pad="P$3"/>
<connect gate="G$1" pin="2" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="SCREWTERMINAL-5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK" package="1X02_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X02_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM_LOCK" package="SCREWTERMINAL-3.5MM-2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="1X02_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X02_NO_SILK" package="1X02_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2" package="JST-2-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SKU" value="PRT-09914" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH4" package="1X02_XTRA_BIG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGO_PIN_HOLES_ONLY" package="1X02_PP_HOLES_ONLY">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM-NO_SILK" package="SCREWTERMINAL-3.5MM-2-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-JST-2-PTH-NO_SILK" package="JST-2-PTH-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2-KIT" package="JST-2-PTH-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SPRING-2.54-RA" package="SPRINGTERMINAL-2.54MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.54MM_SCREWTERM" package="1X02_2.54_SCREWTERM">
<connects>
<connect gate="G$1" pin="1" pad="P1"/>
<connect gate="G$1" pin="2" pad="P2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-VERT" package="JST-2-PTH-VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="M01" prefix="JP">
<description>&lt;b&gt;Header 1&lt;/b&gt;
Standard 1-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115).</description>
<gates>
<gate name="G$1" symbol="M01" x="0" y="0"/>
</gates>
<devices>
<device name="PTH_LONGPAD" package="1X01_LONGPAD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="LUXEON-PAD">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-SMTSO-256-ET" package="SMTSO-256-ET">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMTRA-256-8-6" package="SMTRA-256-8-6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMDNS" package="1X01NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH" package="1X01">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_2MM" package="1X01_2MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="OFFSET" package="1X01_OFFSET">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-4.5X1.5" package="PAD-1.5X4.5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGOPIN_HOLE_LARGE" package="1X01_POGOPIN_HOLE_LARGE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGOPIN_HOLE_0.58" package="1X01_POGOPIN_HOLE_0.58">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SNAP-FEMALE" package="SNAP-FEMALE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SNAP-MALE" package="SNAP-MALE">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SPRING-CONN" package="SPRING-CONNECTOR">
<connects>
<connect gate="G$1" pin="1" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="NOSILK-KIT" package="1X01NS-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Microchip_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/07/2012 11:22:31</description>
<packages>
<package name="SOT95P237X112-3N">
<smd name="1" x="-0.9398" y="-1.0414" dx="0.5588" dy="1.27" layer="1"/>
<smd name="2" x="0.9398" y="-1.0414" dx="0.5588" dy="1.27" layer="1"/>
<smd name="3" x="0" y="1.0414" dx="0.5588" dy="1.27" layer="1"/>
<wire x1="-0.6858" y1="-0.7112" x2="-1.1938" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.7112" x2="-1.1938" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-1.3208" x2="-0.6858" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="-1.3208" x2="-0.6858" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.7112" x2="0.6858" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-0.7112" x2="0.6858" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-1.3208" x2="1.1938" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-1.3208" x2="1.1938" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.7112" x2="0.254" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.7112" x2="0.254" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.3208" x2="-0.254" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.3208" x2="-0.254" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.7112" x2="1.524" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.7112" x2="1.524" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0.7112" x2="-1.524" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.7112" x2="-1.524" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="0.7112" x2="-1.524" y2="0.7112" width="0.1524" layer="21"/>
<wire x1="-0.3302" y1="-0.7112" x2="0.3302" y2="-0.7112" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.254" x2="1.524" y2="0.7112" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.7112" x2="0.6096" y2="0.7112" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.7112" x2="-1.524" y2="-0.254" width="0.1524" layer="21"/>
<text x="-4.5212" y="2.159" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.461" y="-4.2418" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MCP1700T-3002E/TT">
<pin name="VIN" x="-17.78" y="0" length="middle" direction="in"/>
<pin name="GND" x="-17.78" y="-5.08" length="middle" direction="pas"/>
<pin name="VOUT" x="17.78" y="0" length="middle" direction="out" rot="R180"/>
<wire x1="-12.7" y1="5.08" x2="-12.7" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="12.7" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="5.08" width="0.4064" layer="94"/>
<wire x1="12.7" y1="5.08" x2="-12.7" y2="5.08" width="0.4064" layer="94"/>
<text x="-4.7244" y="9.1186" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.7912" y="-14.097" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MCP1700T-3002E/TT">
<description>Low Quiescent Current LDO</description>
<gates>
<gate name="A" symbol="MCP1700T-3002E/TT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT95P237X112-3N">
<connects>
<connect gate="A" pin="GND" pad="1"/>
<connect gate="A" pin="VIN" pad="3"/>
<connect gate="A" pin="VOUT" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="MCP1700T-3002E/TT" constant="no"/>
<attribute name="OC_FARNELL" value="1331482" constant="no"/>
<attribute name="OC_NEWARK" value="84R5176" constant="no"/>
<attribute name="PACKAGE" value="SOT23-3" constant="no"/>
<attribute name="SUPPLIER" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Capacitors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="0603-CAP">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.5588" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
</packages>
<symbols>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="10UF-6.3V-20%(0603)" prefix="C" uservalue="yes">
<description>CAP-11015</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-11015" constant="no"/>
<attribute name="VALUE" value="10uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$2" library="JeeParts" deviceset="RFM12B" device=""/>
<part name="GND1" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY1" library="SparkFun-Aesthetics" deviceset="VCC" device=""/>
<part name="U$1" library="SparkFun-DigitalIC" deviceset="ATTINY84" device=""/>
<part name="R1" library="SparkFun-Resistors" deviceset="RESISTOR" device="0805-RES" value="10k"/>
<part name="JP1" library="SparkFun-Connectors" deviceset="M02" device="PTH3"/>
<part name="JP2" library="SparkFun-Connectors" deviceset="M01" device="PTH_LONGPAD"/>
<part name="U$3" library="Microchip_By_element14_Batch_1" deviceset="MCP1700T-3002E/TT" device=""/>
<part name="C1" library="SparkFun-Capacitors" deviceset="10UF-6.3V-20%(0603)" device="" value="10uF"/>
<part name="C2" library="SparkFun-Capacitors" deviceset="10UF-6.3V-20%(0603)" device="" value="10uF"/>
<part name="GND2" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="JP3" library="SparkFun-Connectors" deviceset="M02" device="PTH3" value="Themistor"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$2" gate="G$1" x="88.9" y="22.86" rot="R270"/>
<instance part="GND1" gate="1" x="106.68" y="68.58"/>
<instance part="SUPPLY1" gate="1" x="15.24" y="104.14"/>
<instance part="U$1" gate="G$1" x="38.1" y="58.42"/>
<instance part="R1" gate="G$1" x="106.68" y="93.98" rot="R90"/>
<instance part="JP1" gate="G$1" x="-63.5" y="71.12"/>
<instance part="JP2" gate="G$1" x="83.82" y="2.54" rot="R90"/>
<instance part="U$3" gate="A" x="-15.24" y="73.66"/>
<instance part="C1" gate="G$1" x="-43.18" y="48.26"/>
<instance part="C2" gate="G$1" x="2.54" y="48.26"/>
<instance part="GND2" gate="1" x="2.54" y="20.32"/>
<instance part="JP3" gate="G$1" x="93.98" y="76.2"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="IRQ"/>
<pinref part="U$1" gate="G$1" pin="(PCINT10/INT0/OC0A/CKOUT)PB2"/>
<wire x1="81.28" y1="35.56" x2="81.28" y2="71.12" width="0.1524" layer="91"/>
<wire x1="81.28" y1="71.12" x2="63.5" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SDO"/>
<pinref part="U$1" gate="G$1" pin="(PCINT6/OC1A/SDA/MOSI/ADC6)PA6"/>
<wire x1="86.36" y1="35.56" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
<wire x1="86.36" y1="58.42" x2="63.5" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SDI"/>
<pinref part="U$1" gate="G$1" pin="(PCINT5/OC1B/MISO/DO/ADC5)PA5"/>
<wire x1="88.9" y1="35.56" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
<wire x1="88.9" y1="55.88" x2="63.5" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SCK"/>
<pinref part="U$1" gate="G$1" pin="(PCINT4/T1/SCL/USCK/ADC4)PA4"/>
<wire x1="91.44" y1="35.56" x2="91.44" y2="53.34" width="0.1524" layer="91"/>
<wire x1="91.44" y1="53.34" x2="63.5" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SEL"/>
<wire x1="93.98" y1="35.56" x2="93.98" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="(PCINT9/XTAL2)PB1"/>
<wire x1="93.98" y1="68.58" x2="63.5" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="106.68" y1="88.9" x2="106.68" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="(PCINT8/XTAL1/CLKI)PB0"/>
<wire x1="63.5" y1="66.04" x2="68.58" y2="66.04" width="0.1524" layer="91"/>
<wire x1="106.68" y1="86.36" x2="68.58" y2="86.36" width="0.1524" layer="91"/>
<wire x1="68.58" y1="86.36" x2="68.58" y2="66.04" width="0.1524" layer="91"/>
<junction x="106.68" y="86.36"/>
<pinref part="JP3" gate="G$1" pin="2"/>
<wire x1="101.6" y1="78.74" x2="106.68" y2="78.74" width="0.1524" layer="91"/>
<wire x1="106.68" y1="78.74" x2="106.68" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="ANT"/>
<pinref part="JP2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="2"/>
<pinref part="U$3" gate="A" pin="VIN"/>
<wire x1="-55.88" y1="73.66" x2="-43.18" y2="73.66" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-43.18" y1="73.66" x2="-33.02" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="53.34" x2="-43.18" y2="73.66" width="0.1524" layer="91"/>
<junction x="-43.18" y="73.66"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="VCC"/>
<wire x1="101.6" y1="22.86" x2="119.38" y2="22.86" width="0.1524" layer="91"/>
<wire x1="119.38" y1="22.86" x2="119.38" y2="99.06" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="119.38" y1="99.06" x2="106.68" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<wire x1="2.54" y1="73.66" x2="12.7" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$3" gate="A" pin="VOUT"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="2.54" y1="73.66" x2="2.54" y2="53.34" width="0.1524" layer="91"/>
<junction x="2.54" y="73.66"/>
<wire x1="106.68" y1="99.06" x2="15.24" y2="99.06" width="0.1524" layer="91"/>
<wire x1="15.24" y1="99.06" x2="2.54" y2="99.06" width="0.1524" layer="91"/>
<wire x1="2.54" y1="99.06" x2="2.54" y2="73.66" width="0.1524" layer="91"/>
<junction x="106.68" y="99.06"/>
<pinref part="SUPPLY1" gate="1" pin="VCC"/>
<wire x1="15.24" y1="104.14" x2="15.24" y2="99.06" width="0.1524" layer="91"/>
<junction x="15.24" y="99.06"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="JP3" gate="G$1" pin="1"/>
<wire x1="101.6" y1="76.2" x2="106.68" y2="76.2" width="0.1524" layer="91"/>
<wire x1="106.68" y1="76.2" x2="106.68" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="73.66" y1="22.86" x2="10.16" y2="22.86" width="0.1524" layer="91"/>
<wire x1="10.16" y1="22.86" x2="2.54" y2="22.86" width="0.1524" layer="91"/>
<wire x1="2.54" y1="22.86" x2="-35.56" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="22.86" x2="-43.18" y2="22.86" width="0.1524" layer="91"/>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="-43.18" y1="22.86" x2="-35.56" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="71.12" x2="-53.34" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="71.12" x2="-53.34" y2="22.86" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="-43.18" y1="45.72" x2="-43.18" y2="22.86" width="0.1524" layer="91"/>
<junction x="-43.18" y="22.86"/>
<pinref part="U$3" gate="A" pin="GND"/>
<wire x1="-33.02" y1="68.58" x2="-35.56" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="68.58" x2="-35.56" y2="22.86" width="0.1524" layer="91"/>
<junction x="-35.56" y="22.86"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="2.54" y1="45.72" x2="2.54" y2="22.86" width="0.1524" layer="91"/>
<junction x="2.54" y="22.86"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="12.7" y1="43.18" x2="10.16" y2="43.18" width="0.1524" layer="91"/>
<wire x1="10.16" y1="43.18" x2="10.16" y2="22.86" width="0.1524" layer="91"/>
<junction x="10.16" y="22.86"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
