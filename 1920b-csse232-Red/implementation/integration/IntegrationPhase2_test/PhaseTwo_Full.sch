<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_27(15:0)" />
        <signal name="XLXN_28(15:0)" />
        <signal name="Imm_Out(15:0)" />
        <signal name="EXT" />
        <signal name="IR(11:0)" />
        <signal name="Mem_Out(15:0)" />
        <signal name="sp(15:0)" />
        <signal name="ra(15:0)" />
        <signal name="tp(15:0)" />
        <signal name="MemWrite(0:0)" />
        <signal name="CLK" />
        <signal name="RegWrite" />
        <signal name="RegDest(2:0)" />
        <signal name="wr(15:0)" />
        <signal name="ma(15:0)" />
        <signal name="ar(15:0)" />
        <signal name="na(15:0)" />
        <signal name="rv(15:0)" />
        <signal name="DataWriteReg(15:0)">
        </signal>
        <signal name="IRInput(15:0)" />
        <signal name="ALUoutput(15:0)" />
        <signal name="PopPush" />
        <signal name="XLXN_77(15:0)" />
        <signal name="DataWriteMem(15:0)">
        </signal>
        <signal name="LocationSelect" />
        <signal name="IR41Delta(3:0)" />
        <signal name="RegSelect(2:0)" />
        <signal name="RegSelect2(2:0)" />
        <signal name="fromPC(15:0)" />
        <signal name="Call" />
        <signal name="XLXN_90(15:0)" />
        <signal name="funct(3:0)" />
        <signal name="Opcode(3:0)" />
        <signal name="ADDRA(12:0)">
        </signal>
        <signal name="IRWrite" />
        <signal name="XLXN_92" />
        <signal name="ADDRA(15:0)" />
        <signal name="XLXN_94" />
        <port polarity="Output" name="Imm_Out(15:0)" />
        <port polarity="Input" name="EXT" />
        <port polarity="Output" name="Mem_Out(15:0)" />
        <port polarity="Output" name="sp(15:0)" />
        <port polarity="Output" name="ra(15:0)" />
        <port polarity="Output" name="tp(15:0)" />
        <port polarity="Input" name="MemWrite(0:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="RegDest(2:0)" />
        <port polarity="Output" name="wr(15:0)" />
        <port polarity="Output" name="ma(15:0)" />
        <port polarity="Output" name="ar(15:0)" />
        <port polarity="Output" name="na(15:0)" />
        <port polarity="Output" name="rv(15:0)" />
        <port polarity="Input" name="IRInput(15:0)" />
        <port polarity="Input" name="ALUoutput(15:0)" />
        <port polarity="Input" name="PopPush" />
        <port polarity="Output" name="LocationSelect" />
        <port polarity="Output" name="IR41Delta(3:0)" />
        <port polarity="Output" name="RegSelect(2:0)" />
        <port polarity="Output" name="RegSelect2(2:0)" />
        <port polarity="Input" name="fromPC(15:0)" />
        <port polarity="Input" name="Call" />
        <port polarity="Output" name="funct(3:0)" />
        <port polarity="Output" name="Opcode(3:0)" />
        <port polarity="Input" name="IRWrite" />
        <blockdef name="Sign_Extender">
            <timestamp>2020-2-11T2:46:56</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX2_1">
            <timestamp>2020-2-11T2:46:12</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Zero_Extender">
            <timestamp>2020-2-11T2:47:41</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Memory_16">
            <timestamp>2020-2-11T4:45:24</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="Register_File">
            <timestamp>2020-2-11T2:0:16</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX8_1">
            <timestamp>2020-2-11T21:4:59</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
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
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
        </blockdef>
        <blockdef name="IRReg_withControl">
            <timestamp>2020-2-12T0:51:15</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Zero_Extender" name="XLXI_5">
            <blockpin signalname="IR(11:0)" name="A(11:0)" />
            <blockpin signalname="XLXN_28(15:0)" name="R(15:0)" />
        </block>
        <block symbolname="Sign_Extender" name="XLXI_3">
            <blockpin signalname="IR(11:0)" name="A(11:0)" />
            <blockpin signalname="XLXN_27(15:0)" name="R(15:0)" />
        </block>
        <block symbolname="MUX2_1" name="XLXI_4">
            <blockpin signalname="EXT" name="Op" />
            <blockpin signalname="XLXN_27(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_28(15:0)" name="B(15:0)" />
            <blockpin signalname="Imm_Out(15:0)" name="Output(15:0)" />
        </block>
        <block symbolname="Memory_16" name="XLXI_6">
            <blockpin signalname="ADDRA(12:0)" name="addra(12:0)" />
            <blockpin signalname="DataWriteMem(15:0)" name="dina(15:0)" />
            <blockpin signalname="MemWrite(0:0)" name="wea(0:0)" />
            <blockpin signalname="CLK" name="clka" />
            <blockpin signalname="Mem_Out(15:0)" name="douta(15:0)" />
        </block>
        <block symbolname="Register_File" name="XLXI_11">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RegWrite" name="regWrite" />
            <blockpin signalname="RegDest(2:0)" name="regDest(2:0)" />
            <blockpin signalname="DataWriteReg(15:0)" name="DataWrite(15:0)" />
            <blockpin signalname="wr(15:0)" name="wr(15:0)" />
            <blockpin signalname="ma(15:0)" name="ma(15:0)" />
            <blockpin signalname="ar(15:0)" name="ar(15:0)" />
            <blockpin signalname="na(15:0)" name="na(15:0)" />
            <blockpin signalname="rv(15:0)" name="rv(15:0)" />
            <blockpin signalname="sp(15:0)" name="sp(15:0)" />
            <blockpin signalname="ra(15:0)" name="ra(15:0)" />
            <blockpin signalname="tp(15:0)" name="tp(15:0)" />
        </block>
        <block symbolname="MUX2_1" name="XLXI_13">
            <blockpin signalname="PopPush" name="Op" />
            <blockpin signalname="ma(15:0)" name="A(15:0)" />
            <blockpin signalname="ALUoutput(15:0)" name="B(15:0)" />
            <blockpin signalname="ADDRA(15:0)" name="Output(15:0)" />
        </block>
        <block symbolname="MUX2_1" name="XLXI_14">
            <blockpin signalname="PopPush" name="Op" />
            <blockpin signalname="ALUoutput(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_77(15:0)" name="B(15:0)" />
            <blockpin signalname="DataWriteMem(15:0)" name="Output(15:0)" />
        </block>
        <block symbolname="MUX2_1" name="XLXI_15">
            <blockpin signalname="PopPush" name="Op" />
            <blockpin signalname="XLXN_90(15:0)" name="A(15:0)" />
            <blockpin signalname="Mem_Out(15:0)" name="B(15:0)" />
            <blockpin signalname="DataWriteReg(15:0)" name="Output(15:0)" />
        </block>
        <block symbolname="MUX2_1" name="XLXI_16">
            <blockpin signalname="Call" name="Op" />
            <blockpin signalname="ALUoutput(15:0)" name="A(15:0)" />
            <blockpin signalname="fromPC(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_90(15:0)" name="Output(15:0)" />
        </block>
        <block symbolname="MUX8_1" name="XLXI_17">
            <blockpin signalname="wr(15:0)" name="A(15:0)" />
            <blockpin signalname="ma(15:0)" name="B(15:0)" />
            <blockpin signalname="ar(15:0)" name="C(15:0)" />
            <blockpin signalname="na(15:0)" name="D(15:0)" />
            <blockpin signalname="rv(15:0)" name="E(15:0)" />
            <blockpin signalname="sp(15:0)" name="F(15:0)" />
            <blockpin signalname="ra(15:0)" name="G(15:0)" />
            <blockpin signalname="tp(15:0)" name="H(15:0)" />
            <blockpin signalname="RegSelect(2:0)" name="Op(2:0)" />
            <blockpin signalname="XLXN_77(15:0)" name="Output(15:0)" />
        </block>
        <block symbolname="IRReg_withControl" name="XLXI_20">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="IRWrite" name="IRWrite" />
            <blockpin signalname="IRInput(15:0)" name="Din(15:0)" />
            <blockpin signalname="LocationSelect" name="LocationSelect" />
            <blockpin signalname="RegSelect(2:0)" name="RegSelect(2:0)" />
            <blockpin signalname="RegSelect2(2:0)" name="RegSelect2(2:0)" />
            <blockpin signalname="IR(11:0)" name="Imm(11:0)" />
            <blockpin signalname="IR41Delta(3:0)" name="Delta(3:0)" />
            <blockpin signalname="Opcode(3:0)" name="Opcode(3:0)" />
            <blockpin signalname="funct(3:0)" name="funct(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="480" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1536" y="304" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2048" y="416" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_27(15:0)">
            <wire x2="1984" y1="272" y2="272" x1="1920" />
            <wire x2="1984" y1="272" y2="320" x1="1984" />
            <wire x2="2048" y1="320" y2="320" x1="1984" />
        </branch>
        <branch name="XLXN_28(15:0)">
            <wire x2="1984" y1="448" y2="448" x1="1920" />
            <wire x2="1984" y1="384" y2="448" x1="1984" />
            <wire x2="2048" y1="384" y2="384" x1="1984" />
        </branch>
        <branch name="Imm_Out(15:0)">
            <wire x2="2576" y1="256" y2="256" x1="2432" />
        </branch>
        <branch name="EXT">
            <wire x2="2032" y1="112" y2="112" x1="1440" />
            <wire x2="2032" y1="112" y2="256" x1="2032" />
            <wire x2="2048" y1="256" y2="256" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="1440" y="112" name="EXT" orien="R180" />
        <iomarker fontsize="28" x="2576" y="256" name="Imm_Out(15:0)" orien="R0" />
        <branch name="Mem_Out(15:0)">
            <wire x2="944" y1="1168" y2="1168" x1="896" />
            <wire x2="896" y1="1168" y2="1216" x1="896" />
            <wire x2="2272" y1="1216" y2="1216" x1="896" />
            <wire x2="2272" y1="1216" y2="1392" x1="2272" />
            <wire x2="2272" y1="1392" y2="1472" x1="2272" />
            <wire x2="2288" y1="1472" y2="1472" x1="2272" />
            <wire x2="2272" y1="1392" y2="1392" x1="2112" />
        </branch>
        <instance x="1536" y="1312" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2288" y="1472" name="Mem_Out(15:0)" orien="R0" />
        <instance x="1600" y="1184" name="XLXI_11" orien="R0">
        </instance>
        <branch name="sp(15:0)">
            <wire x2="2352" y1="1024" y2="1024" x1="1984" />
            <wire x2="2352" y1="1024" y2="1136" x1="2352" />
            <wire x2="3200" y1="1136" y2="1136" x1="2352" />
            <wire x2="3200" y1="1136" y2="1392" x1="3200" />
            <wire x2="2368" y1="1024" y2="1024" x1="2352" />
            <wire x2="3200" y1="1392" y2="1392" x1="2672" />
            <wire x2="2672" y1="1392" y2="2000" x1="2672" />
            <wire x2="2912" y1="2000" y2="2000" x1="2672" />
        </branch>
        <branch name="ra(15:0)">
            <wire x2="2192" y1="1088" y2="1088" x1="1984" />
            <wire x2="2192" y1="1088" y2="1168" x1="2192" />
            <wire x2="3168" y1="1168" y2="1168" x1="2192" />
            <wire x2="3168" y1="1168" y2="1360" x1="3168" />
            <wire x2="2208" y1="1088" y2="1088" x1="2192" />
            <wire x2="3168" y1="1360" y2="1360" x1="2640" />
            <wire x2="2640" y1="1360" y2="2064" x1="2640" />
            <wire x2="2912" y1="2064" y2="2064" x1="2640" />
        </branch>
        <branch name="tp(15:0)">
            <wire x2="2016" y1="1152" y2="1152" x1="1984" />
            <wire x2="2048" y1="1152" y2="1152" x1="2016" />
            <wire x2="2016" y1="1152" y2="1200" x1="2016" />
            <wire x2="3136" y1="1200" y2="1200" x1="2016" />
            <wire x2="3136" y1="1200" y2="1328" x1="3136" />
            <wire x2="3136" y1="1328" y2="1328" x1="2608" />
            <wire x2="2608" y1="1328" y2="2128" x1="2608" />
            <wire x2="2912" y1="2128" y2="2128" x1="2608" />
        </branch>
        <branch name="MemWrite(0:0)">
            <wire x2="1472" y1="1776" y2="1776" x1="1376" />
            <wire x2="1536" y1="1520" y2="1520" x1="1472" />
            <wire x2="1472" y1="1520" y2="1776" x1="1472" />
        </branch>
        <branch name="CLK">
            <wire x2="1520" y1="1936" y2="1936" x1="1424" />
            <wire x2="1536" y1="1584" y2="1584" x1="1520" />
            <wire x2="1520" y1="1584" y2="1936" x1="1520" />
        </branch>
        <branch name="CLK">
            <wire x2="1600" y1="704" y2="704" x1="1168" />
        </branch>
        <branch name="RegWrite">
            <wire x2="1600" y1="848" y2="848" x1="1168" />
        </branch>
        <branch name="wr(15:0)">
            <wire x2="2864" y1="704" y2="704" x1="1984" />
            <wire x2="2912" y1="704" y2="704" x1="2864" />
            <wire x2="3360" y1="1552" y2="1552" x1="2848" />
            <wire x2="2848" y1="1552" y2="1680" x1="2848" />
            <wire x2="2912" y1="1680" y2="1680" x1="2848" />
            <wire x2="2864" y1="640" y2="704" x1="2864" />
            <wire x2="3360" y1="640" y2="640" x1="2864" />
            <wire x2="3360" y1="640" y2="1552" x1="3360" />
        </branch>
        <branch name="ar(15:0)">
            <wire x2="2896" y1="832" y2="832" x1="1984" />
            <wire x2="2944" y1="832" y2="832" x1="2896" />
            <wire x2="2896" y1="832" y2="1040" x1="2896" />
            <wire x2="3296" y1="1040" y2="1040" x1="2896" />
            <wire x2="3296" y1="1040" y2="1488" x1="3296" />
            <wire x2="3296" y1="1488" y2="1488" x1="2768" />
            <wire x2="2768" y1="1488" y2="1808" x1="2768" />
            <wire x2="2912" y1="1808" y2="1808" x1="2768" />
        </branch>
        <branch name="na(15:0)">
            <wire x2="2688" y1="896" y2="896" x1="1984" />
            <wire x2="2688" y1="896" y2="1072" x1="2688" />
            <wire x2="3264" y1="1072" y2="1072" x1="2688" />
            <wire x2="3264" y1="1072" y2="1456" x1="3264" />
            <wire x2="2720" y1="896" y2="896" x1="2688" />
            <wire x2="3264" y1="1456" y2="1456" x1="2736" />
            <wire x2="2736" y1="1456" y2="1872" x1="2736" />
            <wire x2="2912" y1="1872" y2="1872" x1="2736" />
        </branch>
        <branch name="rv(15:0)">
            <wire x2="2528" y1="960" y2="960" x1="1984" />
            <wire x2="2528" y1="960" y2="1104" x1="2528" />
            <wire x2="3232" y1="1104" y2="1104" x1="2528" />
            <wire x2="3232" y1="1104" y2="1424" x1="3232" />
            <wire x2="2544" y1="960" y2="960" x1="2528" />
            <wire x2="3232" y1="1424" y2="1424" x1="2704" />
            <wire x2="2704" y1="1424" y2="1936" x1="2704" />
            <wire x2="2912" y1="1936" y2="1936" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="1168" y="704" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1168" y="848" name="RegWrite" orien="R180" />
        <branch name="IR(11:0)">
            <wire x2="1488" y1="384" y2="384" x1="1104" />
            <wire x2="1488" y1="384" y2="448" x1="1488" />
            <wire x2="1536" y1="448" y2="448" x1="1488" />
            <wire x2="1536" y1="272" y2="272" x1="1488" />
            <wire x2="1488" y1="272" y2="384" x1="1488" />
        </branch>
        <branch name="CLK">
            <wire x2="720" y1="192" y2="192" x1="448" />
        </branch>
        <branch name="IRInput(15:0)">
            <wire x2="720" y1="576" y2="576" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="576" name="IRInput(15:0)" orien="R180" />
        <iomarker fontsize="28" x="448" y="192" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="3120" y="704" name="ma(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2048" y="1152" name="tp(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2944" y="832" name="ar(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2912" y="704" name="wr(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2208" y="1088" name="ra(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2368" y="1024" name="sp(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2544" y="960" name="rv(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2720" y="896" name="na(15:0)" orien="R0" />
        <branch name="ma(15:0)">
            <wire x2="3104" y1="1248" y2="1248" x1="720" />
            <wire x2="720" y1="1248" y2="1424" x1="720" />
            <wire x2="768" y1="1424" y2="1424" x1="720" />
            <wire x2="3104" y1="768" y2="768" x1="1984" />
            <wire x2="3104" y1="768" y2="1008" x1="3104" />
            <wire x2="3328" y1="1008" y2="1008" x1="3104" />
            <wire x2="3328" y1="1008" y2="1520" x1="3328" />
            <wire x2="3104" y1="1008" y2="1248" x1="3104" />
            <wire x2="3328" y1="1520" y2="1520" x1="2800" />
            <wire x2="2800" y1="1520" y2="1744" x1="2800" />
            <wire x2="2912" y1="1744" y2="1744" x1="2800" />
            <wire x2="3120" y1="704" y2="704" x1="3104" />
            <wire x2="3104" y1="704" y2="768" x1="3104" />
        </branch>
        <instance x="768" y="1520" name="XLXI_13" orien="R0">
        </instance>
        <instance x="768" y="1792" name="XLXI_14" orien="R0">
        </instance>
        <instance x="944" y="1200" name="XLXI_15" orien="R0">
        </instance>
        <text style="fontsize:24;fontname:Arial" x="660" y="1420">$ma</text>
        <text style="fontsize:24;fontname:Arial" x="888" y="1824">P/P on left</text>
        <branch name="XLXN_77(15:0)">
            <wire x2="768" y1="1760" y2="1760" x1="544" />
            <wire x2="544" y1="1760" y2="2704" x1="544" />
            <wire x2="3344" y1="2704" y2="2704" x1="544" />
            <wire x2="3344" y1="1680" y2="1680" x1="3296" />
            <wire x2="3344" y1="1680" y2="2704" x1="3344" />
        </branch>
        <text style="fontsize:24;fontname:Arial" x="652" y="1676">ALUout</text>
        <iomarker fontsize="28" x="160" y="1360" name="PopPush" orien="R180" />
        <iomarker fontsize="28" x="256" y="1424" name="ALUoutput(15:0)" orien="R180" />
        <branch name="ALUoutput(15:0)">
            <wire x2="320" y1="1424" y2="1424" x1="256" />
            <wire x2="320" y1="1424" y2="1456" x1="320" />
            <wire x2="320" y1="1456" y2="1456" x1="256" />
            <wire x2="256" y1="1456" y2="1488" x1="256" />
            <wire x2="768" y1="1488" y2="1488" x1="256" />
            <wire x2="256" y1="1488" y2="1696" x1="256" />
            <wire x2="768" y1="1696" y2="1696" x1="256" />
            <wire x2="400" y1="1088" y2="1088" x1="320" />
            <wire x2="320" y1="1088" y2="1424" x1="320" />
        </branch>
        <text style="fontsize:24;fontname:Arial" x="768" y="1608">P/P</text>
        <text style="fontsize:24;fontname:Arial" x="780" y="1340">P/P</text>
        <iomarker fontsize="28" x="1376" y="1776" name="MemWrite(0:0)" orien="R180" />
        <text style="fontsize:24;fontname:Arial" x="1228" y="1812">control</text>
        <branch name="LocationSelect">
            <wire x2="1216" y1="192" y2="192" x1="1104" />
        </branch>
        <branch name="IR41Delta(3:0)">
            <wire x2="1216" y1="448" y2="448" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1216" y="448" name="IR41Delta(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1216" y="192" name="LocationSelect" orien="R0" />
        <branch name="RegSelect(2:0)">
            <wire x2="1136" y1="256" y2="256" x1="1104" />
            <wire x2="1168" y1="256" y2="256" x1="1136" />
            <wire x2="1136" y1="32" y2="256" x1="1136" />
            <wire x2="3440" y1="32" y2="32" x1="1136" />
            <wire x2="3440" y1="32" y2="2304" x1="3440" />
            <wire x2="2608" y1="2192" y2="2304" x1="2608" />
            <wire x2="3440" y1="2304" y2="2304" x1="2608" />
            <wire x2="2912" y1="2192" y2="2192" x1="2608" />
        </branch>
        <branch name="RegSelect2(2:0)">
            <wire x2="1168" y1="320" y2="320" x1="1104" />
        </branch>
        <instance x="400" y="1184" name="XLXI_16" orien="R0">
        </instance>
        <text style="fontsize:24;fontname:Arial" x="1160" y="1096">P/P</text>
        <text style="fontsize:24;fontname:Arial" x="1180" y="1128">P/P</text>
        <text style="fontsize:24;fontname:Arial" x="1196" y="1168">P/P</text>
        <branch name="fromPC(15:0)">
            <wire x2="400" y1="1152" y2="1152" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="1152" name="fromPC(15:0)" orien="R180" />
        <text style="fontsize:24;fontname:Arial" x="388" y="1000">CALL</text>
        <text style="fontsize:24;fontname:Arial" x="552" y="1208">CALL</text>
        <branch name="Call">
            <wire x2="400" y1="1024" y2="1024" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="1024" name="Call" orien="R180" />
        <branch name="XLXN_90(15:0)">
            <wire x2="864" y1="1024" y2="1024" x1="784" />
            <wire x2="864" y1="1024" y2="1104" x1="864" />
            <wire x2="944" y1="1104" y2="1104" x1="864" />
        </branch>
        <branch name="PopPush">
            <wire x2="512" y1="1360" y2="1360" x1="160" />
            <wire x2="768" y1="1360" y2="1360" x1="512" />
            <wire x2="512" y1="1360" y2="1632" x1="512" />
            <wire x2="768" y1="1632" y2="1632" x1="512" />
            <wire x2="880" y1="1232" y2="1232" x1="512" />
            <wire x2="512" y1="1232" y2="1360" x1="512" />
            <wire x2="944" y1="1040" y2="1040" x1="880" />
            <wire x2="880" y1="1040" y2="1232" x1="880" />
        </branch>
        <text style="fontsize:24;fontname:Arial" x="964" y="1024">P/P</text>
        <branch name="RegDest(2:0)">
            <wire x2="1584" y1="928" y2="928" x1="1472" />
            <wire x2="1584" y1="928" y2="992" x1="1584" />
            <wire x2="1600" y1="992" y2="992" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1472" y="928" name="RegDest(2:0)" orien="R180" />
        <branch name="funct(3:0)">
            <wire x2="1216" y1="576" y2="576" x1="1104" />
        </branch>
        <branch name="Opcode(3:0)">
            <wire x2="1216" y1="512" y2="512" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1168" y="256" name="RegSelect(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1168" y="320" name="RegSelect2(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1216" y="512" name="Opcode(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1216" y="576" name="funct(3:0)" orien="R0" />
        <instance x="2912" y="2224" name="XLXI_17" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1424" y="1936" name="CLK" orien="R180" />
        <instance x="720" y="608" name="XLXI_20" orien="R0">
        </instance>
        <branch name="IRWrite">
            <wire x2="720" y1="384" y2="384" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="384" name="IRWrite" orien="R180" />
        <branch name="ADDRA(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1360" type="branch" />
            <wire x2="1264" y1="1360" y2="1360" x1="1152" />
        </branch>
        <branch name="ADDRA(12:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1392" type="branch" />
            <wire x2="1488" y1="1392" y2="1392" x1="1424" />
            <wire x2="1536" y1="1392" y2="1392" x1="1488" />
        </branch>
        <branch name="DataWriteMem(15:0)">
            <wire x2="1408" y1="1632" y2="1632" x1="1152" />
            <wire x2="1536" y1="1424" y2="1424" x1="1408" />
            <wire x2="1408" y1="1424" y2="1552" x1="1408" />
            <wire x2="1408" y1="1552" y2="1632" x1="1408" />
        </branch>
        <branch name="DataWriteReg(15:0)">
            <wire x2="1584" y1="1040" y2="1040" x1="1328" />
            <wire x2="1584" y1="1040" y2="1136" x1="1584" />
            <wire x2="1600" y1="1136" y2="1136" x1="1584" />
        </branch>
    </sheet>
</drawing>