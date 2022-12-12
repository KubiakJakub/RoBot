PSCAD 4.2.1

Settings
 {
 Id = "1669375805.1669989535"
 Author = "student.jakub"
 Desc = ""
 Arch = "windows"
 Options = 32
 Build = 18
 Warn = 1
 Check = 15
 Libs = ""
 Source = ""
 RunInfo = 
  {
  Fin = 30
  Step = 0.001
  Plot = 0.001
  Chat = 0.001
  Brch = 0.0005
  Lat = 100
  Options = 0
  Advanced = 4607
  Debug = 0
  StartFile = ""
  OFile = "noname.out"
  SFile = "noname.snp"
  SnapTime = 0.3
  Mruns = 10
  Mrunfile = 0
  StartType = 0
  PlotType = 0
  SnapType = 0
  MrunType = "mrun"
  }

 }

Definitions
 {
 Module("Main")
  {
  Desc = ""
  FileDate = 1669631608
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-18,-18,18,18)
   }


  Page(E_JUMBO,Landscape,16,[962,520],5)
   {
   0.compare([270,198],0,0,20)
    {
    X = "1"
    OL = "0"
    OH = "1"
    INTR = "0"
    }
   0.time-sig([198,198],0,0,10)
    {
    }
   0.gain([342,198],0,0,30)
    {
    G = "3"
    COM = "Gain"
    Dim = "1"
    }
   0.pgb([378,198],0,93946152,40)
    {
    Name = "Odp.skok.prop"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.annotation([306,36],0,0,-1)
    {
    AL1 = "A)"
    AL2 = "Obiekt proporcionalny"
    }
   -Divider-([36,702],0)
    {
    Size(1476,0)
    3D = 0
    Color = 8
    Style = 0
    Weight = 2
    }
   0.compare([234,486],0,0,60)
    {
    X = "1"
    OL = "0"
    OH = "1"
    INTR = "0"
    }
   0.time-sig([162,486],0,0,50)
    {
    }
   0.gain([378,486],0,0,80)
    {
    G = "3"
    COM = "Gain"
    Dim = "1"
    }
   0.derivative([306,486],0,0,70)
    {
    T = "1"
    COM = "Derivative"
    }
   0.pgb([414,486],0,93937176,90)
    {
    Name = "Odp.imp.prop"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([828,360],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [828,360]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(93937176,"Odp.imp.prop",0,,,)
     }
    }
   -Plot-([828,54],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [828,54]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(93946152,"Odp.skok.prop",0,,,)
     }
    }
   0.compare([270,900],0,0,110)
    {
    X = "1"
    OL = "0"
    OH = "1"
    INTR = "0"
    }
   0.time-sig([198,900],0,0,100)
    {
    }
   0.annotation([396,756],0,0,-1)
    {
    AL1 = "B)"
    AL2 = "obiekt ca³kuj¹cy idealny i rzeczywisty"
    }
   0.integral([342,900],0,0,120)
    {
    Extrn = "0"
    Reset = "0"
    Mthd = "0"
    noname5 = ""
    INTR = "0"
    INTCLR = "0"
    T = "2.73"
    Yo = "0.0"
    YRst = "0.0"
    YHi = "100.0"
    YLo = "-100.0"
    }
   0.pgb([378,900],0,93937992,130)
    {
    Name = "odp.skok.calk.ideal"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.integral([342,1044],0,0,140)
    {
    Extrn = "0"
    Reset = "0"
    Mthd = "0"
    noname5 = ""
    INTR = "0"
    INTCLR = "0"
    T = "2.73"
    Yo = "0.0"
    YRst = "0.0"
    YHi = "100.0"
    YLo = "-100.0"
    }
   0.pgb([450,1044],0,93947784,160)
    {
    Name = "odp.skok.calk.rzecz"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([306,900],0,0,-1)
    {
    Vertex="0,0;0,1404"
    }
   0.realpole([414,1044],0,0,150)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "3"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.derivative([342,1296],0,0,170)
    {
    T = "2.73"
    COM = "Derivative"
    }
   0.derivative([342,1422],0,0,200)
    {
    T = "2.73"
    COM = "Derivative"
    }
   0.integral([414,1296],0,0,180)
    {
    Extrn = "0"
    Reset = "0"
    Mthd = "0"
    noname5 = ""
    INTR = "0"
    INTCLR = "0"
    T = "2.73"
    Yo = "0.0"
    YRst = "0.0"
    YHi = "100.0"
    YLo = "-100.0"
    }
   0.pgb([450,1296],0,93944112,190)
    {
    Name = "odp.imp.calk.ideal"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.integral([414,1422],0,0,210)
    {
    Extrn = "0"
    Reset = "0"
    Mthd = "0"
    noname5 = ""
    INTR = "0"
    INTCLR = "0"
    T = "2.73"
    Yo = "0.0"
    YRst = "0.0"
    YHi = "100.0"
    YLo = "-100.0"
    }
   0.pgb([522,1422],0,93943704,230)
    {
    Name = "odp.imp.calk.rzecz"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.realpole([486,1422],0,0,220)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "3"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   -Plot-([648,846],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [648,846]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(93937992,"odp.skok.calk.ideal",0,,,)
     Curve(93947784,"odp.skok.calk.rzecz",0,,,)
     }
    }
   0.derivative([342,1638],0,0,240)
    {
    T = "2.73"
    COM = "Derivative"
    }
   0.pgb([378,1638],0,93957576,250)
    {
    Name = "odp.skok.roz.ideal"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.derivative([342,1710],0,0,260)
    {
    T = "2.73"
    COM = "Derivative"
    }
   0.realpole([414,1710],0,0,270)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "3"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.pgb([450,1710],0,93951048,280)
    {
    Name = "odp.skok.roz.ideal"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([648,1242],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [648,1242]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(93944112,"odp.imp.calk.ideal",0,,,)
     Curve(93943704,"odp.imp.calk.rzecz",0,,,)
     }
    }
   -Plot-([648,1566],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [648,1566]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(93957576,"odp.skok.roz.ideal",0,,,)
     Curve(93951048,"odp.skok.roz.ideal",0,,,)
     }
    }
   0.realpole([342,2052],0,0,290)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "3"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.pgb([378,2052],0,93951456,300)
    {
    Name = "odp.skok.inercyjnego I rzedu"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.realpole([342,2160],0,0,310)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "1"
    T = "2.73"
    Max = "10.0"
    Min = "-10.0"
    }
   0.realpole([414,2160],0,0,320)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "3"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.pgb([450,2160],0,93956760,330)
    {
    Name = "odp.skok.inercyjnego II rzedu"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([648,1908],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [648,1908]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(93951456,"odp.skok.inercyjnego I rzedu",0,,,)
     Curve(93956760,"odp.skok.inercyjnego II rzedu",0,,,)
     }
    }
   0.annotation([342,2178],0,0,-1)
    {
    AL1 = "t1"
    AL2 = ""
    }
   0.annotation([414,2178],0,0,-1)
    {
    AL1 = "t2"
    AL2 = ""
    }
   0.tdelay([342,2286],0,0,340)
    {
    T = "2.73"
    N = "100"
    Intp = "0"
    COM = "Delay"
    }
   0.annotation([414,2106],0,0,-1)
    {
    AL1 = "1"
    AL2 = ""
    }
   0.annotation([342,2106],0,0,-1)
    {
    AL1 = "k"
    AL2 = ""
    }
   0.pgb([378,2286],0,93953904,350)
    {
    Name = "odp.skok.opoz"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([648,2232],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [648,2232]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(93953904,"odp.skok.opoz",0,,,)
     }
    }
   0.realpole([270,2808],0,0,380)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "1"
    T = "2.73"
    Max = "10.0"
    Min = "-10.0"
    }
   0.realpole([342,2808],0,0,390)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "3"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.annotation([270,2826],0,0,-1)
    {
    AL1 = "t1"
    AL2 = ""
    }
   0.annotation([342,2826],0,0,-1)
    {
    AL1 = "t2"
    AL2 = ""
    }
   0.annotation([342,2754],0,0,-1)
    {
    AL1 = "1"
    AL2 = ""
    }
   0.annotation([270,2754],0,0,-1)
    {
    AL1 = "k"
    AL2 = ""
    }
   0.time-sig([126,2808],0,0,360)
    {
    }
   0.compare([198,2808],0,0,370)
    {
    X = "1"
    OL = "0"
    OH = "1"
    INTR = "0"
    }
   0.pgb([378,2808],0,93960840,400)
    {
    Name = "k =3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([234,2808],0,0,-1)
    {
    Vertex="0,0;0,774"
    }
   0.realpole([342,2898],0,0,420)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "6"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.annotation([252,2916],0,0,-1)
    {
    AL1 = "t1"
    AL2 = ""
    }
   0.annotation([324,2916],0,0,-1)
    {
    AL1 = "t2"
    AL2 = ""
    }
   0.annotation([324,2844],0,0,-1)
    {
    AL1 = "1"
    AL2 = ""
    }
   0.annotation([252,2844],0,0,-1)
    {
    AL1 = "k"
    AL2 = ""
    }
   0.pgb([378,2898],0,93960432,430)
    {
    Name = "k =6"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.realpole([270,2898],0,0,410)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "1"
    T = "2.73"
    Max = "10.0"
    Min = "-10.0"
    }
   0.realpole([270,3006],0,0,440)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "1"
    T = "2.73"
    Max = "10.0"
    Min = "-10.0"
    }
   0.realpole([342,3006],0,0,450)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "9"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.annotation([270,3024],0,0,-1)
    {
    AL1 = "t1"
    AL2 = ""
    }
   0.annotation([342,3024],0,0,-1)
    {
    AL1 = "t2"
    AL2 = ""
    }
   0.annotation([342,2952],0,0,-1)
    {
    AL1 = "1"
    AL2 = ""
    }
   0.annotation([270,2952],0,0,-1)
    {
    AL1 = "k"
    AL2 = ""
    }
   0.pgb([378,3006],0,93907392,460)
    {
    Name = "k =9"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([594,2736],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [594,2736]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(93907392,"k =9",0,,,)
     Curve(93960432,"k =6",0,,,)
     Curve(93960840,"k =3",0,,,)
     }
    }
   0.realpole([270,3204],0,0,470)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "1"
    T = "3"
    Max = "10.0"
    Min = "-10.0"
    }
   0.realpole([342,3204],0,0,480)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "3"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.annotation([342,3150],0,0,-1)
    {
    AL1 = "1"
    AL2 = ""
    }
   0.annotation([270,3150],0,0,-1)
    {
    AL1 = "k"
    AL2 = ""
    }
   0.pgb([378,3204],0,93908208,490)
    {
    Name = "T =3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.realpole([270,3294],0,0,500)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "1"
    T = "6"
    Max = "10.0"
    Min = "-10.0"
    }
   0.realpole([342,3294],0,0,510)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "3"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.annotation([342,3240],0,0,-1)
    {
    AL1 = "1"
    AL2 = ""
    }
   0.annotation([270,3240],0,0,-1)
    {
    AL1 = "k"
    AL2 = ""
    }
   0.pgb([378,3294],0,93900456,520)
    {
    Name = "T =6"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.realpole([270,3384],0,0,530)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "1"
    T = "9"
    Max = "10.0"
    Min = "-10.0"
    }
   0.realpole([342,3384],0,0,540)
    {
    Limit = "0"
    COM = "Real_Pole"
    Reset = "0"
    YO = "0.0"
    G = "3"
    T = "2.37"
    Max = "10.0"
    Min = "-10.0"
    }
   0.annotation([342,3330],0,0,-1)
    {
    AL1 = "1"
    AL2 = ""
    }
   0.annotation([270,3330],0,0,-1)
    {
    AL1 = "k"
    AL2 = ""
    }
   0.pgb([378,3384],0,93901680,550)
    {
    Name = "T =9"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([630,3132],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [630,3132]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(93901680,"T =9",0,,,)
     Curve(93900456,"T =6",0,,,)
     Curve(93908208,"T =3",0,,,)
     }
    }
   }
  }
 }

