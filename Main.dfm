object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 630
  ClientWidth = 1004
  Caption = #1041#1072#1079#1072' '#1080#1085#1090#1077#1088#1074#1100#1102#1077#1088#1086#1074
  OnShow = UniFormShow
  OldCreateOrder = False
  ShowHint = True
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFilters: TUniPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 75
    Hint = ''
    ShowHint = True
    BorderStyle = ubsNone
    Caption = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object btnNew: TUniSpeedButton
      Left = 3
      Top = 3
      Width = 120
      Height = 32
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ShowHint = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4F4F4CDCDCDA8A8A8
        9695948B8B8B8B8B8B8E8E8EA6A6A6C1C2C3F1F1F1FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFBFBFBC2C3C485
        91843F9B3E1AA8160CB30708B90208B9020BB50515AA11379F366E9470B7B7B6
        F5F5F5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4F4
        F49EA39E399E3A0AB60808BA0611C40F1BCD181FD21D1FD21D1CCE1A14C61108
        BA0609B8073A9823909A8EEAEAEAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFF9F9F9919C8E17AC1808BB0919CA1A1EC61F1CBD1D1BB71C1BB51C1BB5
        1C1BB61C1CBC1D1DC41E1ECE1F08BB090FB2107D967DEAEAEAFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF9EA79E12B31608BD0E1DC6231BB8201BB7201BB720
        1BB7201BB7201BB7201BB7201BB7201BB7201BB8201DC2220ABE100CB811809A
        81F9F9F9FF00FFFF00FFFF00FFFF00FFD9D9D924AE2C08BC121CBF251BB8241B
        B8241BB9241ECC271FD72A20DF2B20DD2B1ED2291DC5261BB8241BB8241BB824
        1CBC250ABD1411B41AB8C2BBFF00FFFF00FFFF00FFFF00FF5EA36507C0171BBE
        291ABA281ABA281ABB281ABC281DD02CBBF6C0FFFFFFFFFFFFBBF4C01CCD2C1A
        BC281ABB281ABA281ABA281ABC2807BD1737913FF4F4F4FF00FFFF00FFE6E6E6
        12B8240FB8211ABC2C1ABC2C1ABE2D1ABE2D1ABE2D1BC72FFFFFFFFFFFFFFFFF
        FFFFFFFF1CCB301ABE2D1ABE2D1ABD2C1ABC2C1ABC2C16BB2809BF1EB9C7BBFF
        00FFFF00FF93B68807BC201ABE311ABE311AC0311AC0321AC0321AC0321BC433
        FFFFFFFFFFFFFFFFFFFFFFFF1CCF361AC0321AC0321AC0321ABF311ABE311ABE
        3106B81F56AF63FF00FFFF00FF3FBC5B05B02319C03619C2361BD43C1DE03F1E
        E8421DE3401BD33CFFFFFFFFFFFFFFFFFFFFFFFF1EE5411EEC431EE6411CDB3E
        1BCF3B19C03619C0360BB3281FB539FF00FFFF00FF22B43F0AB32C19C33B19C4
        3C1CD943BBF9C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFBBF7C71BD64119C43B19C23B12BB340FB331FF00FFFF00FF24B343
        0DB93419C64119C6411ACE44FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BD24519C64119C64114BF3B0CB332FF
        00FFFF00FF1EB3430CBB3919C84619C94619C846FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19CA4719C94619C8
        4614C3410DB136FF00FFFF00FF36C15F07BC3A18CD4B18CC4B18CB4BB9EFC9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9EFC9
        18CC4B18CC4B18CD4B0EC34118B543FF00FFFF00FF85C99B04BC3D19D05118CF
        5118CE5018CD5018CD5018CD5018CD50FFFFFFFFFFFFFFFFFFFFFFFF18CD5018
        CD5018CD5018CD5018CE5018CF5119D15105BD3E3DC568FF00FFFF00FFE5F9EC
        05C04318D35619D25618D05518CF5518CF5518CF5518CF55FFFFFFFFFFFFFFFF
        FFFFFFFF18CF5518CF5518CF5518D05518D15619D35619D55704C143A0E6B6FF
        00FFFF00FFFF00FF34CA6903C44718D75B18D45A17D25917D15917D15917D159
        FFFFFFFFFFFFFFFFFFFFFFFF17D15917D15917D25917D35A18D55A18D75C09CB
        4E15C04FFF00FFFF00FFFF00FFFF00FFD0F2DC06C8500DD05618D86018D55F17
        D35E17D35E17D25EB9F1CEFFFFFFFFFFFFB9F1CE17D25E17D35E17D45F18D660
        18D96114D85E03C94EA7E8BEFF00FFFF00FFFF00FFFF00FFFF00FF7DDEA103CC
        5312D86018DB6518D76317D66317D56317D56217D56217D56217D56317D56317
        D66318D96418DC6619E06703CD5350D685FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF66DD9504D1570CD65E18DF6918DC6818DA6718D96618D96618D9
        6618DA6718DB6718DE6918E16A12DF6603D1573ED67BFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF94E8B409D45F03D35B16E26C19E36E
        18E16D18E06D18E16D18E26D19E46E18E66F04D55C05D55D66DE97FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE8FAEF53
        DF8E07D86202D86002D65F04D86107DB6302D75F02D86004DA623CDC81D3F6E2
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFF5FDF896EAB86CE29E45DE883FDE856CE29E8FE9B4DE
        F8E9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ParentColor = False
      Color = clWindow
    end
    object btnEdit: TUniSpeedButton
      Left = 125
      Top = 3
      Width = 120
      Height = 32
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ShowHint = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF8E8E8EB1B1B0CECECEF1F1F1FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF18222A3A57774A75A16C81A09C9D9CBABAB9E2
        E2E2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3D5A6D4B647C6180A96F92
        CE6B96E85D89DA5F83C38D8D8DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF619ABA
        7296B284AFD98AB7F17EA6EB7397E66D8EE36C8EE48B8B8BFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFD5E7F690C2E0A1D5FC96C7F78AB7F17EA6EB7397E66D8EE36D8EE3
        8B8B8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF8CCDFAA7DEFEA1D5FC96C7F78AB7F17E
        A6EB7397E66D8EE36D8EE38B8B8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF97CEF7A5DBFDA7DE
        FEA1D5FC96C7F78AB7F17EA6EB7397E62F8BFF2E85FF8B8B8BFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        F9FBFD82B6F2A5DBFDA7DEFEA1D5FC96C7F78AB7F15BB2FF5AABFF2F8BFF2E85
        FF8B8B8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF6EA5E68BB7F1A5DBFDA7DEFEA1D5FC5EC2FF5CB9FF
        5BB2FF5AABFF2F8BFF2E85FF8B8B8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6F92E48BB7F1A5DBFD62
        D4FF5FCBFF5EC2FF5CB9FF5BB2FF5AABFF2F8BFF2E85FF8B8B8BFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF6F92E48BB7F164DEFF62D4FF5FCBFF5EC2FF5CB9FF5BB2FF5AABFF2F8BFF2E
        85FF8B8B8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF33BDFF31B3FF64DEFF62D4FF5FCBFF5EC2FF5CB9
        FF5BB2FF5AABFF2F8BFF2E85FF8B8B8BFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF33BDFF31B3FF64DEFF
        62D4FF5FCBFF5EC2FF5CB9FF5BB2FF5AABFF2F8BFF2E85FF8B8B8BFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF33BDFF31B3FF64DEFF62D4FF5FCBFF5EC2FF5CB9FF5BB2FF5AABFF2F8BFF
        2E85FF8B8B8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF33BDFF31B3FF64DEFF62D4FF5FCBFF5EC2FF5C
        B9FF5BB2FF5AABFF2F8BFF2E85FF8B8B8BFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF33BDFF31B3FF64DE
        FF62D4FF5FCBFF5EC2FF5CB9FF5BB2FF5AABFF2F8BFF2E85FF8B8B8BFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF33BDFF31B3FF64DEFF62D4FF5FCBFF5EC2FF5CB9FF5BB2FF5AABFF2F8B
        FF2E85FFC0C1C2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF33BDFF31B3FF64DEFF62D4FF5FCBFF5EC2FF
        5CB9FF5BB2FF5AABFF2F8BFF6093DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF33BDFF31B3FF64
        DEFF62D4FF5FCBFF5EC3FF5DBCFF5CB5FF2779FF66AEF7FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF33BDFF31B3FF64DFFF64D7FF62D0FF62C9FF2B8DFF2A85FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF33BEFF32B6FF67E5FF67DFFF2FA2FF2E99
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF34C2FF33BBFF
        32B4FF32ADFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF74D2FA74CFFAFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ParentColor = False
      Color = clWindow
    end
    object btnDelete: TUniSpeedButton
      Left = 247
      Top = 3
      Width = 120
      Height = 32
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ShowHint = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4F4F4CDCDCDA8A8A8
        9695948B8B8B8B8B8B8E8E8EA6A6A6C1C2C3F1F1F1FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFBFBFBC2C3C484
        89963E62BC1753E1084DF6034DFF034DFF064DF91350E6315DC76C7D9FB7B7B6
        F5F5F5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4F4
        F49EA0A43962C30951F90651FF135EFF206BFF2771FF2771FF226CFF1761FF06
        51FF0751FD265AD18891A1EAEAEAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFF9F9F98892A41E59E40D56FF2469FF245EFF2052FF1D4CF81C49EF1C49
        EF1D4BF51F51FF235BFF296DFF0D56FF1456F07E88A0EAEAEAFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF9EA2A91B5BED1259FF275FFF204EF71F4CF11F4CF1
        1F4CF11F4CF11F4CF11F4CF11F4CF11F4CF11F4DF3255BFF145AFF165AF7828C
        A3F9F9F9FF00FFFF00FFFF00FFFF00FFD9D9D92962E0175BFF2757FF234FF323
        4FF32350F52450F72451F82451F82451F82451F82350F6234FF4234FF3234FF3
        2554FF195AFF205FEEB9BDC6FF00FFFF00FFFF00FFFF00FF637FB81E63FF2A59
        FF2753F52753F62854F92855FA2855FA2855FA2855FA2855FA2855FA2855FA28
        55FA2754F82753F52753F52856FD1C5DFF446CC7F4F4F4FF00FFFF00FFE6E6E6
        2D6BED2355FF2B57F72B57F82C58FB2C59FC2C59FC2C59FC2C59FC2C59FC2C59
        FC2C59FC2C59FC2C59FC2C59FC2C58FA2B57F72B57F72957FF2569FBBBC1CBFF
        00FFFF00FF94A5C92661FF305BF9305BF9315CFD315DFE315DFE315DFE315DFE
        315DFE315DFE315DFE315DFE315DFE315DFE315DFE315DFE305CFB305BF9305B
        F92358FF658ACEFF00FFFF00FF5C89DE2251F83460FB3561FE3A6BFF3D71FF40
        76FF4178FF4179FF4179FF4179FF4179FF4179FF4179FF4178FF3F74FF3C6FFF
        3969FF3460FC3460FB2754F24076E1FF00FFFF00FF4A76DC2A55EE3965FF3A66
        FF4071FFC7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC7D6FF3F6FFF3A65FF3964FD325DF63669EFFF00FFFF00FF4571EB
        325DF43F6BFF3F6BFF426FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4372FF3F6BFF3F6AFF3964FA3462F4FF
        00FFFF00FF4A70E33762F9446FFF4570FF446FFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4570FF4570FF446F
        FF3F6AFF3762F5FF00FFFF00FF5D83ED3864FB4975FF4975FF4874FFC8D5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D5FF
        4975FF4975FF4976FF3F6BFF436BF0FF00FFFF00FFA1B3E33B66FD4F7BFF4E79
        FF4E79FF4E78FF4E78FF4E78FF4E78FF4E78FF4E78FF4E78FF4E78FF4E78FF4E
        78FF4E78FF4E78FF4E79FF4E7AFF4F7BFF3C67FE6488EFFF00FFFF00FFEBF2FE
        416DFD5380FF537FFF527DFF527CFF527CFF527CFF527CFF527CFF527CFF527C
        FF527CFF527CFF527CFF527CFF527DFF537EFF5480FF5582FF406DFFB8CBF9FF
        00FFFF00FFFF00FF658AF54673FF5A85FF5883FF5781FF5781FF5781FF5781FF
        5781FF5781FF5781FF5781FF5781FF5781FF5781FF5782FF5984FF5B86FF4D7A
        FF5179F7FF00FFFF00FFFF00FFFF00FFE2E7F54F7BFC5581FF5E8AFF5C87FF5B
        85FF5B85FF5B85FF5B85FF5B85FF5B85FF5B85FF5B85FF5B85FF5C86FF5D88FF
        5F8BFF5D8AFF4D7AFFBFD1FBFF00FFFF00FFFF00FFFF00FFFF00FFA2BBF75280
        FF608DFF638FFF618BFF608AFF5F89FF5F89FF5F89FF5F89FF5F89FF5F89FF60
        8AFF628DFF6491FF6795FF5381FF8CABF9FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF96B3F85786FE5E8CFF6995FF6692FF648FFF648FFF648EFF648F
        FF648FFF6590FF6793FF6A97FF6694FF5887FF7BA1F8FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFB6CBF9608FFD5B8AFF6C9BFF6E9BFF
        6C99FF6C99FF6C99FF6D9BFF6F9DFF709FFF5D8DFF5E8EFE98B6F8FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEBF2FD90
        B1F96694FE6291FF6190FF6392FF6594FF6191FF6292FF6493FE81A8F8DEEAFD
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFF9FBFDBACFF9ABC5FA88AEF78DB1FA9FBDF8B6CCF9EF
        F2F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ParentColor = False
      Color = clWindow
    end
    object btnSuperVizer: TUniSpeedButton
      Tag = 1
      Left = 3
      Top = 37
      Width = 120
      Height = 32
      Hint = #1054#1090#1086#1073#1088#1072#1090#1100' '#1089#1091#1087#1077#1088#1074#1072#1081#1079#1077#1088#1086#1074
      ShowHint = True
      GroupIndex = 1
      AllowAllUp = True
      Caption = #1057#1091#1087#1077#1088#1074#1072#1081#1079#1077#1088#1099
      ParentColor = False
      Color = clWindow
      OnClick = ButtonFilterClick
    end
    object btnHidenBuyer: TUniSpeedButton
      Tag = 2
      Left = 125
      Top = 37
      Width = 120
      Height = 32
      Hint = #1054#1090#1073#1086#1088' "'#1090#1072#1081#1085#1099#1093'" '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1077#1081
      ShowHint = True
      GroupIndex = 1
      AllowAllUp = True
      Caption = '"'#1058#1072#1081#1085#1099#1081'" '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1100
      ParentColor = False
      Color = clWindow
      OnClick = ButtonFilterClick
    end
    object btnCallCenter: TUniSpeedButton
      Tag = 3
      Left = 247
      Top = 37
      Width = 120
      Height = 32
      Hint = #1054#1090#1073#1086#1088' '#1086#1087#1077#1088#1072#1090#1086#1088#1086#1074' call '#1094#1077#1085#1090#1088#1072
      ShowHint = True
      GroupIndex = 1
      AllowAllUp = True
      Caption = #1054#1087#1077#1088#1072#1090#1086#1088' call '#1094#1077#1085#1090#1088#1072
      ParentColor = False
      Color = clWindow
      OnClick = ButtonFilterClick
    end
    object btnFocusGroup: TUniSpeedButton
      Tag = 4
      Left = 369
      Top = 37
      Width = 120
      Height = 32
      Hint = #1054#1090#1073#1086#1088' '#1080#1085#1090#1077#1088#1074#1100#1102#1077#1088#1086#1074' '#1076#1083#1103' '#1092#1086#1082#1091#1089' '#1075#1088#1091#1087#1087
      ShowHint = True
      GroupIndex = 1
      AllowAllUp = True
      Caption = #1060#1086#1082#1091#1089' '#1075#1088#1091#1087#1087#1072
      ParentColor = False
      Color = clWindow
      OnClick = ButtonFilterClick
    end
    object btnStreet: TUniSpeedButton
      Tag = 5
      Left = 491
      Top = 37
      Width = 120
      Height = 32
      Hint = #1054#1090#1073#1086#1088' '#1080#1085#1090#1077#1088#1074#1100#1102#1077#1088#1086#1074' '#1076#1083#1103' '#1091#1083#1080#1095#1085#1086#1075#1086' '#1086#1087#1088#1086#1089#1072
      ShowHint = True
      GroupIndex = 1
      AllowAllUp = True
      Caption = #1059#1083#1080#1095#1085#1099#1081' '#1086#1087#1088#1086#1089
      ParentColor = False
      Color = clWindow
      OnClick = ButtonFilterClick
    end
    object btnFlour: TUniSpeedButton
      Tag = 6
      Left = 613
      Top = 37
      Width = 120
      Height = 32
      Hint = #1054#1090#1073#1086#1088' '#1080#1085#1090#1077#1088#1074#1100#1102#1077#1088#1086#1074' '#1076#1083#1103' '#1087#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1075#1086' '#1086#1087#1088#1086#1089#1072
      ShowHint = True
      GroupIndex = 1
      AllowAllUp = True
      Caption = #1055#1086#1082#1074#1072#1088#1090#1080#1088#1085#1099#1081' '#1086#1087#1088#1086#1089
      ParentColor = False
      Color = clWindow
      OnClick = ButtonFilterClick
    end
    object btnEnterings: TUniSpeedButton
      Tag = 7
      Left = 735
      Top = 37
      Width = 120
      Height = 32
      Hint = #1054#1090#1073#1086#1088' '#1074#1073#1080#1074#1097#1080#1082#1086#1074
      ShowHint = True
      GroupIndex = 1
      AllowAllUp = True
      Caption = #1042#1073#1080#1074#1097#1080#1082#1080
      ParentColor = False
      Color = clWindow
      OnClick = ButtonFilterClick
    end
    object btnOutSource: TUniSpeedButton
      Tag = 8
      Left = 857
      Top = 37
      Width = 120
      Height = 32
      Hint = #1054#1090#1073#1086#1088' '#1080#1085#1090#1077#1088#1074#1100#1102#1077#1088#1086#1074' '#1076#1083#1103' '#1072#1091#1090#1089#1086#1088#1089#1072
      ShowHint = True
      GroupIndex = 1
      AllowAllUp = True
      Caption = #1040#1091#1090#1089#1086#1088#1089
      ParentColor = False
      Color = clWindow
      OnClick = ButtonFilterClick
    end
    object btn8: TUniSpeedButton
      Left = 857
      Top = 3
      Width = 120
      Height = 32
      Hint = #1055#1077#1095#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088#1072
      ShowHint = True
      Caption = #1044#1086#1075#1086#1074#1086#1088
      ParentColor = False
      Color = clWindow
    end
  end
  object pnlGrid: TUniPanel
    Left = 0
    Top = 75
    Width = 1004
    Height = 333
    Hint = ''
    ShowHint = True
    BorderStyle = ubsNone
    Caption = #1058#1072#1073#1083#1080#1095#1085#1072#1103' '#1087#1072#1085#1077#1083#1100
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object dbgContacts: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 998
      Height = 327
      Hint = ''
      ShowHint = True
      ClientEvents.ExtEvents.Strings = (
        
          'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
          't, eOpts)'#13#10'{'#13#10'  //get grid new width'#13#10'  var grd_w=sender.getWidt' +
          'h();'#13#10'  //validate'#13#10'  if(sender.columns.length==0) return;'#13#10'  //' +
          'auto resize columns'#13#10'  crnt_w=0.073*grd_w; //Calc width in 7.3%'#13 +
          #10'  crnt_w=Math.floor(crnt_w);'#13#10' //change column width: strat fro' +
          'm 1 for first column (when indecator is true) otherwize start fr' +
          'om 0'#13#10' sender.columns[1].setWidth(crnt_w);//first column (0: is ' +
          'the indecator)'#13#10'}')
      HeaderTitleAlign = taCenter
      DataSource = UniMainModule.dsContacts
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgTitleClick, dgFilterClearButton]
      LoadMask.Message = 'Loading data...'
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      OnClearFilters = dbgContactsClearFilters
      OnColumnFilter = dbgContactsColumnFilter
      Columns = <
        item
          FieldName = 'CODE'
          Title.Caption = #1050#1054#1044
          Width = 50
          Visible = True
          Expanded = False
          Sortable = True
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'FIO'
          Filtering.Enabled = True
          Filtering.Editor = edtFIO
          Title.Caption = #1060#1048#1054
          Width = 200
          Visible = True
          Expanded = False
          Sortable = True
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'ISSUPERVIZER'
          Title.Caption = #1057#1059#1055#1045#1056#1042#1040#1049#1047#1045#1056
          Width = 64
          Visible = True
          Alignment = taLeftJustify
          Expanded = False
          PickList.Strings = (
            #1044#1072
            #1053#1077#1090)
          CheckBoxField.BooleanFieldOnly = False
          CheckBoxField.FieldValues = '1;0'
          CheckBoxField.DisplayValues = #1044#1072';'#1053#1077#1090
        end
        item
          FieldName = 'SEX'
          Title.Caption = #1055#1054#1051
          Width = 60
          Visible = True
          Expanded = False
          Sortable = True
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'REGION'
          Filtering.Enabled = True
          Filtering.Editor = edtREGION
          Title.Caption = #1054#1041#1051#1040#1057#1058#1068
          Width = 100
          Visible = True
          Expanded = False
          Sortable = True
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'BIRTHDATE'
          Title.Caption = #1044#1040#1058#1040' '#1056#1054#1046#1044'.'
          Width = 70
          Visible = True
          Expanded = False
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'CELURARPHONE'
          Title.Caption = #1052#1054#1041'.'#1058#1045#1051#1045#1060#1054#1053
          Width = 70
          Visible = True
          Expanded = False
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'HOMEPHONE'
          Title.Caption = #1044#1054#1052'.'#1058#1045#1051#1045#1060#1054#1053
          Width = 70
          Visible = True
          Expanded = False
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'SPECIALIZATION'
          Title.Caption = #1057#1055#1045#1062#1048#1040#1051#1048#1047#1040#1062#1048#1071
          Width = 150
          Visible = True
          Expanded = False
          Sortable = True
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'DATELAST'
          Title.Caption = #1044#1040#1058#1040' '#1055#1054#1057#1051'.'#1059#1063#1040#1057#1058#1048#1071
          Width = 70
          Visible = True
          Expanded = False
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'MEMBERPROJECTS'
          Title.Caption = #1055#1056#1054#1045#1050#1058#1067
          Width = 150
          Visible = True
          Expanded = False
          CheckBoxField.FieldValues = 'true;false'
        end>
    end
    object hpnlFilterComponents: TUniHiddenPanel
      Left = 200
      Top = 48
      Width = 217
      Height = 253
      Hint = ''
      Visible = False
      ShowHint = True
      object edtFIO: TUniEdit
        Left = 16
        Top = 16
        Width = 185
        Hint = ''
        ShowHint = True
        Text = ''
        TabOrder = 1
        EmptyText = #1060#1072#1084#1080#1083#1080#1103','#1080#1084#1103','#1086#1090#1095#1077#1089#1090#1074#1086
      end
      object edtREGION: TUniEdit
        Left = 16
        Top = 44
        Width = 185
        Hint = ''
        ShowHint = True
        Text = ''
        TabOrder = 2
        EmptyText = #1054#1073#1083#1072#1089#1090#1100
      end
    end
  end
  object sbMain: TUniStatusBar
    Left = 0
    Top = 611
    Width = 1004
    Height = 19
    Hint = ''
    ShowHint = True
    Panels = <
      item
        Alignment = taCenter
        Text = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
        Width = 250
      end
      item
        Width = 250
      end>
    SizeGrip = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentColor = False
    Color = clWindow
  end
  object pnlAddInfo: TUniPanel
    Left = 0
    Top = 408
    Width = 1004
    Height = 203
    Hint = ''
    ShowHint = True
    BorderStyle = ubsNone
    Caption = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 3
    object lbl1: TUniLabel
      Left = 14
      Top = 10
      Width = 104
      Height = 13
      Hint = ''
      ShowHint = True
      Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072':'
      TabOrder = 1
    end
    object edtEMail: TUniDBEdit
      Left = 125
      Top = 6
      Width = 242
      Height = 22
      Hint = ''
      ShowHint = True
      DataField = 'EMAIL'
      DataSource = UniMainModule.dsContacts
      TabOrder = 2
      ReadOnly = True
    end
    object lbl2: TUniLabel
      Left = 381
      Top = 10
      Width = 117
      Height = 13
      Hint = ''
      ShowHint = True
      Caption = #1044#1088#1091#1075#1080#1077' '#1089#1087#1086#1089#1086#1073#1099' '#1089#1074#1103#1079#1080':'
      TabOrder = 3
    end
    object edtOtherTypeLinks: TUniDBEdit
      Left = 505
      Top = 6
      Width = 496
      Height = 22
      Hint = ''
      ShowHint = True
      DataField = 'OTHERTYPELINKS'
      DataSource = UniMainModule.dsContacts
      TabOrder = 4
      ReadOnly = True
    end
    object lbl3: TUniLabel
      Left = 14
      Top = 38
      Width = 100
      Height = 13
      Hint = ''
      ShowHint = True
      Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103':'
      TabOrder = 5
    end
    object edtADDRESS: TUniDBEdit
      Left = 125
      Top = 34
      Width = 242
      Height = 22
      Hint = ''
      ShowHint = True
      DataField = 'ADDRESS'
      DataSource = UniMainModule.dsContacts
      TabOrder = 6
      ReadOnly = True
    end
    object lbl4: TUniLabel
      Left = 381
      Top = 38
      Width = 94
      Height = 13
      Hint = ''
      ShowHint = True
      Caption = #1044#1072#1085#1085#1099#1077' '#1087#1072#1089#1087#1086#1088#1090#1072':'
      TabOrder = 7
    end
    object edtPASSPORT: TUniDBEdit
      Left = 505
      Top = 34
      Width = 496
      Height = 22
      Hint = ''
      ShowHint = True
      DataField = 'PASSPORT'
      DataSource = UniMainModule.dsContacts
      TabOrder = 8
      ReadOnly = True
    end
    object lbl5: TUniLabel
      Left = 14
      Top = 66
      Width = 82
      Height = 13
      Hint = ''
      ShowHint = True
      Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103':'
      TabOrder = 9
    end
    object edtSPECIALIZATION: TUniDBEdit
      Left = 125
      Top = 62
      Width = 876
      Height = 22
      Hint = ''
      ShowHint = True
      DataField = 'SPECIALIZATION'
      DataSource = UniMainModule.dsContacts
      TabOrder = 10
      ReadOnly = True
    end
    object lbl6: TUniLabel
      Left = 14
      Top = 94
      Width = 92
      Height = 13
      Hint = ''
      ShowHint = True
      Caption = #1057#1087#1086#1089#1086#1073' '#1087#1077#1088#1077#1074#1086#1076#1072':'
      TabOrder = 11
    end
    object edtTRANSFERTYPE: TUniDBEdit
      Left = 125
      Top = 90
      Width = 242
      Height = 22
      Hint = ''
      ShowHint = True
      DataField = 'TRANSFERTYPE'
      DataSource = UniMainModule.dsContacts
      TabOrder = 12
      ReadOnly = True
    end
    object lbl7: TUniLabel
      Left = 381
      Top = 94
      Width = 107
      Height = 13
      Hint = ''
      ShowHint = True
      Caption = #1053#1086#1084#1077#1088#1072' '#1082#1072#1088#1090'-'#1089#1095#1077#1090#1086#1074':'
      TabOrder = 13
    end
    object edtNUMBERCARD: TUniDBEdit
      Left = 505
      Top = 90
      Width = 496
      Height = 22
      Hint = ''
      ShowHint = True
      DataField = 'NUMBERCARD'
      DataSource = UniMainModule.dsContacts
      TabOrder = 14
      ReadOnly = True
    end
    object lbl8: TUniLabel
      Left = 14
      Top = 121
      Width = 141
      Height = 13
      Hint = ''
      ShowHint = True
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080':'
      TabOrder = 15
    end
    object mmoGENERALCHARACTERISTIC: TUniDBMemo
      Left = 161
      Top = 118
      Width = 840
      Height = 36
      Hint = ''
      ShowHint = True
      DataField = 'GENERALCHARACTERISTIC'
      DataSource = UniMainModule.dsContacts
      ReadOnly = True
      TabOrder = 16
    end
    object lbl9: TUniLabel
      Left = 14
      Top = 163
      Width = 94
      Height = 13
      Hint = ''
      ShowHint = True
      Caption = #1058#1077#1082#1091#1097#1080#1077' '#1087#1086#1084#1077#1090#1082#1080':'
      TabOrder = 17
    end
    object mmoCURRENTNOTES: TUniDBMemo
      Left = 161
      Top = 160
      Width = 840
      Height = 36
      Hint = ''
      ShowHint = True
      DataField = 'CURRENTNOTES'
      DataSource = UniMainModule.dsContacts
      ReadOnly = True
      TabOrder = 18
    end
  end
  object tmrMain: TUniTimer
    OnTimer = tmrMainTimer
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    Left = 544
    Top = 168
  end
end
