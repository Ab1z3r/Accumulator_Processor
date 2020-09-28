<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="Mem_Out(15:0)" />
        <signal name="MemWrite" />
        <signal name="DataWriteMem(15:0)" />
        <signal name="XLXN_27(15:0)" />
        <signal name="XLXN_28(15:0)" />
        <signal name="Imm_Out(15:0)" />
        <signal name="EXT" />
        <signal name="IR(11:0)" />
        <signal name="ma(12:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Mem_Out(15:0)" />
        <port polarity="Input" name="MemWrite" />
        <port polarity="Input" name="DataWriteMem(15:0)" />
        <port polarity="Output" name="Imm_Out(15:0)" />
        <port polarity="Input" name="EXT" />
        <port polarity="Input" name="IR(11:0)" />
        <port polarity="Input" name="ma(12:0)" />
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
        <block symbolname="Zero_Extender" name="XLXI_5">
            <blockpin signalname="IR(11:0)" name="A(11:0)" />
            <blockpin signalname="XLXN_28(15:0)" name="R(15:0)" />
        </block>
        <block symbolname="Memory_16" name="XLXI_6">
            <blockpin signalname="ma(12:0)" name="addra(12:0)" />
            <blockpin signalname="DataWriteMem(15:0)" name="dina(15:0)" />
            <blockpin signalname="MemWrite" name="wea(0:0)" />
            <blockpin signalname="CLK" name="clka" />
            <blockpin signalname="Mem_Out(15:0)" name="douta(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="1472" y1="1280" y2="1280" x1="1248" />
            <wire x2="1520" y1="1280" y2="1280" x1="1472" />
            <wire x2="1520" y1="1280" y2="1408" x1="1520" />
            <wire x2="1568" y1="1408" y2="1408" x1="1520" />
        </branch>
        <branch name="DataWriteMem(15:0)">
            <wire x2="1472" y1="1408" y2="1408" x1="1120" />
            <wire x2="1504" y1="1408" y2="1408" x1="1472" />
            <wire x2="1504" y1="1248" y2="1408" x1="1504" />
            <wire x2="1568" y1="1248" y2="1248" x1="1504" />
        </branch>
        <branch name="MemWrite">
            <wire x2="1472" y1="1216" y2="1216" x1="1328" />
            <wire x2="1472" y1="1184" y2="1216" x1="1472" />
            <wire x2="1552" y1="1184" y2="1184" x1="1472" />
            <wire x2="1552" y1="1184" y2="1344" x1="1552" />
            <wire x2="1568" y1="1344" y2="1344" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1328" y="1216" name="MemWrite" orien="R180" />
        <iomarker fontsize="28" x="1120" y="1408" name="DataWriteMem(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1248" y="1280" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1152" y="1344" name="ma(12:0)" orien="R180" />
        <instance x="1520" y="1056" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1520" y="880" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2032" y="992" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_27(15:0)">
            <wire x2="1968" y1="848" y2="848" x1="1904" />
            <wire x2="1968" y1="848" y2="896" x1="1968" />
            <wire x2="2032" y1="896" y2="896" x1="1968" />
        </branch>
        <branch name="XLXN_28(15:0)">
            <wire x2="1968" y1="1024" y2="1024" x1="1904" />
            <wire x2="1968" y1="960" y2="1024" x1="1968" />
            <wire x2="2032" y1="960" y2="960" x1="1968" />
        </branch>
        <branch name="Imm_Out(15:0)">
            <wire x2="2560" y1="832" y2="832" x1="2416" />
        </branch>
        <branch name="EXT">
            <wire x2="2016" y1="688" y2="688" x1="1424" />
            <wire x2="2016" y1="688" y2="832" x1="2016" />
            <wire x2="2032" y1="832" y2="832" x1="2016" />
        </branch>
        <branch name="IR(11:0)">
            <wire x2="1520" y1="848" y2="848" x1="1392" />
        </branch>
        <branch name="IR(11:0)">
            <wire x2="1520" y1="1024" y2="1024" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="688" name="EXT" orien="R180" />
        <iomarker fontsize="28" x="1392" y="848" name="IR(11:0)" orien="R180" />
        <iomarker fontsize="28" x="1392" y="1024" name="IR(11:0)" orien="R180" />
        <iomarker fontsize="28" x="2560" y="832" name="Imm_Out(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2320" y="1296" name="Mem_Out(15:0)" orien="R0" />
        <branch name="Mem_Out(15:0)">
            <wire x2="2304" y1="1216" y2="1216" x1="2144" />
            <wire x2="2304" y1="1216" y2="1296" x1="2304" />
            <wire x2="2320" y1="1296" y2="1296" x1="2304" />
        </branch>
        <instance x="1568" y="1136" name="XLXI_6" orien="R0">
        </instance>
        <branch name="ma(12:0)">
            <wire x2="1472" y1="1344" y2="1344" x1="1152" />
            <wire x2="1536" y1="1344" y2="1344" x1="1472" />
            <wire x2="1536" y1="1216" y2="1344" x1="1536" />
            <wire x2="1568" y1="1216" y2="1216" x1="1536" />
        </branch>
    </sheet>
</drawing>