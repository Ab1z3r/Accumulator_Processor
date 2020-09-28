<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(15:0)" />
        <signal name="wr(15:0)" />
        <signal name="XLXN_3(15:0)" />
        <signal name="Mem(15:0)" />
        <signal name="na(15:0)" />
        <signal name="ar(15:0)" />
        <signal name="rv(15:0)" />
        <signal name="sp(15:0)" />
        <signal name="ra(15:0)" />
        <signal name="tp(15:0)" />
        <signal name="Ext(15:0)" />
        <signal name="ma(15:0)" />
        <signal name="ALUInput2(3:0)" />
        <signal name="ALUInput1(3:0)" />
        <signal name="XLXN_21(15:0)" />
        <signal name="XLXN_22(15:0)" />
        <signal name="XLXN_23(15:0)" />
        <signal name="Delta" />
        <signal name="Din(15:0)" />
        <signal name="ALUOut(15:0)" />
        <signal name="ALUOp(2:0)" />
        <signal name="zero" />
        <signal name="overflow" />
        <signal name="greaterThan" />
        <signal name="lessThan" />
        <port polarity="Input" name="wr(15:0)" />
        <port polarity="Input" name="Mem(15:0)" />
        <port polarity="Input" name="na(15:0)" />
        <port polarity="Input" name="ar(15:0)" />
        <port polarity="Input" name="rv(15:0)" />
        <port polarity="Input" name="sp(15:0)" />
        <port polarity="Input" name="ra(15:0)" />
        <port polarity="Input" name="tp(15:0)" />
        <port polarity="Input" name="Ext(15:0)" />
        <port polarity="Input" name="ma(15:0)" />
        <port polarity="Input" name="ALUInput2(3:0)" />
        <port polarity="Input" name="ALUInput1(3:0)" />
        <port polarity="Input" name="Delta" />
        <port polarity="Input" name="Din(15:0)" />
        <port polarity="Output" name="ALUOut(15:0)" />
        <port polarity="Input" name="ALUOp(2:0)" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="overflow" />
        <port polarity="Output" name="greaterThan" />
        <port polarity="Output" name="lessThan" />
        <blockdef name="ALU16b">
            <timestamp>2020-2-12T2:29:28</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="mux_16b_2input">
            <timestamp>2020-2-12T2:31:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="mux_16b_10input">
            <timestamp>2020-2-12T2:40:34</timestamp>
            <rect width="256" x="64" y="-704" height="704" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-684" height="24" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
        </blockdef>
        <block symbolname="ALU16b" name="XLXI_3">
            <blockpin signalname="XLXN_21(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_22(15:0)" name="B(15:0)" />
            <blockpin signalname="ALUOp(2:0)" name="Op(2:0)" />
            <blockpin signalname="zero" name="zero" />
            <blockpin signalname="overflow" name="overflow" />
            <blockpin signalname="greaterThan" name="greaterThan" />
            <blockpin signalname="lessThan" name="lessThan" />
            <blockpin signalname="ALUOut(15:0)" name="ALUout(15:0)" />
        </block>
        <block symbolname="mux_16b_2input" name="XLXI_5">
            <blockpin signalname="Delta" name="Op" />
            <blockpin signalname="XLXN_23(15:0)" name="A(15:0)" />
            <blockpin signalname="Din(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_22(15:0)" name="Output(15:0)" />
        </block>
        <block symbolname="mux_16b_10input" name="XLXI_6">
            <blockpin signalname="wr(15:0)" name="A(15:0)" />
            <blockpin signalname="Mem(15:0)" name="B(15:0)" />
            <blockpin signalname="ar(15:0)" name="C(15:0)" />
            <blockpin signalname="na(15:0)" name="D(15:0)" />
            <blockpin signalname="rv(15:0)" name="E(15:0)" />
            <blockpin signalname="sp(15:0)" name="F(15:0)" />
            <blockpin signalname="ra(15:0)" name="G(15:0)" />
            <blockpin signalname="tp(15:0)" name="H(15:0)" />
            <blockpin signalname="Ext(15:0)" name="I(15:0)" />
            <blockpin signalname="ma(15:0)" name="J(15:0)" />
            <blockpin signalname="ALUInput1(3:0)" name="Op(3:0)" />
            <blockpin signalname="XLXN_21(15:0)" name="Output(15:0)" />
        </block>
        <block symbolname="mux_16b_10input" name="XLXI_7">
            <blockpin signalname="wr(15:0)" name="A(15:0)" />
            <blockpin signalname="Mem(15:0)" name="B(15:0)" />
            <blockpin signalname="ar(15:0)" name="C(15:0)" />
            <blockpin signalname="na(15:0)" name="D(15:0)" />
            <blockpin signalname="rv(15:0)" name="E(15:0)" />
            <blockpin signalname="sp(15:0)" name="F(15:0)" />
            <blockpin signalname="ra(15:0)" name="G(15:0)" />
            <blockpin signalname="tp(15:0)" name="H(15:0)" />
            <blockpin signalname="Ext(15:0)" name="I(15:0)" />
            <blockpin signalname="ma(15:0)" name="J(15:0)" />
            <blockpin signalname="ALUInput2(3:0)" name="Op(3:0)" />
            <blockpin signalname="XLXN_23(15:0)" name="Output(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2208" y="1344" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1744" y="1584" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1040" y="1136" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1040" y="2064" name="XLXI_7" orien="R0">
        </instance>
        <branch name="wr(15:0)">
            <wire x2="960" y1="320" y2="464" x1="960" />
            <wire x2="1040" y1="464" y2="464" x1="960" />
            <wire x2="960" y1="464" y2="1392" x1="960" />
            <wire x2="1040" y1="1392" y2="1392" x1="960" />
        </branch>
        <iomarker fontsize="28" x="960" y="320" name="wr(15:0)" orien="R270" />
        <branch name="Mem(15:0)">
            <wire x2="912" y1="320" y2="528" x1="912" />
            <wire x2="1040" y1="528" y2="528" x1="912" />
            <wire x2="912" y1="528" y2="1456" x1="912" />
            <wire x2="1040" y1="1456" y2="1456" x1="912" />
        </branch>
        <iomarker fontsize="28" x="912" y="320" name="Mem(15:0)" orien="R270" />
        <branch name="na(15:0)">
            <wire x2="816" y1="320" y2="656" x1="816" />
            <wire x2="1040" y1="656" y2="656" x1="816" />
            <wire x2="816" y1="656" y2="1584" x1="816" />
            <wire x2="1040" y1="1584" y2="1584" x1="816" />
        </branch>
        <branch name="ar(15:0)">
            <wire x2="864" y1="320" y2="592" x1="864" />
            <wire x2="864" y1="592" y2="1520" x1="864" />
            <wire x2="1040" y1="1520" y2="1520" x1="864" />
            <wire x2="1040" y1="592" y2="592" x1="864" />
        </branch>
        <branch name="rv(15:0)">
            <wire x2="768" y1="320" y2="720" x1="768" />
            <wire x2="768" y1="720" y2="1648" x1="768" />
            <wire x2="1040" y1="1648" y2="1648" x1="768" />
            <wire x2="1040" y1="720" y2="720" x1="768" />
        </branch>
        <branch name="sp(15:0)">
            <wire x2="720" y1="320" y2="784" x1="720" />
            <wire x2="720" y1="784" y2="1712" x1="720" />
            <wire x2="1040" y1="1712" y2="1712" x1="720" />
            <wire x2="1040" y1="784" y2="784" x1="720" />
        </branch>
        <iomarker fontsize="28" x="768" y="320" name="rv(15:0)" orien="R270" />
        <iomarker fontsize="28" x="864" y="320" name="ar(15:0)" orien="R270" />
        <iomarker fontsize="28" x="816" y="320" name="na(15:0)" orien="R270" />
        <iomarker fontsize="28" x="720" y="320" name="sp(15:0)" orien="R270" />
        <branch name="ra(15:0)">
            <wire x2="672" y1="320" y2="848" x1="672" />
            <wire x2="1040" y1="848" y2="848" x1="672" />
            <wire x2="672" y1="848" y2="1776" x1="672" />
            <wire x2="1040" y1="1776" y2="1776" x1="672" />
        </branch>
        <branch name="tp(15:0)">
            <wire x2="624" y1="320" y2="912" x1="624" />
            <wire x2="1040" y1="912" y2="912" x1="624" />
            <wire x2="624" y1="912" y2="1840" x1="624" />
            <wire x2="1040" y1="1840" y2="1840" x1="624" />
        </branch>
        <branch name="Ext(15:0)">
            <wire x2="576" y1="320" y2="976" x1="576" />
            <wire x2="1040" y1="976" y2="976" x1="576" />
            <wire x2="576" y1="976" y2="1904" x1="576" />
            <wire x2="1040" y1="1904" y2="1904" x1="576" />
        </branch>
        <branch name="ma(15:0)">
            <wire x2="528" y1="320" y2="1040" x1="528" />
            <wire x2="1040" y1="1040" y2="1040" x1="528" />
            <wire x2="528" y1="1040" y2="1968" x1="528" />
            <wire x2="1040" y1="1968" y2="1968" x1="528" />
        </branch>
        <branch name="ALUInput2(3:0)">
            <wire x2="896" y1="2032" y2="2032" x1="480" />
            <wire x2="1040" y1="2032" y2="2032" x1="896" />
        </branch>
        <branch name="ALUInput1(3:0)">
            <wire x2="1040" y1="1104" y2="1104" x1="480" />
        </branch>
        <iomarker fontsize="28" x="624" y="320" name="tp(15:0)" orien="R270" />
        <iomarker fontsize="28" x="528" y="320" name="ma(15:0)" orien="R270" />
        <iomarker fontsize="28" x="480" y="1104" name="ALUInput1(3:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="2032" name="ALUInput2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="672" y="320" name="ra(15:0)" orien="R270" />
        <iomarker fontsize="28" x="576" y="320" name="Ext(15:0)" orien="R270" />
        <branch name="XLXN_21(15:0)">
            <wire x2="1808" y1="464" y2="464" x1="1424" />
            <wire x2="1808" y1="464" y2="1056" x1="1808" />
            <wire x2="2208" y1="1056" y2="1056" x1="1808" />
        </branch>
        <branch name="XLXN_22(15:0)">
            <wire x2="2160" y1="1424" y2="1424" x1="2128" />
            <wire x2="2160" y1="1184" y2="1424" x1="2160" />
            <wire x2="2192" y1="1184" y2="1184" x1="2160" />
            <wire x2="2208" y1="1184" y2="1184" x1="2192" />
        </branch>
        <branch name="XLXN_23(15:0)">
            <wire x2="1440" y1="1392" y2="1392" x1="1424" />
            <wire x2="1584" y1="1392" y2="1392" x1="1440" />
            <wire x2="1584" y1="1392" y2="1488" x1="1584" />
            <wire x2="1744" y1="1488" y2="1488" x1="1584" />
        </branch>
        <branch name="Delta">
            <wire x2="1712" y1="1424" y2="1424" x1="1696" />
            <wire x2="1744" y1="1424" y2="1424" x1="1712" />
        </branch>
        <branch name="Din(15:0)">
            <wire x2="1712" y1="1552" y2="1552" x1="1696" />
            <wire x2="1744" y1="1552" y2="1552" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1696" y="1424" name="Delta" orien="R180" />
        <iomarker fontsize="28" x="1696" y="1552" name="Din(15:0)" orien="R180" />
        <branch name="ALUOut(15:0)">
            <wire x2="2624" y1="1312" y2="1312" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1312" name="ALUOut(15:0)" orien="R0" />
        <branch name="ALUOp(2:0)">
            <wire x2="2208" y1="1312" y2="1312" x1="2192" />
            <wire x2="2192" y1="1312" y2="1408" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1408" name="ALUOp(2:0)" orien="R90" />
        <branch name="zero">
            <wire x2="2624" y1="1056" y2="1056" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1056" name="zero" orien="R0" />
        <branch name="overflow">
            <wire x2="2624" y1="1120" y2="1120" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1120" name="overflow" orien="R0" />
        <branch name="greaterThan">
            <wire x2="2624" y1="1184" y2="1184" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1184" name="greaterThan" orien="R0" />
        <branch name="lessThan">
            <wire x2="2624" y1="1248" y2="1248" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1248" name="lessThan" orien="R0" />
    </sheet>
</drawing>